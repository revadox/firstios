//
//  LoginController.m
//  firstios
//
//  Created by darshan on 19/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

#import "LoginController.h"

@interface LoginController ()

@end

@implementation LoginController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if(![defaults boolForKey:@"registed"]){
        _loginBtn.hidden =YES;//here need property reason we just hide button so..no action perform
    }
    else{
        _reEnterPassword.hidden=YES;
        _registerBtn.hidden=YES;
    
    }
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
- (IBAction)registerBtn:(id)sender {
    
    if([_userName.text isEqualToString:@""]||[_password.text isEqualToString:@""]||[_reEnterPassword.text isEqualToString:@""]){
        
        UIAlertView *error =[[UIAlertView alloc]initWithTitle:@"Ooops.." message:@"you have to complete all fields" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        NSLog(@"complete all fields");
        
        [error show];
        
    }
    else{
        [self checkPasswordMatch];
    
    }
}

-(void) checkPasswordMatch {

    if([_password.text isEqualToString:_reEnterPassword.text]) {
        NSLog(@"password match");
        [self registerNewUser];
    
    }
    else {
    UIAlertView *error =[[UIAlertView alloc]initWithTitle:@"Ooops.." message:@"password not matched try again!!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        
        [error show];
    
    }

}

-(void) registerNewUser {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:_userName.text forKey:@"username"];
    [defaults setObject:_password.text forKey:@"password"];
    [defaults setBool:YES forKey:@"registed"];

    
    [defaults synchronize];
     UIAlertView *success =[[UIAlertView alloc]initWithTitle:@"thank you" message:@"you are successfully registerd" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    
    [success show];
    
    
    [self performSegueWithIdentifier:@"loginNext" sender:self];
    
}

- (IBAction)loginBtn:(UIButton *)sender {
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    
   
        if([_userName.text isEqualToString:[defaults objectForKey:@"username"]] && [_password.text isEqualToString:[defaults objectForKey:@"password"]]) {
            NSLog(@"login successfully");
            
            UIAlertView *success =[[UIAlertView alloc]initWithTitle:@"welcome" message:@"you are successfully login" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            [success show];
            [self performSegueWithIdentifier:@"loginNext" sender:self];
            
            _userName.text = nil;
            _password.text = nil;
        }
        
        else {
        
            UIAlertView *error = [[UIAlertView alloc]initWithTitle:@"Ooops.." message:@"username and password not matched try again!!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            [error show];
            
            
            
        }
    
    
    
    
   
}



@end
