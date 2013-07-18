//
//  ViewController.h
//  MyCustomTransparentView
//
//  Created by Jigs Sheth on 5/24/13.
//  Copyright (c) 2013 shethCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyCustomTransparentView.h" 

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet MyCustomTransparentView *customView;
- (IBAction)showTransparentView:(id)sender;

@end
