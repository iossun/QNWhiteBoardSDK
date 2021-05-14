//
//  QNWhiteBoardPageInfo.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNWhiteBoardPageInfo.h"
#import <whiteboard_sdk/WBPageInfo.h>

@interface QNWhiteBoardPageInfo ()

@property (nonatomic, strong)WBPageInfo *pageInfo;

@end

@implementation QNWhiteBoardPageInfo


- (NSString *)pageId {
    return self.pageInfo.pageId;
}

- (unsigned long)pageNumber {
    return self.pageInfo.pageNumber;
}

- (NSString *)thumbUrl {
    return self.pageInfo.thumbUrl;
}

- (NSString *)backgroundColor {
    return self.pageInfo.backgroundColor;
}

- (unsigned long)lastUpdateTime {
    return self.pageInfo.lastUpdateTime;
}

-(instancetype)initFromDictonary:(NSDictionary *)params_ {
    self.pageInfo = [self.pageInfo initFromDictonary:params_];
    return [self initFromDictonary:params_];
}

-(NSString *)getThumbnailUrl {
    return [self.pageInfo getThumbnailUrl];
}

- (WBPageInfo *)pageInfo {
    if (!_pageInfo) {
        _pageInfo = [WBPageInfo new];
    }
    return _pageInfo;
}

@end
