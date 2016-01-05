//
//  ViewController.h
//  CalcuteCellHeight
//
//  Created by tan weifeng on 16/1/5.
//  Copyright © 2016年 bomb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "customCell.h"

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView * myTableView;
    
    NSMutableArray * mutDataArray;
}


@end

