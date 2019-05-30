//
//  VideoViewFactory.h
//  Pods
//
//  Created by ly on 2019/5/30.
//

#ifndef VideoViewFactory_h
#define VideoViewFactory_h


#endif /* VideoViewFactory_h */

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


