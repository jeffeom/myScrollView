//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Jeff Eom on 2016-07-11.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    UIPanGestureRecognizer *panRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(move:)];
    self.gestureRecognizers = @[panRecognizer];
    
    self.contentSize = CGSizeMake(320, 750);
    
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self.superview bringSubviewToFront:self];
    
    self.lastLocation = self.center;
}

-(void) move:(UIPanGestureRecognizer *)myPan{
    CGPoint translation = [myPan translationInView:self.superview];
    CGPoint realPoint = CGPointMake((translation.x + self.lastLocation.x), (translation.y + self.lastLocation.y));
    
    
    BOOL isTooFarRight = realPoint.x > 200;
    BOOL isTooFarLeft = realPoint.x < 100;
    BOOL isTooFarTop = realPoint.y > 380;
    BOOL isTooFarDown = realPoint.y < 178;
    
    if (!isTooFarRight && !isTooFarLeft && !isTooFarTop && !isTooFarDown){
        self.center = CGPointMake(realPoint.x, realPoint.y);
        NSLog(@"Moving the location: (%f, %f)", realPoint.x, realPoint.y);
    }else{
        NSLog(@"NOPE x, y = (%f, %f)", realPoint.x, realPoint.y);
    }
}


@end
