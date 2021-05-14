//
//  QNWhiteBoardDemoController.h
//  QNWhiteBoardDemo
//
//  Created by 郭茜 on 2021/5/13.
//

#import <UIKit/UIKit.h>

#import <QNWhiteBoardSDK/QNWhiteBoardView.h>

NS_ASSUME_NONNULL_BEGIN

@interface QNWhiteBoardDemoController : QNWhiteBoardView<UINavigationControllerDelegate,UIImagePickerControllerDelegate>

-(void)initConnectionInfo:(NSString *)appId_ roomId:(NSString *)roomId_ userId:(NSString *)userId_ token:(NSString *)token_;

@end

NS_ASSUME_NONNULL_END
