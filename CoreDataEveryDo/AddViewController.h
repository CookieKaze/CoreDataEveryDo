//
//  AddViewController.h
//  CoreDataEveryDo
//
//  Created by Erin Luu on 2016-11-23.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class  Todo;

@protocol addTaskDelegate <NSObject>
-(void) addNewTask: (Todo*) Todo;
@end

@interface AddViewController : UIViewController
@property (weak, nonatomic) id <addTaskDelegate> delegate;
@end
