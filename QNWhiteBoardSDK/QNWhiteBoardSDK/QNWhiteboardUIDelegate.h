//
//  QNWhiteboardUIDelegate.h
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "QNWhiteBoardInputConfig.h"
#import "QNActiveWidgetInfo.h"

NS_ASSUME_NONNULL_BEGIN

@protocol QNWhiteboardUIDelegate <NSObject>
-(void)presentViewController:(UIViewController *)controller_;
-(void)appendSubView:(UIView *)view_;
-(void)removeSubView:(UIView *)view_;
-(void)createResourceView;
-(NSString *)snapShot:(CGRect)rect_;
@end

NS_ASSUME_NONNULL_END
