// portable/Packet.h
// Copyright 2016/1/16 Robin.Rowe@cinepaint.org
// License open source MIT/BSD

#ifndef Packet_h
#define Packet_h

#include <memory.h>
#include <string>
#include <stdio.h>
#include "PacketSizer.h"
#include "SoftLock.h"
#include "../xxHash/xxhash.h"

#if 1
#define TRACE(msg) puts("ERROR: " msg); Dump()
#else
#define TRACE(msg)
#endif

namespace portable 
{

class Packet
{	char* const buffer;
protected:
	unsigned packetId;
	char* packet;
	typedef unsigned T;
	T* packetSize;
	const unsigned bufsize;
	bool IsEmpty() const
	{	const bool isEmpty = packet >= buffer + bufsize;
//		std::cout << "isEmpty = "<<isEmpty << std::endl;
		return isEmpty;
	}
	void SetEndl()
	{	packet[GetPacketSize()-1]='\n';
	}
	void Init()
	{	packet=buffer;
		packetSize=(unsigned*) buffer;
	}	
public:			
	AtomicMutex ownership;
	Packet(const PacketSizer& sizer)
	:	buffer(sizer.buffer)
	,	bufsize(sizer.bufsize)
	,	packetId(0)
	{	Init();
	}
	Packet(char* buffer,unsigned bufsize)
	:	buffer(buffer)
	,	bufsize(bufsize)
	,	packetId(0)
	{	Init();
	}
	unsigned GetPacketId() const
	{	return packetId;
	}
	void SetPacketId(unsigned packetId)
	{	this->packetId = packetId;
	}
	const char* GetPayload() const 
	{	return packet+sizeof(*packetSize);
	}
	unsigned GetCapacity() const
	{	return bufsize;
	}
	unsigned GetPacketSize() const
	{	return *packetSize;
	}
	bool IsGood() const
	{	if(GetPacketSize()>GetCapacity())
		{	return false;
		}
		if(!GetPacketSize())
		{	return false;
		}
		return true;
	}
	const char* GetPacket() const
	{	return packet;
	}
	char* GetEndPtr() const
	{	return packet+*packetSize;
	}
	void Dump() const
	{	printf("Dump Packet: size = %d, bufsize = %d",*packetSize,bufsize);
	}
#if 0
	XXH64_hash_t GetHash(size_t offset,unsigned long long seed = 0)
	{	const size_t length = GetPacketSize() - offset;
		return XXH64(GetPayload()+offset,length,seed);
	}
#endif
	virtual bool Skip(unsigned length)
	{	(void) length;
		return true;
	}
};

}

#endif
