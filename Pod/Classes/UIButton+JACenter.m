//
//  UIButton+JACenter.m
//  Pods
//
//  Created by Jeffrey Ames on 8/18/14.
//
//

#import "UIButton+JACenter.h"

@implementation UIButton (JACenter)

- (void)ja_horizontallyCenterTitleAndImageWithSpacing:(CGFloat)spacing imageOnTop:(BOOL)imageOnTop
{
    UIImage *image = [self imageForState:UIControlStateNormal];
    CGFloat imageBottonInset = imageOnTop ? -image.size.height - spacing : image.size.height + spacing;
    self.titleEdgeInsets = UIEdgeInsetsMake(0, -image.size.width, imageBottonInset, 0);
    CGRect titleLabelFrame = self.titleLabel.frame;
    CGFloat titleTopInset = imageOnTop ? -titleLabelFrame.size.height - spacing : titleLabelFrame.size.height + spacing;
    self.imageEdgeInsets = UIEdgeInsetsMake(titleTopInset, 0, 0, -titleLabelFrame.size.width);
}

@end
