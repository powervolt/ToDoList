//
//  AddViewController.m
//  ToDoList
//
//  Created by Budhathoki,Bipin on 1/27/15.
//  Copyright (c) 2015 Budhathoki,Bipin. All rights reserved.
//

#import "AddViewController.h"
#import "List.h"
#import "Task.h"

@interface AddViewController ()

@property (weak, nonatomic) IBOutlet UITextField *TaskTextField;

@end

@implementation AddViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)doneButtonTapped:(id)sender {
    if(self.TaskTextField.text.length > 0)
    {
        Task *newTask = [[Task alloc] init];
        newTask.taskString = self.TaskTextField.text;
        List *list = [List sharedInstance];
        [list addTask:newTask];
    }
    
    else{
        
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Warning"
                                                            message:@"Task is Empty"
                                                           delegate:self
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        [alertView show];
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
