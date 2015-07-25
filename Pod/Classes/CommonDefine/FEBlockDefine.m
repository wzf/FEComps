//
//  FEBlockDefine.m
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import "FEBlockDefine.h"

@implementation FEBlockDefine

NSError *ERROR(NSInteger code, NSString *desc) {
    return [NSError errorWithDomain:@"FE.ERROR"
                               code:code
                           userInfo:@{NSLocalizedDescriptionKey:desc}];
}

@end
