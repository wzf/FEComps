//
//  NSSortDictionary.m
//  Pods
//
//  Created by wangzhanfeng-PC on 15/7/24.
//
//

#import "NSSortDictionary.h"

@interface NSSortDictionary ()
@property (strong, nonatomic, readwrite) NSMutableArray *keyArray; //
@property (strong, nonatomic, readwrite) NSMutableDictionary *valueDictioanry; //
@end

@implementation NSSortDictionary

#pragma mark -
#pragma mark 实例化
// 根据dictionary实例化
+ (instancetype)dictionaryWithDictionary:(NSDictionary *)dictionary;
{
    NSSortDictionary *sortDictioanry = [[NSSortDictionary alloc] init];
    [sortDictioanry _setupWithDictionary:dictionary];
    return sortDictioanry;
}

- (void)_setupWithDictionary:(NSDictionary *)dictionary
{
    _valueDictioanry = [NSMutableDictionary dictionaryWithDictionary:dictionary];
    [self _reloadKeyArray];
}

- (void)_reloadKeyArray
{
    NSArray *keys = [[_valueDictioanry allKeys] mutableCopy];
    _keyArray = [NSMutableArray arrayWithArray:[keys sortedArrayUsingSelector:@selector(compare:)]];
}

#pragma mark -
#pragma mark 取值
// 取值
- (NSString *)keyAtIndex:(NSInteger)index;
{
    if (_keyArray.count > index) {
        return _keyArray[index];
    }
    return nil;
}
- (id)valueAtIndex:(NSInteger)index;
{
    NSString *key = [self keyAtIndex:index];
    if (key != nil) {
        return [_valueDictioanry valueForKey:key];
    }
    return nil;
}

#pragma mark -
#pragma mark 赋值
// 赋值
- (void)addValue:(id)value forSortKey:(NSString *)key;
{
    if (_valueDictioanry == nil) {
        _valueDictioanry = [NSMutableDictionary dictionary];
    }
    
    [_valueDictioanry setValue:value forKey:key];
    [self _reloadKeyArray];
}

#pragma mark -
#pragma mark 删除
// 删除
- (void)removeObjectForSortKey:(NSString *)key;
{
    if (key != nil) {
        [_valueDictioanry removeObjectForKey:key];
        [self _reloadKeyArray];
    }
}
- (void)removeObjectAtIndex:(NSInteger)index;
{
    NSString *key = [self keyAtIndex:index];
    [self removeObjectForSortKey:key];
}

#pragma mark -
#pragma mark 其他处理
- (NSInteger)countOfValue;
{
    return _keyArray.count;
}
@end
