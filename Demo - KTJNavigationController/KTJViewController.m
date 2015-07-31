//
//  KTJViewController.m
//  Demo - KTJNavigationController
//
//  Created by 孙继刚 on 15/7/31.
//  Copyright (c) 2015年 Madordie. All rights reserved.
//

#import "KTJViewController.h"

@interface KTJViewController ()
@property (weak, nonatomic) IBOutlet UIButton *pushButton;

@end

@implementation KTJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIButton *backButton = [[UIButton alloc] init];
    [backButton setTitle:@"Custom back"
                forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [backButton sizeToFit];
    [backButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];

    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    
    [self.pushButton setTitle:[NSString stringWithFormat:@"%ld push next", self.tag] forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)pushAction:(id)sender {
    KTJViewController *vc = [[KTJViewController alloc] init];
    vc.tag = self.tag+1;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)backAction {
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
