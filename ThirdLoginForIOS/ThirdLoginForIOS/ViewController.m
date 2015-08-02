//
//  ViewController.m
//  ThirdLoginForIOS
//
//  Created by crw on 15/8/2.
//  Copyright (c) 2015年 crw. All rights reserved.
//

#import "ViewController.h"
#import <ShareSDKExtension/SSEThirdPartyLoginHelper.h>
#import "UserInfo.h"

@interface ViewController (){
    SSDKPlatformType type;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    type = SSDKPlatformTypeQQ;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)login:(id)sender {
    [ShareSDK cancelAuthorize:type];
    [ShareSDK getUserInfo:type onStateChanged:^(SSDKResponseState state, SSDKUser *user, NSError *error) {
        _infoLabel.text = [NSString stringWithFormat:@"uid:%@\nnickName:%@\nheadImg:\n%@",user.uid,user.nickname,user.icon];
    }];
}

- (IBAction)change:(UISegmentedControl *)sender {
    switch (sender.selectedSegmentIndex) {
        case 0:
            type = SSDKPlatformTypeQQ;
            break;
        case 1:
            type = SSDKPlatformTypeSinaWeibo;
            break;
        case 2:
            type = SSDKPlatformTypeWechat;
            break;
        default:
            break;
    }
}

@end
