//
//  CellView.m
//  CustomScrollView
//
//  Created by Nipuna H Herath on 5/7/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

#import "CellView.h"
@interface CellView(){
    CGSize _intrinsicContentSize;
}
@end

@implementation CellView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"CellView" owner:self options:nil];
        self.bounds = self.view.bounds;
        _intrinsicContentSize = self.bounds.size;
        
        [self addSubview:self.view];
        
    }
    return self;
}
-(CGSize)intrinsicContentSize{
    return _intrinsicContentSize;
}
- (IBAction)loved:(id)sender {
    NSLog(@"love %d",self.tag);
}

@end
