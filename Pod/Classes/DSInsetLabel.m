//
//  DSInsetLabel.m
//  Pods
//
//  Created by Thomas on 15/06/15.
//  Copyright (c) 2014 Dry Singleton. All rights reserved.
//

#import "DSInsetLabel.h"

@implementation DSInsetLabel

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (!([super initWithCoder:aDecoder])) return nil;

    [self loadDefaultValues];
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (!([super initWithFrame:frame])) return nil;

    [self loadDefaultValues];
    return self;
}

- (void)loadDefaultValues
{
    self.edgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    self.maxWidth = 0;
}


- (void)drawTextInRect:(CGRect)rect
{
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.edgeInsets)];
}


- (CGSize)sizeThatFits:(CGSize)size
{
    CGSize adjSize = [super sizeThatFits:size];
    adjSize.width += self.edgeInsets.left + self.edgeInsets.right;
    adjSize.height += self.edgeInsets.top + self.edgeInsets.bottom;

    if (self.maxWidth && adjSize.width >= self.maxWidth) adjSize.width = self.maxWidth;

    return adjSize;
}

@end
