# DSInsetLabel

[![Version](https://img.shields.io/cocoapods/v/DSInsetLabel.svg?style=flat)](http://cocoapods.org/pods/DSInsetLabel)
[![License](https://img.shields.io/cocoapods/l/DSInsetLabel.svg?style=flat)](http://cocoapods.org/pods/DSInsetLabel)
[![Platform](https://img.shields.io/cocoapods/p/DSInsetLabel.svg?style=flat)](http://cocoapods.org/pods/DSInsetLabel)

## Overview


#### Simple UILabel subclass to use padding insets and max width.
* The DSInsetLabel will let you set **padding insets** and **resize** the label while respecting the insets.
* You also have the option of setting a **max width** on the label that will also respect the insets.

## Usage

Standard use with **`[sizeToFit]`**:
```objective-c
DSInsetLabel *myLabel = [DSInsetLabel new];
myLabel.edgeInsets    = UIEdgeInsetsMake(10, 15, 10, 15);
myLabel.text          = @"My text";
[myLabel sizeToFit];
[self.view addSubview:myLabel];
```

To limit the width of the label just set the maxWidth property:
```objective-c
myLabel.maxWidth = 200;
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Installation

DSInsetLabel is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "DSInsetLabel"
```

## Author

Thomas Baastrup Jacobsen, thomas@drysingleton.com

## License

DSInsetLabel is available under the MIT license. See the LICENSE file for more info.
