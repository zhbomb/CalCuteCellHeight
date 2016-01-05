//
//  customCell.m
//  CalcuteCellHeight
//
//  Created by tan weifeng on 16/1/5.
//  Copyright © 2016年 bomb. All rights reserved.
//

#import "customCell.h"

@implementation customCell

@synthesize TitleLabel;
@synthesize ImageView;
@synthesize pictureView;

- (void)awakeFromNib {
    // Initialization code
    
    //UIImage * image = self.ImageView.image;
    //NSLog(@"原始的图片的宽为: %f, 高为: %f\n", image.size.width, image.size.height);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
