//
//  MEConfirmOrderViewController.h
//  MEConfirmOrder
//
//  Created by MoShi-MacBookPro on 2017/4/18.
//  Copyright © 2017年 祁鹏宇. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MEConfirmOrderViewController : UIViewController

- (instancetype)initWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;

@end
