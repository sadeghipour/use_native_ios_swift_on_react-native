//
//  SampleViewModule.m
//  MySwiftDemo
//
//  Created by JP Driver on 3/29/16.
//  Copyright © 2016 Facebook. All rights reserved.
//

#import "RCTBridgeModule.h"
#import "RCTViewManager.h"

@interface RCT_EXTERN_MODULE(SampleViewManager, RCTViewManager)

//RCT_EXPORT_VIEW_PROPERTY(showVideo, BOOL)

RCT_EXTERN_METHOD(showVideo:(id *) videoCode :(id *) width :( id *) height)

@end

