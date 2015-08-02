//
//  ViewController.h
//  ThirdLoginForIOS
//
//  Created by crw on 15/8/2.
//  Copyright (c) 2015年 crw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)login:(id)sender;

- (IBAction)change:(UISegmentedControl *)sender;

@property (weak, nonatomic) IBOutlet UILabel *infoLabel;

@end

