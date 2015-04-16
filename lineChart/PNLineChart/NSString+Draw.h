//
// Created by vagrant on 4/16/15.
// Copyright (c) 2015 lanbaoo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Draw)

-(void)  drawWithBasePoint:(CGPoint)basePoint
                  andAngle:(CGFloat)angle
                   andFont:(UIFont*)font;

@end