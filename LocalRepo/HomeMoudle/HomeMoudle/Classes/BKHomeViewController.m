//
//  BKHomeViewController.m
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import "BKHomeViewController.h"
#import "BKNewsListViewController.h"

@interface BKHomeViewController ()

@end

@implementation BKHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    UIButton * newsButton = [UIButton buttonWithType:UIButtonTypeCustom];
    newsButton.frame = CGRectMake(10, 60, 200, 50);
    [newsButton setTitle:@"新闻列表" forState:UIControlStateNormal];
    [self.view addSubview:newsButton];
    [newsButton addTarget:self action:@selector(pushToNewsListVC) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushToNewsListVC {
    BKNewsListViewController * newsListVC = [[BKNewsListViewController alloc] init];
    [self.navigationController pushViewController:newsListVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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