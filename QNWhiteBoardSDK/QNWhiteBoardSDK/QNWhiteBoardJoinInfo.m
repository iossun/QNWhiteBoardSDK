//
//  QNWhiteBoardJoinInfo.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/14.
//

#import "QNWhiteBoardJoinInfo.h"
#import <whiteboard_sdk/WBJoinInfo.h>

@interface QNWhiteBoardJoinInfo ()

@property (nonatomic,strong)  WBJoinInfo *joinInfo;

@end

@implementation QNWhiteBoardJoinInfo

-(instancetype)initWithParam:(NSString *)appId_ room:(NSString *)roomId_ user:(NSString *)userId_ token:(NSString *)token_ {
    self.joinInfo = [self.joinInfo initWithParam:appId_ room:roomId_  user:userId_ token:token_];
    self.appId = appId_;
    self.roomId = roomId_;
    self.userId = userId_;
    self.token = token_;    
    return self;
}

-(NSDictionary *)toDictionary {
    return [self.joinInfo toDictionary];
}

- (WBJoinInfo *)joinInfo {
    if (!_joinInfo) {
        _joinInfo = [WBJoinInfo new];
    }
    return _joinInfo;
}

@end
