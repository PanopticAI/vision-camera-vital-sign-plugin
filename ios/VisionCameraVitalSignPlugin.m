// VisionCameraVitalSignPlugin.m

#import "VisionCameraVitalSignPlugin.h"
#import <VisionCamera/FrameProcessorPlugin.h>
#import <VisionCamera/Frame.h>
#import "react-native-vital-sign-plugin/VitalSignPlugin.h"

@implementation VisionCameraVitalSignPlugin

static inline id vseProcessFrame(Frame* frame, NSArray* args) {
    CMSampleBufferRef buffer = frame.buffer;
    return [VitalSignEngineCoreProxy processVideoFrame:buffer userInfo:args[0]];
}

VISION_EXPORT_FRAME_PROCESSOR(vseProcessFrame)

@end
