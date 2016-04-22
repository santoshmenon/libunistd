// BsdSocket.h
// Created by Robin Rowe on 11/27/2015
// Copyright (c) 2015 Robin.Rowe@CinePaint.org
// License open source MIT

#ifndef BsdSocket_h
#define BsdSocket_h

#include <unistd.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <netinet/in.h>
#pragma warning(push)
#pragma warning(disable:4265)
#include <thread>
#pragma warning(pop)
#include <memory.h> 
#include <string>
#include <memory>
#include <vector>
#include "MsgBuffer.h"
#include "Packet.h"

#pragma warning(disable:4265)

namespace portable 
{

class SocketStartup
{
public:
	SocketStartup();
	~SocketStartup();
};

class BsdSocket
{protected:
	SOCKET socketfd;
//	char* buffer;
//	unsigned bufsize;
	bool isGo;
	bool isTcp;
	sockaddr_in server_sockaddr;
	int OpenSocket();
public:
	MsgBuffer<120> errorMsg;
	virtual ~BsdSocket()
	{}
	BsdSocket()
	:	socketfd(0)
//	,	bufsize(0)
	,	isGo(false)
	,	isTcp(true)
	{}
	BsdSocket(SOCKET socketfd)
	:	socketfd(socketfd)
//	,	bufsize(0)
	,	isGo(false)
	,	isTcp(true)
	{}
	BsdSocket(const BsdSocket&) = default;
//	void Resize(unsigned bufsize);
	void SetIsTcp(bool tf)
	{	isTcp=tf;
	}
	bool IsOpen() const
	{	return isGo;
	}
	bool SendTo(const char* msg,unsigned len)
	{	if(socketfd<=0)
		{	return false;
		}
		int slen = sizeof(sockaddr_in);
		if(sendto(socketfd,msg,len,0,(struct sockaddr *)&server_sockaddr,slen)==-1)
		{	puts(errorMsg.GetLastError());
			return false;
		}
		return true;
	}
	bool SendTo(Packet& packet)
	{	return SendTo(packet.GetPacket(),packet.GetPacketSize());
	}
#if 0
	const char* GetBuffer() const
	{	return buffer.get();
	}
#endif
	void Close()
	{	isGo=false;
		if(socketfd)
		{	closesocket(socketfd);
			socketfd=0;
	}	}
	int RecvFrom(char* buffer,unsigned bufsize,sockaddr_in& server_sockaddr)
	{	int slen = sizeof(sockaddr_in);
		if(socketfd<=0)
		{	errorMsg.Set("Socket not open");
			return -1;
		}	
		return recvfrom(socketfd,buffer,bufsize,0,(struct sockaddr *)&server_sockaddr,&slen); 
	}	
	void SocketReset(const char* msg)
	{	socketfd=0;
		puts(msg);
	}
	void GetPeerName(std::string& s) const;
};

class BsdSocketClient
:	public BsdSocket
{	std::thread worker;
	int RecvFrom(char* buffer,unsigned bufsize)
	{	int slen = sizeof(sockaddr_in);
		if(socketfd<=0)
		{	errorMsg.Set("Socket not open");
			return -1;
		}	
		return recvfrom(socketfd,buffer,bufsize,0,(struct sockaddr *)&server_sockaddr,&slen);
	}
public:
	bool Open(const char* serverName,int serverPort);
};

class BsdSocketPool
{	
public:
	std::vector<SOCKET> socketfd;
	void Reset(unsigned size)
	{	socketfd.resize(size);
		socketfd.assign(size,0);
	}
#if 0
	BsdSocket Get(unsigned i)
	{	if(i>=socketfd.size())
		{	return BsdSocket(0);
		}
		return BsdSocket(socketfd[i]);
	}
#endif
};

class BsdSocketServer
:	public BsdSocket
{	SocketStartup socketStartup;
protected:
	BsdSocketPool pool;
	std::unique_ptr<char[]> buffer;
	unsigned bufsize;
	std::thread worker;
	unsigned maxStreams;
	SOCKET ListenAccept();
	static void Main(BsdSocketServer* self)
    {   self->Run();
    }
	void Run();
public:
	virtual ~BsdSocketServer()
	{}
	BsdSocketServer()
	:	maxStreams(0)
	{}
#if 0
	BsdSocket operator[](unsigned i)
	{	return pool.Get(i);
	}
#endif
	bool Open(int serverPort,int maxStreams);
	void Stop()
	{	if(isGo)
		{	isGo=false;
			SendTo("",0);
	}	}
	void Close()
	{	Stop();
		if(socketfd)
		{	closesocket(socketfd);
			socketfd=0;
	}	}
	void Start();
	virtual void OnPacket(int bytes,portable::PacketReader& packet);
	virtual void ReadPacket() 
	{}
	virtual void OnStop()
	{}
	virtual bool Login(SOCKET fd)
	{	return false;
	}
};

}
#endif
