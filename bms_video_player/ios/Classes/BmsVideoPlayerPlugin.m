#import "BmsVideoPlayerPlugin.h"

@implementation BmsVideoPlayerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"bms_video_player"
            binaryMessenger:[registrar messenger]];
  BmsVideoPlayerPlugin* instance = [[BmsVideoPlayerPlugin alloc] init];
    
    VideoViewFactory* factory = [[VideoViewFactory alloc] initWithMessenger:registrar.messenger];
    
    [registrar registerViewFactory:factory withId:@"plugins.bms_video_player/view"];
    
 
    
    
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
