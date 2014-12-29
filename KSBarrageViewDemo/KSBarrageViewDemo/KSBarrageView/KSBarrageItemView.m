//
//  KSBarrageItemView.m
//  KwSing
//
//  Created by yuchenghai on 14/12/24.
//  Copyright (c) 2014年 kuwo.cn. All rights reserved.
//

#import "KSBarrageItemView.h"
#import "UIView+Sizes.h"

@implementation KSBarrageItemView {
    UIImageView *_avatarView;
    UILabel *_contentLabel;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.5]];
        _avatarView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [_avatarView.layer setMasksToBounds:YES];
        [_avatarView.layer setCornerRadius:15];
        [_avatarView.layer setBorderColor:[UIColor whiteColor].CGColor];
        [_avatarView.layer setBorderWidth:1.];
//        [_avatarView setImage:DEFAULAVATAR];
        [self addSubview:_avatarView];
        
        _contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(35, 6, 1, 30)];
        [_contentLabel setFont:[UIFont systemFontOfSize:14]];
        [_contentLabel setTextColor:[UIColor whiteColor]];
        [_contentLabel setNumberOfLines:1];
        [self addSubview:_contentLabel];
        
        [self.layer setMasksToBounds:YES];
        [self.layer setCornerRadius:15];
//        [self.layer setBorderColor:[UIColor whiteColor].CGColor];
//        [self.layer setBorderWidth:1.];
        
        [self setClipsToBounds:YES];
    }
    return self;
}

//- (void)setAvatarUrl:(NSString *)imageUrl withContent:(NSString *)content {
//    [_avatarView sd_setImageWithURL:[NSURL URLWithString:imageUrl] placeholderImage:DEFAULAVATAR];
//    [_contentLabel setText:content];
//    [_contentLabel sizeToFit];
//    self.width = _contentLabel.width+43;
//}

- (void)setAvatarWithImage:(UIImage *)image withContent:(NSString *)content {
    [_avatarView setImage:image];
    [_contentLabel setText:content];
    [_contentLabel sizeToFit];
    self.width = _contentLabel.width+43;
}

- (void)setAvatarWithImageString:(NSString *)imageStr withContent:(NSString *)content {
    [self setAvatarWithImage:[UIImage imageNamed:imageStr] withContent:content];
}

@end
