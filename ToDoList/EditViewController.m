//
//  EditViewController.m
//  ToDoList
//
//  Created by Budhathoki,Bipin on 1/27/15.
//  Copyright (c) 2015 Budhathoki,Bipin. All rights reserved.
//

#import "EditViewController.h"
#import "List.h"
#import "Task.h"

@interface EditViewController ()
@property (weak, nonatomic) IBOutlet UITextField *taskTextField;
@property (nonatomic, strong) List *list;

@end

@implementation EditViewController

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
    
    self.list = [List sharedInstance];
    
    [self.taskTextField setText:[self.list taskAtIndex:self.index].taskString];
    
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
- (IBAction)deleteButtonTapped:(id)sender {
    [self.list deleteTaskAtIndex:self.index];
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)doneButtonTapped:(id)sender {
    
    //check to see if it has been editied
    Task *task = [[Task alloc] init];
    task.taskString = self.taskTextField.text;
    [self.list saveTask:task atIndex:self.index];
    
    [self.navigationController popViewControllerAnimated:YES];
}


- (IBAction)maskAsCompleteButtonTapped:(id)sender {
    
    Task *task = [self.list taskAtIndex:self.index];
    task.reviewed = YES;
    
    [self.list saveTask:task atIndex:self.index];

    [self.navigationController popViewControllerAnimated:YES];
    
}


@end
