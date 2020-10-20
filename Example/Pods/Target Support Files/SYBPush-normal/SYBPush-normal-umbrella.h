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

#import "BPush.h"
#import "SYBPushDummy.h"

FOUNDATION_EXPORT double SYBPush_normalVersionNumber;
FOUNDATION_EXPORT const unsigned char SYBPush_normalVersionString[];

