//
//  AddToDoViewController.m
//  EveryDoItAgain
//
//  Created by Sofia Knezevic on 2017-03-01.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "AddToDoViewController.h"

@interface AddToDoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priorityNumberTF;
@property (weak, nonatomic) IBOutlet UITextField *titleTF;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTV;


@end

@implementation AddToDoViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)doneClicked:(id)sender {
    
    if (self.managedObjectContext) {
        
        NSEntityDescription *toDoEntity = [NSEntityDescription entityForName:@"ToDo" inManagedObjectContext:self.managedObjectContext];
        NSManagedObject *toDoObject = [[NSManagedObject alloc] initWithEntity:toDoEntity insertIntoManagedObjectContext:self.managedObjectContext];
        
        
        [toDoObject setValue:self.titleTF.text forKey:@"title"];
        [toDoObject setValue:self.descriptionTV.text forKey:@"toDoDescription"];
        
        
    }
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
