//
//  QNWhiteBoardView.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/14.
//

#import "QNWhiteBoardView.h"
#import <whiteboard_sdk/WhiteboardView.h>

@interface QNWhiteBoardView ()

@property (nonatomic,strong) WhiteboardView *whiteBoardView;

@end

@implementation QNWhiteBoardView

-(bool)initRender:(CGSize)size{
    return [self.whiteBoardView initRender:size];
}

-(void)setDirty{
    [self.whiteBoardView setDirty];
}

-(void)presentViewController:(UIViewController *)controller_{
    [self.whiteBoardView presentViewController:controller_];
}

- (WhiteboardView *)whiteBoardView {
    if (!_whiteBoardView) {
        _whiteBoardView = [WhiteboardView new];
    }
    
    return _whiteBoardView;
    
}

@end
