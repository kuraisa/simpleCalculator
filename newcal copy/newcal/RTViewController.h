//
//  RTViewController.h
//  newcal
//
//  Created by BSA Univ21 on 07/01/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RTViewController : UIViewController

typedef enum {plus, minus, multiply, divide, equal} caloperation ;
@interface RTViewController : UIViewController
{
    IBOutlet UILabel *display;
    caloperation operation;
    
    NSMutableString *values;
    
    int pValue,cValue;
    
    int res;
}
-(IBAction)buttonClicked:(id)sender;
-(IBAction)buttonOperation:(id)operation;
-(IBAction)buttonOperationMinus:(id)operation;
-(IBAction)buttonOperationMultiply:(id)operation;
-(IBAction)buttonOperationDivide:(id)operation;
-(IBAction)buttonOperationEqual:(id)operation;
-(IBAction)clearDisplay:(id)sender;



@end
