//
//  ViewController.m
//  MyScrollView
//
//  Created by Jeff Eom on 2016-07-11.
//  Copyright © 2016 Jeff Eom. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@property MyScrollView *myView;

@property UIView *redView;
@property UIView *greenView;
@property UIView *blueView;
@property UIView *yellowView;

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
//    self.myView.frame = CGRectMake(0, -100, self.view.frame.size.width, self.view.frame.size.height);
    self.myView.bounds = CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height);
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyScrollView *myView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    myView.backgroundColor = [UIColor orangeColor];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    
    redView.backgroundColor = [UIColor redColor];
    greenView.backgroundColor = [UIColor greenColor];
    blueView.backgroundColor = [UIColor blueColor];
    yellowView.backgroundColor = [UIColor yellowColor];
    
    [myView addSubview:redView];
    [myView addSubview:greenView];
    [myView addSubview:blueView];
    [myView addSubview:yellowView];
    
    [self.view addSubview:myView];
    
    self.myView = myView;
    self.redView = redView;
    self.greenView = greenView;
    self.blueView = blueView;
    self.yellowView = yellowView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
