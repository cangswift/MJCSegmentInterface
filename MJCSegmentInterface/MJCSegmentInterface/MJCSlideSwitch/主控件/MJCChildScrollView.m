//
//  MJCChildScrollView.m
//  MJCSlideSwitch
//
//  Created by mjc on 16/10/26.
//  Copyright © 2016年 MJC. All rights reserved.
//

#import "MJCChildScrollView.h"

@interface MJCChildScrollView ()

/** <#  注释  #> */
@property (nonatomic,assign) NSInteger childFrameTag;

@end


@implementation MJCChildScrollView

//重写方法 通过代码自定义控件,都要重写这个方法
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        self.pagingEnabled = YES;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        self.bounces = YES;
        
//        self.directionalLockEnabled = YES;
//        self.scrollsToTop = NO; // 点击状态栏的时候，这个scrollView不会滚动到最顶部
    }
    
    return self;
    
}


-(void)setupChildFrame:(CGRect)childFrame titlesViewFrame:(CGRect)titlesViewFrame titlesScrollFrame:(CGRect)titlesScrollFrame MJCSeMentTitleBarStyle:(MJCSeMentTitleBarStyles)MJCSeMentTitleBarStyle;
{
    if (_childFrameTag == 1) {
        self.frame = self.frame;
    }else{
        if (MJCSeMentTitleBarStyle == MJCSegMentTitlesClassicStyle) {
            self.frame = CGRectMake(0,titlesViewFrame.size.height+titlesViewFrame.origin.y,MJCScreenWidth,MJCScreenHeight-(titlesViewFrame.size.height+64+titlesViewFrame.origin.y));
        }else if (MJCSeMentTitleBarStyle == MJCSegMentTitlesScrollStyle){
            self.frame = CGRectMake(0,titlesScrollFrame.size.height+titlesScrollFrame.origin.y,MJCScreenWidth,MJCScreenHeight-(titlesScrollFrame.size.height + 64 + titlesScrollFrame.origin.y));
        }else{
            self.frame = CGRectMake(0,64,MJCScreenWidth,MJCScreenHeight-64);
        }
    }
}

-(void)setChildFrame:(CGRect)childFrame
{
    _childFrame = childFrame;
    
    _childFrameTag = 1;
    
    self.frame = childFrame;
}


@end
