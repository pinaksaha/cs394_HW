//
//  PSStoreViewController.m
//  BlackJack
//
//  Created by Pinak Saha on 3/11/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSStoreViewController.h"

@interface PSStoreViewController ()

@end

@implementation PSStoreViewController

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
- (IBAction)returnFromStore:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
