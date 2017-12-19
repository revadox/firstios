//
//  FirstView.m
//  firstios
//
//  Created by darshan on 19/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//  Table view

#import "FirstView.h"

@interface FirstView ()<UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *arrList;


}

@end

@implementation FirstView
- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)arrayList {
   arrList = [NSMutableArray arrayWithObjects:@"hello",@"vaghani",@"how are you?", nil];

}


#pragma mark -UITableView DataSource Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return arrList.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static UITableView *cellId = @"cell";
    
    UITableView *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    return cell;

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
