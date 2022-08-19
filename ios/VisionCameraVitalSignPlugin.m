// VisionCameraVitalSignPlugin.m

#import "VisionCameraVitalSignPlugin.h"
#import "react-native-vital-sign-plugin/VitalSignPlugin.h"


@implementation VisionCameraVitalSignPlugin

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
{
    [VitalSignEngineCoreProxy processVideoFrame:NULL userInfo:NULL];
    
    
    // TODO: Implement some actually useful functionality
    callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", numberArgument, stringArgument]]);
    
    
}

@end
