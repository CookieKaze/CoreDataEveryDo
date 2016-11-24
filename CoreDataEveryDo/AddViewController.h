//
//  AddViewController.h
//  CoreDataEveryDo
//
//  Created by Erin Luu on 2016-11-23.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  Todo;

@interface AddViewController : UIViewController
@property (nonatomic) NSManagedObjectContext * context;
@end
