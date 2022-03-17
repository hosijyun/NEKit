#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "TSIPStack.h"
#import "TSTCPSocket.h"

FOUNDATION_EXPORT double tun2socksVersionNumber;
FOUNDATION_EXPORT const unsigned char tun2socksVersionString[];

