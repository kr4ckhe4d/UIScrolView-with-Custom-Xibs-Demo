//
//  ViewController.m
//  CustomScrollView
//
//  Created by Nipuna H Herath on 5/7/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

#import "ViewController.h"
#import "CellView.h"

@interface ViewController ()<UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    [self.myScrollView setBackgroundColor:[UIColor lightGrayColor]];
    NSArray *myImages = @[
                          @"cat1.jpg",
                          @"cat2.jpg",
                          @"cat3.jpg",
                          @"cat1.jpg",
                          @"cat2.jpg",
                          @"cat3.jpg",
                          @"cat1.jpg",
                          @"cat2.jpg",
                          @"cat3.jpg",
                          @"cat1.jpg"];
    
    CGFloat imageWidth = 275;
    CGFloat imageHeight = 419;
    CGFloat spacer = 20;
    
    CGFloat yPosition = 0;
    CGFloat scrollViewContentSize = 0;
    
    for (int i = 0; i<[myImages count]; i++) {
//        UIImage *myImage = [UIImage imageNamed:myImages[i]];
//        UIImageView *myImageView = [[UIImageView alloc] init];
//        myImageView.image = myImage;
//        
//        myImageView.center = self.view.center;
//
//        myImageView.frame = CGRectMake(10, yPosition, imageWidth, imageHeight);
//        
//        [self.myScrollView addSubview:myImageView];
//        
//        
//        yPosition+=imageHeight+spacer;
//        scrollViewContentSize += imageHeight+spacer;
//        
//        self.myScrollView.contentSize = CGSizeMake(imageWidth, scrollViewContentSize);
        
        CellView *cellView = [[CellView alloc] init];
        cellView.frame = CGRectMake(0,yPosition,self.view.bounds.size.width,imageHeight);
        [self.myScrollView addSubview:cellView];
        yPosition+=imageHeight+spacer;
        scrollViewContentSize += imageHeight+spacer;

        self.myScrollView.contentSize = CGSizeMake(imageWidth, scrollViewContentSize);
        [cellView setTag:i];
    }
    
    
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    int x = scrollView.contentOffset.y/439;
    NSLog(@"%d",x+1);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
