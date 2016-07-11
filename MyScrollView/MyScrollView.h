//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Jeff Eom on 2016-07-11.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;
@property UIPanGestureRecognizer *myPan;

@property CGPoint lastLocation;

@end
