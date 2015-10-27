//
//  ViewController.m
//  LocalNotifications
//
//  Created by Treinamento Mobile on 10/27/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scheduleNotifications:(id)sender {
    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    localNotification.fireDate = [[NSDate date] dateByAddingTimeInterval:10];
    localNotification.alertTitle = @"Notificação Local";
    localNotification.alertBody = @"Minha primeira notificação";
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
}

@end
