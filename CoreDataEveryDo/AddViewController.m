//
//  AddViewController.m
//  CoreDataEveryDo
//
//  Created by Erin Luu on 2016-11-23.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "AddViewController.h"
#import "Todo+CoreDataClass.h"

@interface AddViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UISlider *prioritySlider;

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)priorityChange:(UISlider *)sender {
    self.priorityLabel.text = [NSString stringWithFormat:@"Priority: %d", (int)sender.value];
}

- (IBAction)addTask:(UIButton *)sender {
    Todo * newTodo = [[Todo alloc] init];
    newTodo.title = self.titleTextField.text;
    newTodo.priority = (int)self.prioritySlider.value;
    newTodo.complete = NO;
    [self.delegate addNewTask:newTodo];
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.titleTextField resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
