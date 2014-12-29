//
//  ViewController.m
//  KSBarrageViewDemo
//
//  Created by yuchenghai on 14/12/29.
//  Copyright (c) 2014年 yuchenghai. All rights reserved.
//

#import "ViewController.h"
#import "KSBarrageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor greenColor]];
    
    KSBarrageView *barrageView = [[KSBarrageView alloc] initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    [self.view addSubview:barrageView];
    
    [barrageView setDataArray:@[@{@"avatar":[UIImage imageNamed:@"Logo2"], @"content":@"djsflkjoiwene"},
                                @{@"avatar":[UIImage imageNamed:@"Logo2"], @"content":@"1212341"},
                                @{@"avatar":@"Logo2", @"content":@"大家好啊啊啊啊啊啊啊啊啊啊啊啊啊"},
                                @{@"avatar":@"Logo2", @"content":@"打开就发生束带结发哈市的发货时间卡的很费劲卡号是可怜的疯狂拉黑算了可大家发贺卡就睡了会打开附件阿士大夫"},
                                @{@"avatar":@"Logo2", @"content":@"2342sdfsjhd束带结发哈斯"}]];
    [barrageView start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
