//
//  ViewController.m
//  firstios
//
//  Created by darshan on 19/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)logout:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapButton:(UIButton *)sender {
    NSString *msg = @"look Down!!";
    
    _lableDown.text = _textUp.text;
    [_textUp resignFirstResponder];//keyboard hide
    _lable.text = [NSString stringWithFormat:@"%@, %@",_textUp.text,msg];
}

- (IBAction)tapDbutton:(id)sender {
    NSString *msg = @"look Up!!";
    _lable.text = _textDown.text;
    [_textDown resignFirstResponder];//keyboard hide
    _lableDown.text = [NSString stringWithFormat:@"%@, %@",_textDown.text,msg];
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];//keyboard hide when return button tap
    return YES;
}




@end
