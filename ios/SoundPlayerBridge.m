//
//  SoundManagerBridge.m
//  VoiceHero
//
//  Created by bitaru on 10.10.16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(SoundPlayer, NSObject)

RCT_EXTERN_METHOD(
                  play:(nonnull CGFloat *)carrierFrequency
                  modulatorFrequency:(nonnull CGFloat *)modulatorFrequency
                  modulatorAmplitude:(nonnull CGFloat *)modulatorAmplitude
                  );

@end