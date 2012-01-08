//
//  CalcViewController.h
//  Calc
//
//  Created by 大介 熱海 on 12/01/08.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#include "Calculator.h"

@interface CalcViewController : UIViewController {
    IBOutlet UILabel *symbol;
    IBOutlet UILabel *equal;
    IBOutlet UITextField *num1;
    IBOutlet UITextField *num2;
    IBOutlet UITextField *answer;
    IBOutlet UIButton *add;
    IBOutlet UIButton *sub;
    IBOutlet UIButton *mul;
    IBOutlet UIButton *div;
}

- (void)addButtonPressed:(id)sender;
- (void)subButtonPressed:(id)sender;
- (void)mulButtonPressed:(id)sender;
- (void)divButtonPressed:(id)sender;

@end
