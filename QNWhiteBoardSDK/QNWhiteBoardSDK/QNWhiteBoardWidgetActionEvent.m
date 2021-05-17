//
//  QNWhiteBoardWidgetActionEvent.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNWhiteBoardWidgetActionEvent.h"
#import <whiteboard_sdk/WBWidgetActionEvent.h>

@interface QNWhiteBoardWidgetActionEvent ()

@property (nonatomic, strong)WBWidgetActionEvent *widgetActionEvent;

@end

@implementation QNWhiteBoardWidgetActionEvent

- (NSString *)sessionId {
    return self.widgetActionEvent.sessionId;
}

- (int)type {
    return self.widgetActionEvent.type;
}

- (int)action {
    return self.widgetActionEvent.action;
}

- (NSString *)name {
    return self.widgetActionEvent.name;
}

-(instancetype)initWithDictionary:(NSDictionary *)params_{
    self.widgetActionEvent = [self.widgetActionEvent initWithDictionary:params_];
    return self;
}

- (WBWidgetActionEvent *)widgetActionEvent {
    if (!_widgetActionEvent) {
        _widgetActionEvent = [WBWidgetActionEvent new];
    }
    return _widgetActionEvent;
}

@end
