//
// Created by vagrant on 4/16/15.
// Copyright (c) 2015 lanbaoo. All rights reserved.
//

#import "NSString+Draw.h"


@implementation NSString (Draw)
-(void)  drawWithBasePoint:(CGPoint)basePoint
                  andAngle:(CGFloat)angle
                   andFont:(UIFont *)font{
    CGSize  textSize    =   [self   sizeWithFont:font];

    CGContextRef    context =   UIGraphicsGetCurrentContext();
    
    CGAffineTransform textTransform = CGAffineTransformMake(1.0, 0.0, 0.0, -1.0,basePoint.x, basePoint.y);

    CGContextConcatCTM(context,textTransform );

    //尼玛
    [self   drawAtPoint:CGPointMake(-1 * textSize.width / 2, -1 * textSize.height / 2)
               withFont:font];

    CGContextConcatCTM(context, CGAffineTransformInvert(textTransform));
}
@end