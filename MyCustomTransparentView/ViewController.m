//
//  ViewController.m
//  MyCustomTransparentView
//
//  Created by Jigs Sheth on 5/24/13.
//  Copyright (c) 2013 shethCompany. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showTransparentView:(id)sender {
    _customView =[[[NSBundle mainBundle] loadNibNamed:@"CustomTransparentView" owner:self options:nil] objectAtIndex:0];
    _customView.layer.cornerRadius=20.0f;
    _customView.layer.borderWidth = 3.0f;
    _customView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    _customView.frame= CGRectMake(30.0f, 30.0f, _customView.frame.size.width, _customView.frame.size.height);
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTapGestureCaptured:)];
    [_customView addGestureRecognizer:singleTap];
//    _customView.message.text= @" Hello Button clicked me!!Really";
    [self.view addSubview:_customView];

}

- (void)singleTapGestureCaptured:(UITapGestureRecognizer *)gesture
{
    if(_customView){
        [_customView removeFromSuperview];
    }
    
}
@end
