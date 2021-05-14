//
//  QNWhiteBoardFileInfo.m
//  QNWhiteBoardSDK
//
//  Created by 郭茜 on 2021/5/13.
//

#import "QNWhiteBoardFileInfo.h"
#import <whiteboard_sdk/WBFileInfo.h>

@interface QNWhiteBoardFileInfo ()

@property (nonatomic, strong)WBFileInfo *fileInfo;

@end

@implementation QNWhiteBoardFileInfo

- (NSString *)path {
    return self.fileInfo.path;
}

- (NSString *)name {
    return self.fileInfo.name;
}

- (float)left {
    return self.fileInfo.left;
}

- (float)top {
    return self.fileInfo.top;
}

- (float)width {
    return self.fileInfo.width;
}

- (float)height {
    return self.fileInfo.height;
}

- (WBFileInfo *)fileInfo {
    if (!_fileInfo) {
        _fileInfo = [WBFileInfo new];
    }
    return _fileInfo;
}

@end
