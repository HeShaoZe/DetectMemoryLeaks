//
//  TestTakeAction.h
//  DetectMemoryLeaks
//
//  Created by Leak on 2023/10/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TestTakeAction : NSObject


@property (nonatomic, copy) void(^onClickCenter)(NSString *btn);

- (void)moveActionString:(NSString *)actionText;
@end

NS_ASSUME_NONNULL_END
