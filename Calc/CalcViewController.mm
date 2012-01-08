//
//  CalcViewController.m
//  Calc
//
//  Created by 大介 熱海 on 12/01/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CalcViewController.h"

@implementation CalcViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)addButtonPressed:(id)sender
{
    [symbol setText:@"+"];
    int ans = addValues([num1.text intValue], [num2.text intValue]);
    answer.text = [NSString stringWithFormat:@"%d", ans];
}

- (void)subButtonPressed:(id)sender
{
    [symbol setText:@"-"];
    int ans = subValues([num1.text intValue], [num2.text intValue]);
    answer.text = [NSString stringWithFormat:@"%d", ans];
}

- (void)mulButtonPressed:(id)sender
{
    [symbol setText:@"*"];
    int ans = mulValues([num1.text intValue], [num2.text intValue]);
    answer.text = [NSString stringWithFormat:@"%d", ans];
}

- (void)divButtonPressed:(id)sender
{
    [symbol setText:@"/"];
    int ans = divValues([num1.text intValue], [num2.text intValue]);
    answer.text = [NSString stringWithFormat:@"%d", ans];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    add = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    add.frame = CGRectMake(20, 70, 30, 30);
    
    [add addTarget:self action:@selector(addButtonPressed:) forControlEvents:UIControlEventTouchDown];
    [sub addTarget:self action:@selector(subButtonPressed:) forControlEvents:UIControlEventTouchDown];
    [mul addTarget:self action:@selector(mulButtonPressed:) forControlEvents:UIControlEventTouchDown];
    [div addTarget:self action:@selector(divButtonPressed:) forControlEvents:UIControlEventTouchDown];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
