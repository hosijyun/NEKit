//
// Created by 何思远 on 2022/3/17.
//

#import <Foundation/Foundation.h>
#import <netinet/in.h>

@class TSTCPSocket;

@protocol TSTCPSocketDelegate <NSObject>
- (void)localDidClose:(TSTCPSocket *)socket;

- (void)socketDidReset:(TSTCPSocket *)socket;

- (void)socketDidAbort:(TSTCPSocket *)socket;

- (void)socketDidClose:(TSTCPSocket *)socket;

- (void)didReadData:(NSData *)data from:(TSTCPSocket *)socket;

- (void)didWriteData:(NSInteger)length from:(TSTCPSocket *)socket;
@end

@interface TSTCPSocket : NSObject
@property(weak) id <TSTCPSocketDelegate> delegate;
@property(assign, readonly) BOOL isConnected;
@property(assign, readonly) struct in_addr sourceAddress;
@property(assign, readonly) struct in_addr destinationAddress;
@property(assign, readonly) UInt16 sourcePort;
@property(assign, readonly) UInt16 destinationPort;

- (void)close;

- (void)writeData:(NSData *)data;
@end