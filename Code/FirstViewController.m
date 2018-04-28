//
//  FirstViewController.m
//  Code
//
//  Created by Sunny on 24/4/18.
//  Copyright © 2018年 Sunny. All rights reserved.
//

#import "FirstViewController.h"
#import "QKCodeController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = false;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
#if 0
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"testTitle" message:@"testMessage" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"点击" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        ;
    }];
    alertController.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [alertController addAction:action];
    [self presentViewController:alertController animated:YES completion:^{
        ;
    }];
#else
    
    QKCodeController *codeController =  [QKCodeController codeControllerWithDismissCallback:^(BOOL isSuccess) {
        if (isSuccess) {
            NSLog(@"正确");
        }else{
            NSLog(@"错误");
        }
    }];
    
    [self presentViewController:codeController animated:YES completion:^{
        ;
    }];
    
#endif
    
}

@end
