//
//  DSInsetLabel.h
//  Pods
//
//  Created by Thomas on 15/06/15.
//  Copyright (c) 2014 Dry Singleton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSInsetLabel : UILabel

/**
 *  Padding insets for the label. Default value is {0, 0, 0, 0}
 */
@property (nonatomic, assign, readwrite) UIEdgeInsets edgeInsets;

/**
 *  Max allowed width of the label which [sizeToFit[ will adhere to.
 *  Default valus is 0 which mean it's ignored.
 */
@property (nonatomic, assign, readwrite) float maxWidth;

@end
