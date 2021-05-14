//
//  QNWhiteBoardInputConfig.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNWhiteBoardInputConfig.h"
#import <whiteboard_sdk/WBInputConfig.h>

@interface QNWhiteBoardInputConfig ()

@property (nonatomic, strong)WBInputConfig *inputConfig;

@end

@implementation QNWhiteBoardInputConfig

- (int)mode {
    return self.inputConfig.mode;
}

- (int)penType {
    return self.inputConfig.penType;
}

- (int)geometryType {
    return self.inputConfig.geometryType;
}

- (float)size {
    return self.inputConfig.size;
}

- (NSString *)color {
    return self.inputConfig.color;
}

+(instancetype)instanceWithPen:(NSString *)color_ thickness:(float)thickness_ {
    [WBInputConfig instanceWithPen:color_ thickness:thickness_];
    return [QNWhiteBoardInputConfig instanceWithPen:color_ thickness:thickness_];
}

+(instancetype)instanceWithMark:(NSString *)color_ thickness:(float)thickness_ {
    [WBInputConfig instanceWithMark:color_ thickness:thickness_];
    return [QNWhiteBoardInputConfig instanceWithMark:color_ thickness:thickness_];
}

+(instancetype)instanceWithLaser:(WBPenStyle)laserType_ {
    [WBInputConfig instanceWithLaser:laserType_];
    return [QNWhiteBoardInputConfig instanceWithLaser:@(laserType_)];
}

+(instancetype)instanceWithErase:(float)size_ {
    [WBInputConfig instanceWithErase:size_];
    return [QNWhiteBoardInputConfig instanceWithErase:size_];
}

+(instancetype)instanceWithSelect {
    [WBInputConfig instanceWithSelect];
    return [QNWhiteBoardInputConfig instanceWithSelect];
}

+(instancetype)instanceWithGeometry:(WBGeometryType)geometryType_ color:(NSString *)color_ thickness:(float)thickNess_ {
    [WBInputConfig instanceWithGeometry:geometryType_ color:color_ thickness:thickNess_];
    return [QNWhiteBoardInputConfig instanceWithGeometry:@(geometryType_) color:color_ thickness:thickNess_];
}

- (WBInputConfig *)inputConfig {
    if (!_inputConfig) {
        _inputConfig = [WBInputConfig new];
    }
    return _inputConfig;
}

@end
