//
//  ViewController.m
//  QNWhiteBoardDemo
//
//  Created by 郭茜 on 2021/5/14.
//

#import "ViewController.h"
#import "QNWhiteBoardDemoController.h"

#define APP_ID @"a4b26ecae3744e3fb60ff679e186cd98"
#define USER_ID_FIRST @"0457987b-82f7-409d-8d58-24b42dda76f2"
#define ROOM_ID_FIRST @"9aee03708de041e4879977bbdd03c010"
#define TOKEN_FIRST @"8497da8e1055628380041d94f6973a24"

#define USER_ID_SECOND  @"0585184c-b515-4533-b146-1d39379e7d9a"
#define ROOM_ID_SECOND  @"95daddc650294ddda5ea42d84dffe838"
#define TOKEN_SECOND  @"42e564342aa38b7be51bda37f5590f5d"

@interface ViewController ()
{
    NSString * appIdStr;
    NSString * roomIdStr;
    NSString  * userIdStr;
    NSString * tokenStr;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    appIdStr = APP_ID;
    userIdStr = USER_ID_FIRST;
    roomIdStr = ROOM_ID_FIRST;
    tokenStr = TOKEN_FIRST;
    
    UIButton *startButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 100, 30)];
    [startButton setTitle:@"进入白板" forState:UIControlStateNormal];
    [startButton addTarget:self action:@selector(startButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startButton];
    
}

- (void)startButtonClick {
    QNWhiteBoardDemoController * demoEntry = [QNWhiteBoardDemoController new];
    [demoEntry initConnectionInfo:appIdStr roomId:roomIdStr userId:userIdStr token:tokenStr];
    [self.navigationController pushViewController:demoEntry animated:YES];
}


@end
