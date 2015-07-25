//
//  NSSortDictionary.h
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import <Foundation/Foundation.h>

@interface NSSortDictionary : NSObject

@property (strong, nonatomic, readonly) NSMutableArray *keyArray; //
@property (strong, nonatomic, readonly) NSMutableDictionary *valueDictioanry; //

/**
 * 根据dictionary实例化
 */
+ (instancetype)dictionaryWithDictionary:(NSDictionary *)dictionary;

/**
 * 取值
 */
- (NSString *)keyAtIndex:(NSInteger)index;
- (id)valueAtIndex:(NSInteger)index;

/**
 * 赋值
 */
- (void)addValue:(id)value forSortKey:(NSString *)key;

/**
 * 删除
 */
- (void)removeObjectForSortKey:(NSString *)key;
- (void)removeObjectAtIndex:(NSInteger)index;


/**
 * 其他处理
 */
- (NSInteger)countOfValue;  //value个数 = key个数
@end
