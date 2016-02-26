//
//  ViewController.m
//  STSMessageView
//
//  Created by Steve on 2016-02-25.
//  Copyright © 2016 Steve. All rights reserved.
//

#import "STSViewController.h"
#import "STSMessageView.h"

@interface STSViewController ()

@property (strong, nonatomic) STSMessageView *messageView;

@end

@implementation STSViewController

# pragma mark - Life Cycle -

- (void)viewDidLoad {
    [super viewDidLoad];
    self.messageView = [[STSMessageView alloc] initWithFrame:self.navigationController.navigationBar.frame];
    
    [self.view addSubview:self.messageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - IBActions -

- (IBAction)showButtonTapped:(UIButton *)sender {
    [self.messageView showWithDuration:0.5 withTimerToClose:2];
}

- (IBAction)dismissButtonTapped:(UIButton *)sender {
    [self.messageView dismissWithDuration:0.5];
}

@end
