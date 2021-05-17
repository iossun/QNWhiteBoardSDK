//
//  QNActiveWidgetInfo.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNActiveWidgetInfo.h"
#import <whiteboard_sdk/WBActiveWidgetInfo.h>

@interface QNActiveWidgetInfo ()

@property (nonatomic, strong)WBActiveWidgetInfo *activeWidgetInfo;
@end

@implementation QNActiveWidgetInfo

- (instancetype)initWithDictionary:(NSDictionary *)dict_{
    self.activeWidgetInfo = [self.activeWidgetInfo initWithDictionary:dict_];
    return self;    
}

- (WBActiveWidgetInfo *)activeWidgetInfo {
    if (!_activeWidgetInfo) {
        _activeWidgetInfo = [WBActiveWidgetInfo new];
    }
    return _activeWidgetInfo;
}

@end
