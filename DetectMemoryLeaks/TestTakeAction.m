//
//  TestTakeAction.m
//  DetectMemoryLeaks
//
//  Created by Leak on 2023/10/13.
//

#import "TestTakeAction.h"

@implementation TestTakeAction

-(instancetype)init {
    self = [super init];
    if (self) {
        [self performSelector:@selector(takeAction) withObject:nil afterDelay:2.0];
    }
    return self;
}


- (void)takeAction {
    if (self.onClickCenter) {
        self.onClickCenter(@"你好");
    }
}

- (void)moveActionString:(NSString *)actionText {
    NSLog(@"moveActionStringfdfd---%@",actionText);
}

@end
