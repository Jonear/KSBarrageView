//
//  KSBarrageView.m
//  KwSing
//
//  Created by yuchenghai on 14/12/22.
//  Copyright (c) 2014年 kuwo.cn. All rights reserved.
//

#import "KSBarrageView.h"
#import "UIView+Sizes.h"
#import "KSBarrageItemView.h"

#define ITEMTAG 154

@implementation KSBarrageView {
    UIImageView *_avatarView;
    UIImageView *_giftView;
    
    NSTimer *_timer;
    NSInteger _curIndex;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {

        [self setClipsToBounds:YES];
        
        _curIndex = 0;
    }
    return self;
}

- (void)start {
    if (_dataArray && _dataArray.count > 0) {
        if (!_timer) {
            _timer = [NSTimer scheduledTimerWithTimeInterval:0.7 target:self selector:@selector(postView) userInfo:nil repeats:YES];
        }
    }
}

- (void)stop {
    if (_timer) {
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)postView {
    if (_dataArray && _dataArray.count > 0) {
        int indexPath = random()%(int)((self.frame.size.height)/30);
        int top = indexPath * 30;
        
        UIView *view = [self viewWithTag:indexPath + ITEMTAG];
        if (view && [view isKindOfClass:[KSBarrageItemView class]]) {
            return;
        }
        
        NSDictionary *dict = nil;
        if (_dataArray.count > _curIndex) {
            dict = _dataArray[_curIndex];
            _curIndex++;
        } else {
            _curIndex = 0;
            dict = _dataArray[_curIndex];
            _curIndex++;
        }
        
        for (KSBarrageItemView *view in self.subviews) {
            if ([view isKindOfClass:[KSBarrageItemView class]] && view.itemIndex == _curIndex-1) {
                return;
            }
        }
        
        KSBarrageItemView *item = [[KSBarrageItemView alloc] initWithFrame:CGRectMake([[UIScreen mainScreen] bounds].size.width, top, 10, 30)];
        
        id avatar = [dict objectForKey:@"avatar"];
        NSString *content = [dict objectForKey:@"content"];
        if ([avatar isKindOfClass:[UIImage class]]) {
            [item setAvatarWithImage:avatar withContent:content];
        } else if ([avatar isKindOfClass:[NSString class]]){
            UIImage *image = [UIImage imageNamed:avatar];
            if (image) {
                [item setAvatarWithImage:image withContent:content];
            } else {
                // 这里使用网络图片，请加入sdwebImage库
//                [item setAvatarUrl:avatar withContent:content];
            }
        } else {
            return;
        }
        
        item.itemIndex = _curIndex-1;
        item.tag = indexPath + ITEMTAG;
        [self addSubview:item];
        
        CGFloat speed = 85.;
        speed += random()%20;
        CGFloat time = (item.width+[[UIScreen mainScreen] bounds].size.width) / speed;
        
        [UIView animateWithDuration:time delay:0.f options:UIViewAnimationOptionAllowUserInteraction | UIViewAnimationOptionCurveEaseInOut  animations:^{
            item.left = -item.width;
        } completion:^(BOOL finished) {
            [item removeFromSuperview];
        }];
        
    }
}

@end
