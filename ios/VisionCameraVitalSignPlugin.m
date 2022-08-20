// VisionCameraVitalSignPlugin.m

#import <React/RCTBridgeModule.h>
#import <VisionCamera/FrameProcessorPlugin.h>
#import <VisionCamera/Frame.h>
#import "react-native-vital-sign-plugin/VitalSignPlugin.h"

@interface VisionCameraVitalSignPlugin : NSObject
@end

@implementation VisionCameraVitalSignPlugin

static inline id vseProcessVideoFrame(Frame* frame, NSArray* args) {
    return [VitalSignPluginProxy processVideoFrame:frame.buffer userInfo:args[0]];
}

VISION_EXPORT_FRAME_PROCESSOR(vseProcessVideoFrame)

@end
