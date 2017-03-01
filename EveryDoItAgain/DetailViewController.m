//
//  DetailViewController.m
//  EveryDoItAgain
//
//  Created by Sofia Knezevic on 2017-03-01.
//  Copyright © 2017 Sofia Knezevic. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    
    if (self.detailItem) {
        
        self.detailDescriptionLabel.text = self.detailItem.toDoDescription;
        
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(ToDo *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
