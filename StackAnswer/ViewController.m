//
//  ViewController.m
//  StackAnswer
//
//  Created by Dinesh on 21/05/15.
//  Copyright (c) 2015 TheBanyanTree. All rights reserved.
//

#import "ViewController.h"

@implementation ZeroedIntrinsicContentSizeImageView

- (CGSize)intrinsicContentSize {
    if (self.image)
        return [super intrinsicContentSize];
    return CGSizeZero;
}

@end

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

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

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell_ID"];
    UIImageView * imageView = (UIImageView *)[cell viewWithTag:13];
    imageView.image = [UIImage imageNamed:@"Untitled"];
    UILabel * label = (UILabel *)[cell viewWithTag:14];
    label.text = @"Lets go to school";
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView cellForRowAtIndexPath:indexPath];
    UIImageView * imageView = (UIImageView *)[cell viewWithTag:13];
    UILabel * label = (UILabel *)[cell viewWithTag:14];

    if(imageView.image) {
        imageView.image = nil;
        label.text = @"Where is my bus?";
    }
    else {
        imageView.image = [UIImage imageNamed:@"Untitled"];
        label.text = @"Lets go to school";
    }
    
    [UIView animateWithDuration:0.5 delay:0.0 usingSpringWithDamping:0.5 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveLinear animations:^{
        [cell layoutIfNeeded];
    } completion:NULL];

}

@end
