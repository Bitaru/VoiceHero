//
//  SoundManagerBridge.m
//  VoiceHero
//
//  Created by bitaru on 09.10.16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RCTBridge.h"

@interface RCT_EXTERN_MODULE(SoundManager, NSObject)

RCT_EXTERN_METHOD(start)

RCT_EXTERN_METHOD(destroy)

@end