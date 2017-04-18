//
//  MEConfirmOrderViewController.m
//  MEConfirmOrder
//
//  Created by MoShi-MacBookPro on 2017/4/18.
//  Copyright © 2017年 祁鹏宇. All rights reserved.
//

#import "MEConfirmOrderViewController.h"

@interface MEConfirmOrderViewController ()

@property (nonatomic, copy) NSString *goodsId;
@property (nonatomic, copy) dispatch_block_t sureComplete;

@property (nonatomic, strong) UIButton *sureButton;

@end

@implementation MEConfirmOrderViewController

- (instancetype)initWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete {
    self = [super init];
    if (self) {
        _goodsId = goodsId;
        _sureComplete = sureComplete;
    }
    return self;
}

#pragma mark - getters
- (UIButton *)sureButton
{
    if (_sureButton == nil) {
        _sureButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_sureButton setTitle:@"立即下单" forState:UIControlStateNormal];
        [_sureButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _sureButton.backgroundColor = [UIColor yellowColor];
        [_sureButton addTarget:self action:@selector(didClickSureButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureButton;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:self.sureButton];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    self.sureButton.frame = CGRectMake(0, 0, 100, 100);
    self.sureButton.center = self.view.center;
}

- (void)didClickSureButton:(UIButton *)button {
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    } else {
        [self dismissViewControllerAnimated:YES completion:^{
            if (self.sureComplete) {
                self.sureComplete();
            }
        }];
    }
}

@end
