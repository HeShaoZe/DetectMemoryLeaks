//
//  ViewController.m
//  DetectMemoryLeaks
//
//  Created by Leak on 2023/10/13.
//

#import "ViewController.h"
#import "OneViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    // Do any additional setup after loading the view.
    
    

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    OneViewController *oneVC = [[OneViewController alloc] init];
    [self.navigationController pushViewController:oneVC animated:YES];
}





@end
