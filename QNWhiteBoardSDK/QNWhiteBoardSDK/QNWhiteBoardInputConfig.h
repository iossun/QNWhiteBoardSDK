//
//  QNWhiteBoardInputConfig.h
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QNWhiteBoardInputConfig : NSObject

/**
  * 输入模式
  */

@property (nonatomic,assign) int mode;

/**
 笔的类型，目前包括普通笔和马克笔以及激光笔的类型
 */
@property (nonatomic,assign) int penType;

 /**
  * 集合图形类型
  */

@property (nonatomic,assign) int geometryType;

 /**
  * 颜色，支持透明度
  */
@property (nonatomic,retain) NSString * color;

 /**
  * 大小/粗细
  */
@property (nonatomic,assign) float size;

+(instancetype)instanceWithPen:(NSString *)color_ thickness:(float)thickness_;
+(instancetype)instanceWithMark:(NSString *)color_ thickness:(float)thickness_;
+(instancetype)instanceWithLaser:(int)laserType_;
+(instancetype)instanceWithErase:(float)size_;
+(instancetype)instanceWithSelect;
+(instancetype)instanceWithGeometry:(int)geometryType_ color:(NSString *)color_ thickness:(float)thickNess_;

@end

NS_ASSUME_NONNULL_END
