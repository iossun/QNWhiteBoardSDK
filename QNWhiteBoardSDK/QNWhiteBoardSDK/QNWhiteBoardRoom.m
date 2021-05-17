//
//  QNWhiteBoardRoom.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNWhiteBoardRoom.h"
#import <whiteboard_sdk/WBRoom.h>

@interface QNWhiteBoardRoom ()

@property (nonatomic, strong)WBRoom *room;

@end

@implementation QNWhiteBoardRoom

- (NSInteger)chatRoomId {
    return self.room.chatRoomId;
}

- (NSString *)roomId {
    return self.room.roomId;
}

- (NSString *)fileGroupId {
    return self.room.fileGroupId;
}

-(instancetype)initWithParams:(NSInteger)chatId_ room:(NSString *)roomId_ fileGroup:(NSString *)fileGroupId_{
    self.room = [self.room initWithParams:chatId_ room:roomId_ fileGroup:fileGroupId_];
    return self;
}

- (WBRoom *)room {
    if (!_room) {
        _room = [WBRoom new];
    }
    return _room;
}

@end
