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
    self.view.backgroundColor = [UIColor redColor];
    UIButton *startButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 300, 100, 30)];
    [startButton setTitle:@"进入白板" forState:UIControlStateNormal];
    
    [startButton addTarget:self action:@selector(startButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:startButton];
    
}

- (void)startButtonClick {
    
    QNWhiteBoardDemoController * demoEntry = [QNWhiteBoardDemoController new];
    [demoEntry initConnectionInfo:appIdStr roomId:roomIdStr userId:userIdStr token:tokenStr];
    UIWindow *window =  [[[UIApplication sharedApplication] windows] objectAtIndex:0];
    window.rootViewController = demoEntry;
    
    
}


@end
