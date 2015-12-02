//
//  ViewController.m
//  UDID+keychain
//
//  Created by Mac on 15/12/2.
//  Copyright (c) 2015年 wmeng. All rights reserved.
//

#import "ViewController.h"
#import "NSString+UDID.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    使用keychain+UDID可以达到系统级别的存储，可以防止变相的卸载而UDID的改变
//    如果报错，加入相应的frameWork（security.framework）其他的参考SSKeychain的导入的framework
//    我使用SSKeychain的1.3.1版本
//    https://github.com/WMSmile/sskeychain
    
    
    
    /**
     *  使用注意，在NSString+UDID的类别里面，使用时更改自己的定义key和account（在NSString+UDID.m）中修改
     */
    
    
    NSString *udid = [NSString getUDID];
    
    NSLog(@"udid===%@",udid);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
