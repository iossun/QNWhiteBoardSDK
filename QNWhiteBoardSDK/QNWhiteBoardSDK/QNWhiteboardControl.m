//
//  QNWhiteboardControl.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/14.
//

#import "QNWhiteboardControl.h"
#import <whiteboard_sdk/WhiteboardControl.h>

@interface  QNWhiteboardControl()

@property (nonatomic,strong)  WhiteboardControl *whiteboardControl;

@end

@implementation QNWhiteboardControl

- (id)uiDelegate {
    return self.whiteboardControl.uiDelegate;
}

- (WhiteboardControl *)whiteboardControl {
    if (!_whiteboardControl) {
        _whiteboardControl = [WhiteboardControl new];
    }
    return _whiteboardControl;
}

- (void)leaveRoom {
    [self.whiteboardControl leaveRoom];
}

- (void)newBoardPage {
    [self.whiteboardControl newBoardPage];
}

- (void)nextBoardPage {
    [self.whiteboardControl nextBoardPage];
}

- (void)setBackgroundColor:(NSString *)color_ {
    [self.whiteboardControl setBackgroundColor:color_];
}

- (void)setDefaultInputMode:(WBInputConfig *)config_ {
    [self.whiteboardControl setDefaultInputMode:config_];
}

- (void)setInputMode:(WBInputConfig *)config_ {
    [self.whiteboardControl setInputMode:config_];
}

- (void)setRetry:(int)count {
    [self.whiteboardControl setRetry:count];
}

- (void)updateScreenSize:(float)width_ andHeight:(float)height_ {
    [self.whiteboardControl updateScreenSize:width_ andHeight:height_];
}

- (void)updateThumbnailForPageId:(NSString *)pageId_ image:(NSString *)imagePath {
    [self.whiteboardControl updateThumbnailForPageId:pageId_ image:imagePath];
}

- (void)updateScreen {
    [self.whiteboardControl updateScreen];
}

- (void)switchToPageNumber:(NSInteger)pageNo {
    [self.whiteboardControl switchToPageNumber:pageNo];
}

- (void)reset {
    [self.whiteboardControl reset];
}

- (void)revert {
    [self.whiteboardControl revert];
}

- (void)screenShots:(id<WBScreenShotsDelegate>)delegate_ image:(UIImage *)thumbnail {
    [self.whiteboardControl screenShots:delegate_ image:thumbnail];
}

- (void)scroll:(float)offsetY_ {
    [self.whiteboardControl scroll:offsetY_];
}

- (void)onPointerInput:(UITouchPhase)type at:(CGPoint)position force:(float)force withId:(int)index isPencil:(bool)isPencil timestamp:(unsigned long long)ts {
    [self.whiteboardControl onPointerInput:type at:position force:force withId:index isPencil:isPencil timestamp:ts];
}

- (void)preBoardPage {
    [self.whiteboardControl preBoardPage];
}

- (void)prepareRenderContext {
    [self.whiteboardControl prepareRenderContext];
}

- (void)removeListener:(id<WhiteboardDelegate>)delegate_ {
    [self.whiteboardControl removeListener:delegate_];
}

- (void)jumpFilePage:(NSString *)widgetId_ pageNo:(int)pageNo_ {
    [self.whiteboardControl jumpFilePage:widgetId_ pageNo:pageNo_];
}

- (void)addListener:(id<WhiteboardDelegate>)delegate_ {
    [self.whiteboardControl addListener:delegate_];
}

- (BOOL)CanRecovery {
    return [self.whiteboardControl CanRecovery];
}

- (void)clearListener {
    [self.whiteboardControl clearListener];
}

- (void)deleteBoardPage:(NSString *)pageId_ {
    [self.whiteboardControl deleteBoardPage:pageId_];
}

- (void)deleteFile:(NSString *)widgetId_ {
    [self.whiteboardControl deleteFile:widgetId_];
}

- (void)destroyRenderContext {
    [self.whiteboardControl destroyRenderContext];
}

- (WBActiveWidgetInfo *)getActiveWidget {
    return [self.whiteboardControl getActiveWidget];
}

- (NSString *)getBackgroundColor {
    return [self.whiteboardControl getBackgroundColor];
}

- (WBBoardInfo *)getBoardInfo {
    return [self.whiteboardControl getBoardInfo];
}

- (WBPageInfo *)getCurrentPage {
    return [self.whiteboardControl getCurrentPage];
}

- (int)getMaxPageNumber {
    return [self.whiteboardControl getMaxPageNumber];
}

- (WBPageInfo *)getPageByIndex:(NSInteger)index_ {
    return [self.whiteboardControl getPageByIndex:index_];
}

- (NSArray<WBPageInfo *> *)getPageList {
    return [self.whiteboardControl getPageList];
}

- (WBBoardStatus)getStatus {
    return [self.whiteboardControl getStatus];
}

- (NSArray<WBRoomMember *> *)getUsers {
    return [self.whiteboardControl getUsers];
}

- (instancetype)init {
    return self;
}

- (bool)initalizeView {
    return [self.whiteboardControl initalizeView];
}

- (void)insertBoardPage:(NSString *)pageId_ {
    [self.whiteboardControl insertBoardPage:pageId_];
}

- (void)insertFile:(NSString *)path_ rect:(CGRect)frame_ {
    [self.whiteboardControl insertFile:path_ rect:frame_];
}

- (void)insertImage:(NSString *)path_ rect:(CGRect)rect_ {
    [self.whiteboardControl insertImage:path_ rect:rect_];
}

- (void)insertImageFromAlbum:(CGRect)rect_ {
    [self.whiteboardControl insertImageFromAlbum:rect_];
}

+ (instancetype)instance {
    return [QNWhiteboardControl instance];
}

- (void)joinRoom:(WBJoinInfo *)roomInfo_ member:(WBRoomMember *)me_ {
    [self.whiteboardControl joinRoom:roomInfo_ member:me_];
}

- (void)jumpBoardPage:(NSString *)pageId_ {
    [self.whiteboardControl jumpBoardPage:pageId_];
}

@end
