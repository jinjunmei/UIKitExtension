//
//  UIImage+Size.h
//  Pods
//
//  Created by 顾吉涛Air on 2018/12/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Size)

- (UIImage *)imageByResizeToRatio:(CGFloat)ration;

- (CGFloat)imageDataLength;

@end

NS_ASSUME_NONNULL_END
