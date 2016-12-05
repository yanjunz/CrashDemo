//
//  NoExceptionCatchVC.m
//  CrashDemo
//
//  Created by Yanjun Zhuang on 3/12/2016.
//  Copyright © 2016 Tencent. All rights reserved.
//

#import "NoExceptionCatchVC.h"

@interface NoExceptionCatchVC ()

@end

@implementation NoExceptionCatchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)onClickMeToCrash:(id)sender {
    __unsafe_unretained NSMutableDictionary *dirtyDict;
    @autoreleasepool {
        NSMutableDictionary *dict = [NSMutableDictionary new];
        
        dirtyDict = dict;
        dict = nil;
    }
    dirtyDict[@"A"] = @"AA";
    NSLog(@"%@", dirtyDict);
    
}

@end
