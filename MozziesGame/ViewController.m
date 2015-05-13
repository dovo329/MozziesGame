//
//  ViewController.m
//  MozziesGame
//
//  Created by Douglas Voss on 5/13/15.
//  Copyright (c) 2015 DougsApps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
// Do any additional setup after loading the view, typically from a nib.
    
    UIViewController *foundQueenVC = [[UIViewController alloc] init];
    foundQueenVC.view.frame = self.view.bounds;
    foundQueenVC.view.backgroundColor = [UIColor yellowColor];
    UILabel *foundQueenLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 100, 320, 30)];
    foundQueenLabel.backgroundColor = [UIColor brownColor];
    foundQueenLabel.text = @"You found the Queen!";
    [foundQueenVC.view addSubview:foundQueenLabel];
    
    UIViewController *nopeVC = [[UIViewController alloc] init];
    nopeVC.view.backgroundColor = [UIColor blueColor];
    nopeVC.view.frame = self.view.bounds;
    UILabel *nopeLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 100, 320, 30)];
    nopeLabel.backgroundColor = [UIColor whiteColor];
    nopeLabel.text = @"Sorry, you lose!";
    [nopeVC.view addSubview:nopeLabel];
    
    int queenOption = arc4random_uniform(3) + 1;
    NSLog(@"queenOption == %d", queenOption);
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Find the Queen" message:@"You have 3 options:" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *option1 = [UIAlertAction actionWithTitle:@"Option 1" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        if (queenOption == 1) {
            [self.navigationController pushViewController:foundQueenVC animated:YES];
        } else {
            [self.navigationController pushViewController:nopeVC animated:YES];
        }
        NSLog(@"option 1");
    }];
    [alertController addAction:option1];
    
    UIAlertAction *option2 = [UIAlertAction actionWithTitle:@"Option 2" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        if (queenOption == 2) {
            [self.navigationController pushViewController:foundQueenVC animated:YES];
        } else {
            [self.navigationController pushViewController:nopeVC animated:YES];
        }
        NSLog(@"option 2");
    }];
    [alertController addAction:option2];
    
    UIAlertAction *option3 = [UIAlertAction actionWithTitle:@"Option 3" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        if (queenOption == 3) {
            [self.navigationController pushViewController:foundQueenVC animated:YES];
        } else {
            [self.navigationController pushViewController:nopeVC animated:YES];
        }
        NSLog(@"option 3");
    }];
    [alertController addAction:option3];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
