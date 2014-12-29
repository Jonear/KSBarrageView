//
//  KSBarrageItemView.h
//  KwSing
//
//  Created by yuchenghai on 14/12/24.
//  Copyright (c) 2014年 kuwo.cn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KSBarrageItemView : UIView

@property (assign, nonatomic) NSInteger itemIndex;

//- (void)setAvatarUrl:(NSString *)imageUrl withContent:(NSString *)content;

- (void)setAvatarWithImage:(UIImage *)image withContent:(NSString *)content;
- (void)setAvatarWithImageString:(NSString *)imageStr withContent:(NSString *)content;

@end
