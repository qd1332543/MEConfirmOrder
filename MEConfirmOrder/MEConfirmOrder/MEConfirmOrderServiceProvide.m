//
//  MEConfirmOrderServiceProvide.m
//  MEConfirmOrder
//
//  Created by MoShi-MacBookPro on 2017/4/18.
//  Copyright © 2017年 祁鹏宇. All rights reserved.
//

#import "MEConfirmOrderServiceProvide.h"
#import <MEProtocolManager/MEProtocolManager.h>
#import <MEConfirmOrderServiceProtocol/MEConfirmOrderServiceProtocol.h>

#import "MEConfirmOrderViewController.h"

@interface MEConfirmOrderServiceProvide () <MEConfirmOrderServiceProtocol>

@end

@implementation MEConfirmOrderServiceProvide

+ (void)load {
    [MEProtocolManager registServiceProvide:[self new] forProtocol:@protocol(MEConfirmOrderServiceProtocol)];
}

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete {
    MEConfirmOrderViewController *confirmOrderVC = [[MEConfirmOrderViewController alloc] initWithGoodsId:goodsId sureComplete:sureComplete];
    return confirmOrderVC;
}

@end
