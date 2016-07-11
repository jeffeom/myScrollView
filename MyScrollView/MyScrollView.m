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
    
    self.contentSize = CGSizeMake(50, 250);
    
    return self;
}



-(void) move:(UIPanGestureRecognizer *)myPan{
    
    CGPoint translation = [myPan translationInView:self.superview];
    CGPoint realPoint = translation;//CGPointMake((translation.x + self.lastLocation.x), (translation.y + self.lastLocation.y));
    
    CGRect bounds = self.bounds;
    bounds.origin.x -= realPoint.x;
    bounds.origin.y -= realPoint.y;
    
    BOOL isTooFarRight = bounds.origin.x < -self.contentSize.width;
    BOOL isTooFarLeft = bounds.origin.x > self.contentSize.width;
    BOOL isTooFarTop = bounds.origin.y > self.contentSize.height;
    BOOL isTooFarDown = bounds.origin.y < -20;
    
    if (!isTooFarRight && !isTooFarLeft && !isTooFarTop && !isTooFarDown){
        {
            self.bounds = bounds;
            [myPan setTranslation:CGPointZero inView:self.superview];
            NSLog(@"Moving to the location: (%f, %f)", realPoint.x, realPoint.y);
            
        }
    }
}


@end
