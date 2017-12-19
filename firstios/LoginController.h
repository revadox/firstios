//
//  LoginController.h
//  firstios
//
//  Created by darshan on 19/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *userName;

@property (strong, nonatomic) IBOutlet UITextField *password;
@property (strong, nonatomic) IBOutlet UITextField *reEnterPassword;

@property (strong, nonatomic) IBOutlet UIButton *loginBtn;
@property (strong, nonatomic) IBOutlet UIButton *registerBtn;

- (IBAction)loginBtn:(UIButton *)sender;
- (IBAction)registerBtn:(id)sender;

@end
