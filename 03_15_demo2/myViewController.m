//
//  myViewController.m
//  03_15_demo2
//
//  Created by 李志鹏 on 16/3/15.
//  Copyright © 2016年 李志鹏. All rights reserved.
//

#import "myViewController.h"
#import "AppDelegate.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height
#define SP_W(width) WIDTH*(width/320.0)
#define SP_H(height) HEIGHT*(height/480.0)

#define WIDTHS _views.frame.size.width
#define HEIGHTS _views.frame.size.height
#define SP_WS(width) WIDTH*(width/200.0)
#define SP_HS(height) HEIGHT*(height/300.0)

@interface myViewController ()
@property(strong,nonatomic) AppDelegate *app;
@property(strong,nonatomic) UIView *views;


@end

@implementation myViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view = [[UIView alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    self.view.backgroundColor = [UIColor whiteColor];
    _views = [[UIView alloc] initWithFrame:CGRectMake(SP_W(50), SP_W(100), SP_W(200), SP_W(300))];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(SP_WS(50), SP_HS(100), SP_WS(100) ,SP_HS(50))];
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(93, 10, 187.5, 111.166667)];
    
    NSLog(@"sp_ws = %f",SP_WS(50));
    NSLog(@"sp_hs = %f",SP_HS(100));
    NSLog(@"sp_ws = %f",SP_WS(100));
    NSLog(@"sp_hs = %f",SP_HS(50));
    
    btn.backgroundColor = [UIColor redColor];
    btn1.backgroundColor = [UIColor redColor];
    _views.backgroundColor = [UIColor blueColor];
    [_views addSubview:btn];
    [_views addSubview:btn1];
    [self.view addSubview:_views];
    


}
CG_INLINE CGRect
CGRectMake1(CGFloat x, CGFloat y, CGFloat width, CGFloat height)

{
    
    AppDelegate *myDelegate = [[UIApplication sharedApplication] delegate];
    
    CGRect rect;
    
    rect.origin.x = x * myDelegate.autoSizeScaleX;
    rect.origin.y = y * myDelegate.autoSizeScaleY;
    
    rect.size.width = width * myDelegate.autoSizeScaleX;
    rect.size.height = height * myDelegate.autoSizeScaleY;
//    rect.size.width = width * width;
//    rect.size.height = height * height;
    
    return rect;
    
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

@end
