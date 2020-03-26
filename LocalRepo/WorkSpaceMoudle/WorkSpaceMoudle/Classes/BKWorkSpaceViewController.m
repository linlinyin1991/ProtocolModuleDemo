//
//  BKWorkSpaceViewController.m
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import "BKWorkSpaceViewController.h"
#import <HomeProtocol/BKHomeProtocol.h>
#import <MediaService/BKJKProtocolManager.h>
@interface BKWorkSpaceViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSMutableArray * itemArray;
@end

@implementation BKWorkSpaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self.itemArray addObject:@"iOS13 Dynamic Color"];
    [self.itemArray addObject:@"签到"];
    [self.itemArray addObject:@"赎楼"];
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"workSpaceCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"workSpaceCell"];
    }
    cell.textLabel.text = [self.itemArray objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.itemArray.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
            {
                id service = [BKJKProtocolManager serviceProvideForProtocol:@protocol(BKHomeProtocol)];
                if (service != nil) {
                    UIViewController * newsVC = [service newsListVCWithType:@"新鲜事"];
                    [self.navigationController pushViewController:newsVC animated:YES];
                }
                return;
            }
            break;
            
        default:
            break;
    }
}
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}
- (NSMutableArray *)itemArray {
    if (!_itemArray) {
        _itemArray = [[NSMutableArray alloc] init];
    }
    return _itemArray;
}

@end




