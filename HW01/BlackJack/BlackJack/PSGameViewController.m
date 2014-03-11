//
//  PSGameViewController.m
//  BlackJack
//
//  Created by Pinak Saha on 3/11/14.
//  Copyright (c) 2014 Pinak Saha. All rights reserved.
//

#import "PSGameViewController.h"
#import "PSCard.h"
#import "PSCustomer.h"
#import "PSDealer.h"
#import "PSTable.h"
@interface PSGameViewController ()
@property (weak, nonatomic) IBOutlet UITextView *dealerHandLable;
@property (weak, nonatomic) IBOutlet UILabel *currentSumLabel;

@property (weak, nonatomic) IBOutlet UILabel *currentBalanceLabel;
@property (weak, nonatomic) IBOutlet UITextView *playerhandView;
@end

@implementation PSGameViewController

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
    
    PSCustomer * aPlayer = [[PSCustomer alloc] init];
    PSDealer * aDealer = [[PSDealer alloc]init];
    PSTable * aTable = [PSTable tableWithPlayers:aPlayer dealer:aDealer];
    self.currentBalanceLabel.text = [NSString stringWithFormat:@"%ld", aPlayer.bankValue];
    [aTable startGame];
    
    self.playerhandView.text = [aPlayer displayHandDescription];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)hitButtonPressed:(id)sender
{
    
}

- (IBAction)standButtonPressed:(id)sender
{
    
}

- (IBAction)endGameButtonPressed:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
