//
//  VideoViewFactory.m
//  bms_video_player
//
//  Created by ly on 2019/5/30.
//

#import <Foundation/Foundation.h>

#import "VideoViewFactory.h"

#import "BMSVideoPlayerViewController.h"

@implementation VideoViewFactory {
    
    NSObject<FlutterBinaryMessenger>* _messenger;
    
}

- (instancetype)initWithMessenger:(NSObject<FlutterBinaryMessenger>*)messenger {
    
    self = [super init];
    
    if (self) {
        
        _messenger = messenger;
        
    }
    
    return self;
    
}

- (NSObject<FlutterMessageCodec>*)createArgsCodec {
    
    return [FlutterStandardMessageCodec sharedInstance];
    
}

- (nonnull NSObject<FlutterPlatformView> *)createWithFrame:(CGRect)frame

                                            viewIdentifier:(int64_t)viewId

                                                 arguments:(id _Nullable)args {
    
    BMSVideoPlayerViewController* viewController =
    
    [[BMSVideoPlayerViewController alloc] initWithWithFrame:frame
     
                                             viewIdentifier:viewId
     
                                                  arguments:args
     
                                            binaryMessenger:_messenger];
    
    return viewController;
    
}

@end

作者：叶梅树
链接：http://www.imooc.com/article/details/id/283465
来源：慕课网
本文原创发布于慕课网 ，转载请注明出处，谢谢合作
