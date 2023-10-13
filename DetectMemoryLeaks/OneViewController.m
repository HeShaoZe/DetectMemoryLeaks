//
//  OneViewController.m
//  DetectMemoryLeaks
//
//  Created by Leak on 2023/10/13.
//

#import "OneViewController.h"
#import "TestTakeAction.h"

@interface OneViewController ()
@property (nonatomic, strong) TestTakeAction *action;

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view.
    
    ///发生内存泄漏的地方
    TestTakeAction *action = [[TestTakeAction alloc] init];
    __weak typeof(self)  weakSelf = self;
    action.onClickCenter = ^(NSString * _Nonnull btn) {
        [weakSelf.action moveActionString:btn];
    };
    self.action = action;
}



- (void)dealloc {
    NSLog(@"OneViewControllerdealloc--");
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
