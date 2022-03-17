//
// Created by 何思远 on 2022/3/17.
//

#import <Foundation/Foundation.h>

@class TSTCPSocket;

@protocol TSIPStackDelegate <NSObject>
- (void)didAcceptTCPSocket:(TSTCPSocket *)sock;
@end

@interface TSIPStack : NSObject
@property(class, strong, readonly) TSIPStack *stack;
@property(weak) id <TSIPStackDelegate> delegate;
@property(strong) dispatch_queue_t processQueue;
@property(strong) void (^outputBlock)(NSArray<NSData *> *__nonnull, NSArray<NSNumber *> *__nonnull);

- (void)received:(NSData *)packet;

- (void)suspendTimer;

- (void)resumeTimer;
@end