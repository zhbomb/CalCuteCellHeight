//
//  ViewController.m
//  CalcuteCellHeight
//
//  Created by tan weifeng on 16/1/5.
//  Copyright © 2016年 bomb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    mutDataArray = [NSMutableArray arrayWithObjects:@"1\n2\n3\n4\n5\n6\n7\n8\n9\n10", @"123456789012345678901234567890",@"灾难，灾难，你来啦",@"拯救世界，维护和平，就靠你啦，我的朋友，联合国国际大会现在开始，我要参加",@"从来没想到竟然可以在正常交易日提前收工。一位券商从业人员调侃道，而这一天就发生在2016年1月4日，熔断机制正式实施的第一天。\n这也是2016年首个交易日，上证指数、深证成指双双低开，随后持续走低。沪深300指数午后跌幅扩大至5%，触发熔断机制，暂停交易15分钟。恢复交易仅6分钟，跌幅达到7%，再度触发熔断，暂停交易至收盘。\n不过，这种提前收盘并不意味着工作的提前结束。\n对于一些人来说，确实会提前结束看盘。但对另一部分来说，可能更加忙碌。“在这种极端行情之下，我们会开会讨论下看法、后市策略等。一位中型券商研究员告诉记者。" ,nil];
    
    UINib * nib = [UINib nibWithNibName:@"customCell" bundle:nil];
    [myTableView registerNib:nib forCellReuseIdentifier:@"cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [mutDataArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    customCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.translatesAutoresizingMaskIntoConstraints = NO;
    cell.TitleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    cell.pictureView.translatesAutoresizingMaskIntoConstraints = NO;
    cell.ImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    cell.TitleLabel.text = [mutDataArray objectAtIndex:indexPath.row];
    
    NSString * imageName = [NSString stringWithFormat:@"T%ld.jpg",(long)indexPath.row];
    UIImage * image = [UIImage imageNamed:imageName];
    //NSLog(@"原始的图片的宽为: %f, 高为: %f\n", image.size.width, image.size.height);
    if (image)
    {
        cell.ImageView.image = image;
        //UIImage * tempImage = tempCell.ImageView.image;
        //NSLog(@"图片的宽为: %f, 高为: %f", tempImage.size.width, tempImage.size.height);
    }
    
    CGSize size = [cell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    NSLog(@"h=%f", size.height + 10);
    return 10  + size.height;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    customCell * tempCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!tempCell)
    {
        //tempCell = [[customCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    tempCell.TitleLabel.text = [mutDataArray objectAtIndex:indexPath.row];
    
    NSString * imageName = [NSString stringWithFormat:@"T%ld.jpg",(long)indexPath.row];
    
    UIImage * image = [UIImage imageNamed:imageName];
    //NSLog(@"原始的图片的宽为: %f, 高为: %f\n", image.size.width, image.size.height);
    if (image)
    {
        tempCell.ImageView.image = image;
        
        //UIImage * tempImage = tempCell.ImageView.image;
        //NSLog(@"图片的宽为: %f, 高为: %f", tempImage.size.width, tempImage.size.height);
    }
    
    return tempCell;
}

@end
