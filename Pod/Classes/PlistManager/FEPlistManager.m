//
//  FEPlistManager.m
//  Pods
//
//  Created by wangzhanfeng-PC on 16/1/29.
//
//

#import "FEPlistManager.h"

@implementation FEPlistManager

+ (NSUserDefaults *)userDefault;
{
    NSUserDefaults *userDefs = [NSUserDefaults standardUserDefaults];
    return userDefs;
}

+ (id)userDefaultValueForKey:(NSString *)aKey;
{
    return [[self userDefault] valueForKey:aKey];
}

+ (void)syncValue:(id)value forKey:(NSString *)aKey;
{
    NSUserDefaults *userDefs = [NSUserDefaults standardUserDefaults];
    [userDefs setValue:value forKey:aKey];
    [userDefs synchronize];
}
@end
