//
//  DetailViewController.h
//  CoreDataEveryDo
//
//  Created by Erin Luu on 2016-11-23.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo+CoreDataClass.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Todo *todoItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

