//
//  KSBarrageView.h
//  KwSing
//
//  Created by yuchenghai on 14/12/22.
//  Copyright (c) 2014年 kuwo.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KSBarrageView : UIView

/**
 *  dataArray's object is NSDictionary
 *  key "avatar" is NSString or UIImage or ImageUrl
 *  key "content" is NSString
 */
@property (strong, nonatomic)NSArray *dataArray;

- (void)start;
- (void)stop;

@end
