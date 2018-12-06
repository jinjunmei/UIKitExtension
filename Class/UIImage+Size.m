//
//  UIImage+Size.m
//  Pods
//
//  Created by 顾吉涛Air on 2018/12/6.
//

#import "UIImage+Size.h"
#import <math.h>

@implementation UIImage (Size)

- (CGFloat)imageDataLength {

    NSData *data = UIImagePNGRepresentation(self);
    if (!data) {
        data = UIImageJPEGRepresentation(self, 1.0);//需要改成0.5才接近原图片大小，原因请看下文
    }
    return data.length;
}

- (UIImage *)imageByResizeToRatio:(CGFloat)ration {
    NSAssert(ration > 0 && ration < 1, @"not valid compress ratio");
    CGFloat edgeRatio = sqrtf(ration);
    CGSize newSize = CGSizeMake(self.size.width * edgeRatio, self.size.height * edgeRatio);
    return [self imageByResizeToSize:newSize];
}

- (UIImage *)imageByResizeToSize:(CGSize)size {
    return [self imageByResizeToSize:size scale:YES];
}
- (UIImage *)imageByResizeToSize:(CGSize)size scale:(BOOL)scale {
    if (size.width <= 0 || size.height <= 0) return nil;
    CGFloat scaleFactor = scale ? self.scale : 1.0;
    UIGraphicsBeginImageContextWithOptions(size, NO, scaleFactor);
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
