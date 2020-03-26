//
//  ELADynamicColorController.m
//  BKJKAthena
//
//  Created by yin linlin on 2018/3/21.
//

#import "ELADynamicColorController.h"

@interface ELADynamicColorController ()

@end

@implementation ELADynamicColorController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"iOS13 Dynamic Color";
    self.view.backgroundColor = [UIColor darkGrayColor];
    if (@available(iOS 13.0, *)) {
        self.view.backgroundColor = [UIColor systemBackgroundColor];
        [self addDynamicColorView];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

- (void)addDynamicColorView {
    NSInteger viewCount = 10;
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    CGFloat viewWidth = [[UIScreen mainScreen] bounds].size.width;
    CGFloat viewHeight = 70;
    scrollView.contentSize = CGSizeMake(viewWidth, viewHeight * viewCount);
    [self.view addSubview:scrollView];
    CGFloat viewOffsetY = 0;
    for (NSInteger i = 0; i < viewCount; i ++) {
        UIView *bgColorView = [[UIView alloc] initWithFrame:CGRectMake(0, viewOffsetY, viewWidth, viewHeight)];
        [scrollView addSubview:bgColorView];
        viewOffsetY += viewHeight;
        [self setDynamicBGView:bgColorView atIndex:i];
    }
}

- (void)setDynamicBGView:(UIView *)bgView atIndex:(NSInteger)index {
    UILabel *textLabel = [[UILabel alloc] initWithFrame:bgView.bounds];
    textLabel.font = [UIFont systemFontOfSize:14];
    textLabel.numberOfLines = 0;
    [bgView addSubview:textLabel];
    if (@available(iOS 13.0, *)) {
        switch (index) {
            case 0: {
                bgView.backgroundColor = [UIColor systemBackgroundColor];
                textLabel.textColor = [UIColor labelColor];
                textLabel.text =@"    bgColor = systemBackgroundColor\n    textColor = labelColor";
            }
                break;
            case 1: {
                bgView.backgroundColor = [UIColor secondarySystemBackgroundColor];
                textLabel.textColor = [UIColor secondaryLabelColor];
                textLabel.text =@"    bgColor = secondarySystemBackgroundColor\n    textColor = secondaryLabelColor";
            }
                break;
            case 2: {
                bgView.backgroundColor = [UIColor tertiarySystemBackgroundColor];
                textLabel.textColor = [UIColor tertiaryLabelColor];
                textLabel.text =@"    bgColor = tertiarySystemBackgroundColor\n    textColor = tertiaryLabelColor";
            }
                break;
            case 3: {
                bgView.backgroundColor = [UIColor systemGroupedBackgroundColor];
                textLabel.textColor = [UIColor quaternaryLabelColor];
                textLabel.text =@"    bgColor = systemGroupedBackgroundColor\n    textColor = quaternaryLabelColor";
            }
                break;
            case 4: {
                bgView.backgroundColor = [UIColor secondarySystemGroupedBackgroundColor];
                textLabel.textColor = [UIColor labelColor];
                textLabel.text =@"    bgColor = secondarySystemGroupedBackgroundColor\n    textColor = labelColor";
            }
                break;
            case 5: {
                bgView.backgroundColor = [UIColor tertiarySystemGroupedBackgroundColor];
                textLabel.textColor = [UIColor linkColor];
                textLabel.text =@"    bgColor = tertiarySystemGroupedBackgroundColor\n    textColor = linkColor";
            }
                break;
            case 6: {
                bgView.backgroundColor = [UIColor systemFillColor];
                textLabel.textColor = [UIColor placeholderTextColor];
                textLabel.text =@"    bgColor = systemFillColor\n    textColor = placeholderTextColor";
            }
                break;
            case 7: {
                bgView.backgroundColor = [UIColor secondarySystemFillColor];
                textLabel.textColor = [UIColor separatorColor];
                textLabel.text =@"    bgColor = secondarySystemFillColor\n    textColor = separatorColor";
            }
                break;
            case 8: {
                bgView.backgroundColor = [UIColor tertiarySystemFillColor];
                textLabel.textColor = [UIColor opaqueSeparatorColor];
                textLabel.text =@"    bgColor = tertiarySystemFillColor\n    textColor = opaqueSeparatorColor";
            }
                break;
            case 9: {
                bgView.backgroundColor = [UIColor quaternarySystemFillColor];
                textLabel.textColor = [UIColor systemIndigoColor];
                textLabel.text =@"    bgColor = quaternarySystemFillColor\n    textColor = systemIndigoColor";
            }
                break;
                
        }
    }
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
