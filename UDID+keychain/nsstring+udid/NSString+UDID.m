//
//  NSString+UDID.m
//  UDID+keychain
//
//  Created by Mac on 15/12/2.
//  Copyright (c) 2015年 wmeng. All rights reserved.
//

#import "NSString+UDID.h"
#import "SSKeychain.h"

#define UDIDKEY @"UDID"
#define UDIDACCOUNT @"YOUR_BUNDLE_SEED.com.yourcompany.userinfo"

@implementation NSString (UDID)
+(NSString *)getUDID
{

    NSString *strUUID = [SSKeychain passwordForService:UDIDKEY account:UDIDACCOUNT];
    if (strUUID.length<1)
    {
        CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
        strUUID = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
        [SSKeychain setPassword:strUUID forService:UDIDKEY account:UDIDACCOUNT];
    }
    
    return strUUID;
    
}
@end
