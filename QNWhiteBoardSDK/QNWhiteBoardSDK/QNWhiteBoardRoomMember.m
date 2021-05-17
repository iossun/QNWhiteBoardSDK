//
//  QNWhiteBoardRoomMember.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNWhiteBoardRoomMember.h"
#import <whiteboard_sdk/WBRoomMember.h>

@interface QNWhiteBoardRoomMember ()

@property (nonatomic,strong)  WBRoomMember *roomMember;

@end

@implementation QNWhiteBoardRoomMember

- (NSString *)userId {
    return self.roomMember.userId;
}

- (NSString *)sessionId {
    return self.roomMember.sessionId;
}

- (NSInteger)roleId {
    return self.roomMember.roleId;
}

- (NSString *)nickName {
    return self.roomMember.nickName;
}

- (NSString *)avatar {
    return self.roomMember.avatar;
}

-(instancetype)initWithParams:(NSString *)userId_ session:(NSString *)sesionId_ role:(NSInteger)roleId_ name:(NSString *)name_ avatar:(NSString *)avatar_{
    self.roomMember = [self.roomMember initWithParams:userId_ session:sesionId_ role:roleId_ name:name_ avatar:avatar_];
    self.userId = userId_;
    self.sessionId = sesionId_;
    self.roleId = roleId_;
    self.nickName = name_;
    return self;
}

-(NSDictionary *)toDictionary{
    return [self.roomMember toDictionary];
}

- (WBRoomMember *)roomMember {
    if (!_roomMember) {
        _roomMember = [WBRoomMember new];
    }
    return _roomMember;
}

@end
