// VisionCameraVitalSignPlugin.m

#import <React/RCTBridgeModule.h>
#import <VisionCamera/FrameProcessorPlugin.h>
#import <VisionCamera/Frame.h>
#import "react-native-vital-sign-plugin/VitalSignPlugin.h"

@interface VisionCameraVitalSignPlugin : NSObject
@end

@implementation VisionCameraVitalSignPlugin

static inline id vseProcessFrame(Frame* frame, NSArray* args) {
    if (args.count == 1) {
        
        return [VitalSignPluginProxy processVideoFrame:frame.buffer userInfo:args[0]];
        
    } else if (args.count == 2) {
        
        NSDictionary *faceBox = nil;
        if (![[NSNull null] isEqual:args[0]]) {
            faceBox = args[0];
        }
        return [VitalSignPluginProxy processVideoFrame:frame.buffer faceBox:faceBox userInfo:args[1]];
        
    } else {
        return nil;
    }
}

VISION_EXPORT_FRAME_PROCESSOR(vseProcessFrame)

@end
