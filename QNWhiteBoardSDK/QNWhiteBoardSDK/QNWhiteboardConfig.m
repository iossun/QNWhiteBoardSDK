//
//  QNWhiteboardConfig.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNWhiteboardConfig.h"
#import <whiteboard_sdk/WhiteboardConfig.h>

@interface QNWhiteboardConfig ()

@property (nonatomic, strong)WhiteboardConfig *whiteboardConfig;

@end

@implementation QNWhiteboardConfig

- (instancetype)initWithDictionary:(NSDictionary *)dict_{
    self.whiteboardConfig = [self.whiteboardConfig initWithDictionary:dict_];
    return [self initWithDictionary:dict_];
}

- (WhiteboardConfig *)whiteboardConfig {
    if (!_whiteboardConfig) {
        _whiteboardConfig = [WhiteboardConfig new];
    }
    return _whiteboardConfig;
}

- (NSString *)ossBucket {
    return self.whiteboardConfig.ossBucket;
}

- (NSString *)ossEndPoint {
    return self.whiteboardConfig.ossEndPoint;
}

- (NSString *)ossStsUrl {
    return self.whiteboardConfig.ossStsUrl;
}

- (NSString *)sdkApiHost {
    return self.whiteboardConfig.sdkApiHost;
}

- (NSString *)sdkFileHost {
    return self.whiteboardConfig.sdkFileHost;
}

- (NSString *)thumbnailsBucket {
    return self.whiteboardConfig.thumbnailsBucket;
}

- (NSString *)thumbnailsFileGroupId {
    return self.whiteboardConfig.thumbnailsFileGroupId;
}

- (NSString *)thumbnailsHost {
    return self.whiteboardConfig.thumbnailsHost;
}

- (NSString *)webSocketHost {
    return self.whiteboardConfig.webSocketHost;
}

- (NSString *)joinString {
    return self.whiteboardConfig.joinString;
}

@end
