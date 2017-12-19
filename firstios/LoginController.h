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
@property (strong, nonatomic) IBOutlet UITextField *aPassword;
- (IBAction)login:(UIButton *)sender;
- (IBAction)register:(UIButton *)sender;

@end
