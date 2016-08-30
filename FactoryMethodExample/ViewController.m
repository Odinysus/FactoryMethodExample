//
//  ViewController.m
//  FactoryMethodExample
//
//  Created by qiang on 8/29/16.
//  Copyright © 2016 akite. All rights reserved.
//

#import "ViewController.h"
#import "AKFactory.h"
#import "AKBasicControl.h"

#define SIMPLE_FACTORY_WAY 1
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;
@property (weak, nonatomic) IBOutlet UIView *backView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // static configuration
    NSArray *configurations = @[@{@"type":@"datePick", @"title":@"日期"},
                                @{@"type":@"textField", @"title":@"姓名"}];
    int i = 0;
    CGFloat width = self.backView.frame.size.width;
    for (NSDictionary *configuration in configurations) {
        
        AKBasicControl *control;
        /**
         *  if you want to use another way to create control . please modify SIMPLE_FACTORY_WAY to other value but not 
         */
        if (SIMPLE_FACTORY_WAY == 1) {
            control  = [AKFactory controlWithType:configuration[@"type"]];

        } else {
            if ([configuration[@"type"] isEqualToString:@"datePick"]) {
                control = [AKFactory datePick];
            } else if ([configuration[@"type"] isEqualToString:@"textField"]) {
                control =[AKFactory TextField];
            }
        }
        control.titleLabel.text = configuration[@"title"];
        control.frame = CGRectMake(0, i * 50, width * 0.9, 50);
        [self.backView addSubview:control];
        i++;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClickCommit:(id)sender {
    BOOL flag = YES;
    for (AKBasicControl *control in self.backView.subviews) {
        if ([control isValid] == NO) {
            flag = NO;
            break;
        }
    }
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定"
                                                     style:UIAlertActionStyleCancel
                                                   handler:^(UIAlertAction *  action) {
                                                       
                                                   }];
    if (flag) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"成功" message:@"数据合法" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"失败" message:@"数据不合法" preferredStyle:UIAlertControllerStyleAlert];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
@end
