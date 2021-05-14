//
//  QNWhiteBoardDemoController.m
//  QNWhiteBoardDemo
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNWhiteBoardDemoController.h"
#import <AVFoundation/AVFoundation.h>
#import <QNWhiteBoardSDK/QNWhiteBoardSDK.h>

@interface QNWhiteBoardDemoController ()
{
    NSString * appId;
    NSString * roomId;
    NSString * userId;
    NSString * token;
}
@end

@implementation QNWhiteBoardDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self joinRoom];
    
}

-(void)joinRoom
{
    QNWhiteBoardJoinInfo * joinInfo = [[QNWhiteBoardJoinInfo alloc] initWithParam:appId room:roomId user:userId  token:token];
    QNWhiteBoardRoomMember * member = [[QNWhiteBoardRoomMember alloc] initWithParams:userId session:NULL role:6 name:NULL avatar:NULL];
    [[QNWhiteboardControl instance] joinRoom:joinInfo member:member];
}
                     
                     
- (void)initConnectionInfo:(NSString *)appId_ roomId:(NSString *)roomId_ userId:(NSString *)userId_ token:(NSString *)token_ {
    appId = appId_;
    roomId = roomId_;
    userId = userId_;
    token = token_;
}

@end
