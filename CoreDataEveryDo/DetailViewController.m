//
//  DetailViewController.m
//  CoreDataEveryDo
//
//  Created by Erin Luu on 2016-11-23.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.todoItem) {
        self.titleLabel.text = [NSString stringWithFormat:@"Title: %@",self.todoItem.title];
        self.priorityLabel.text = [NSString stringWithFormat:@"Priority: %d",self.todoItem.priority];
        if (self.todoItem.complete == 0) {
            self.completeLabel.text = [NSString stringWithFormat:@"Complete: No"];
        }else {
            self.completeLabel.text = [NSString stringWithFormat:@"Complete: Yes"];
        }
        
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(Todo *)todo {
    if (_todoItem != todo) {
        _todoItem = todo;
        
        // Update the view.
        [self configureView];
    }
}


@end
