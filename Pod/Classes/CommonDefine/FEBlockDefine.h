//
//  FEBlockDefine.h
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/// ------------------------- 错误代码
typedef NS_ENUM(NSUInteger, FEErrorCode) {
    eFEErrorCodeSuccess = 10001,
    eFEErrorCodeFail    = 10004,
};
typedef FEErrorCode FEErrorCode;


/// ------------------------ Block定义
typedef void (^FEResultBlock)(id result, NSError *error);   //普通
typedef void (^FECellSelectBlock)(UITableViewCell *cell, id cellData);  //cell选中


/// ------------------------ NSError快捷定义
#define FEFailError [NSError errorWithDomain:@"FE.ERROR" code:eFEErrorCodeFail userInfo:@{NSLocalizedDescriptionKey:[NSString stringWithFormat:@"%s",__PRETTY_FUNCTION__]}]

@interface FEBlockDefine : NSObject

NSError *ERROR(NSInteger code, NSString *desc);

@end
