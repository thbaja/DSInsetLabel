//
//  DSViewController.m
//  DSInsetLabel
//
//  Created by Thomas B. Jacobsen on 06/15/2015.
//  Copyright (c) 2014 Dry Singleton. All rights reserved.
//

#import <DSInsetLabel/DSInsetLabel.h>
#import "DSViewController.h"

@interface DSViewController ()

@end

@implementation DSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];

    DSInsetLabel *lblShortText = [DSInsetLabel new];
    lblShortText.edgeInsets = UIEdgeInsetsMake(10, 15, 10, 15);
    lblShortText.maxWidth = 200;
    lblShortText.textAlignment = NSTextAlignmentCenter;
    lblShortText.backgroundColor = [UIColor darkGrayColor];
    lblShortText.text = @"Short text";
    [lblShortText sizeToFit];
    lblShortText.center = self.view.center;
    [self.view addSubview:lblShortText];

    DSInsetLabel *lblLongText = [DSInsetLabel new];
    lblLongText.edgeInsets = UIEdgeInsetsMake(10, 15, 10, 15);
    lblLongText.maxWidth = 200;
    lblLongText.textAlignment = NSTextAlignmentCenter;
    lblLongText.backgroundColor = [UIColor darkGrayColor];
    lblLongText.text = @"Loooooooooonoooooog text";
    [lblLongText sizeToFit];
    lblLongText.center = CGPointMake(lblShortText.center.x, lblShortText.center.y + 100);
    [self.view addSubview:lblLongText];

    DSInsetLabel *myLabel = [DSInsetLabel new];
    myLabel.edgeInsets = UIEdgeInsetsMake(10, 15, 10, 15);
    myLabel.text       = @"My text";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
