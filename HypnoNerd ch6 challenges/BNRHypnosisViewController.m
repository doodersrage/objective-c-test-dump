//
//  BNRHypnosisViewController.m
//  HypnoNerd
//
//  Created by rob on 9/30/14.
//  Copyright (c) 2014 rob. All rights reserved.
//

#import "BNRHypnosisViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnosisViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"BNRHypnosisViewController loaded its view.");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil
                         bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        
        // Set the tab bar item's title
        self.tabBarItem.title = @"Hypnotize";
        
        // Create a UIImage from a file
        // This will use Hypno@2x.png on retina display devices
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        
        // Put that image on the tab bar item
        self.tabBarItem.image = i;
    }
    return self;
}

/*- (void)loadView
{
    // Create a view
    BNRHypnosisView *backgroundView = [[BNRHypnosisView alloc] init];
    
    // Set it as *the* view of this view controller
    self.view = backgroundView;
} */

- (void)changeColor:(id)sender
{
    BNRHypnosisView *hypnosisView = (BNRHypnosisView *)self.view;
    UISegmentedControl *s = (UISegmentedControl *)sender;
    int index = [s selectedSegmentIndex];
    
    if (index == 0) {
        hypnosisView.circleColor = [UIColor redColor];
    }
    else if (index == 1) {
        hypnosisView.circleColor = [UIColor blueColor];
    }
    else if (index == 2) {
        hypnosisView.circleColor = [UIColor greenColor];
    }
    
}

@end
