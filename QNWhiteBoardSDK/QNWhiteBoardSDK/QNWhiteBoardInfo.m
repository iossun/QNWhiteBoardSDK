//
//  QNWhiteBoardInfo.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNWhiteBoardInfo.h"
#import <whiteboard_sdk/WBBoardInfo.h>

@interface QNWhiteBoardInfo ()

@property (nonatomic, strong)WBBoardInfo *boardInfo;

@end

@implementation QNWhiteBoardInfo

- (int)status {
    return self.boardInfo.status;
}

- (float)maxWidth {
    return self.boardInfo.maxWidth;
}

- (float)maxHeight {
    return self.boardInfo.maxHeight;
}

- (float)displayWidth {
    return self.boardInfo.displayWidth;
}

- (float)displayHeight {
    return self.boardInfo.displayHeight;
}

- (float)xOffset {
    return self.boardInfo.xOffset;
}

- (float)yOffset {
    return self.boardInfo.yOffset;
}

- (NSString *)backgroundColor {
    return self.boardInfo.backgroundColor;
}

-(instancetype)initWithDictionary:(NSDictionary *)params_{
    self.boardInfo = [self.boardInfo initWithDictionary:params_];
    return self;
}

- (WBBoardInfo *)boardInfo {
    if (!_boardInfo) {
        _boardInfo = [WBBoardInfo new];
    }
    return _boardInfo;
}

@end
