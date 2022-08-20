// VisionCameraVitalSignPlugin.m

#import <React/RCTBridgeModule.h>
#import <VisionCamera/FrameProcessorPlugin.h>
#import <VisionCamera/Frame.h>
#import "react-native-vital-sign-plugin/VitalSignPlugin.h"

@interface VisionCameraVitalSignPlugin : NSObject
@end

@implementation VisionCameraVitalSignPlugin

static inline id vseProcessVideoFrameV3(Frame* frame, NSArray* args) {
    CMSampleBufferRef buffer = frame.buffer;
    return [VitalSignPluginProxy processVideoFrame:buffer userInfo:args[0]];
}

VISION_EXPORT_FRAME_PROCESSOR(vseProcessVideoFrameV3)

@end
