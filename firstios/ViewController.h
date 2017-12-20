//
//  ViewController.h
//  firstios
//
//  Created by darshan on 19/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *lable;
@property (strong, nonatomic) IBOutlet UILabel *lableDown;
@property (strong, nonatomic) IBOutlet UITextField *textUp;
@property (strong, nonatomic) IBOutlet UITextField *textDown;
 @property (strong, nonatomic) UITapGestureRecognizer *tap;

- (IBAction)tapButton:(UIButton *)sender;
- (IBAction)tapDbutton:(id)sender;

- (IBAction)logout:(id)sender;



@end

