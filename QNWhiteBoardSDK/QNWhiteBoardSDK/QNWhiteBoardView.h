//
//  QNWhiteBoardView.h
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>

#import "QNWhiteboardControl.h"
#import "QNWhiteboardUIDelegate.h"

NS_ASSUME_NONNULL_BEGIN

@interface QNWhiteBoardView :  GLKViewController <GLKViewControllerDelegate,UIImagePickerControllerDelegate,QNWhiteboardDelegate,UIDocumentPickerDelegate,QNWhiteboardUIDelegate>

-(bool)initRender:(CGSize)size;

-(void)setDirty;

-(void)presentViewController:(UIViewController *)controller_;

@end

NS_ASSUME_NONNULL_END
