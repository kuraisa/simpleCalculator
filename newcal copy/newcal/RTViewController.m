//
//  RTViewController.m
//  newcal
//
//  Created by BSA Univ21 on 07/01/14.
//  Copyright (c) 2014 BSA Univ21. All rights reserved.
//

#import "RTViewController.h"

@interface RTViewController ()

@end

@implementation RTViewController

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


-(IBAction)buttonClicked:(id)sender
{
    
    UIButton *bt=(UIButton *)sender;
    
    NSString *buttonLabel=bt.titleLabel.text;
    int val=[bt.titleLabel.text integerValue];
    
    //stores numbers into values as string
    values=[NSMutableString stringWithFormat:@"%@%@",values,buttonLabel];
    display.text=values;
    
}

-(IBAction)buttonOperation:(id)operation
{
    
    operation=plus;
    
    [display setText:@"0"];
    //if Plus is pressed multiple times
    if(pValue==0)
        pValue=[values integerValue];
    
    else
    {
        cValue=[values integerValue];
        pValue+=cValue;
        NSString *result=[NSString stringWithFormat:@"%i",pValue];
        [display setText:result];
        
    }
    values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationMinus:(id)operation
{
    [display setText:@"0"];
    
    operation=minus;
    
    //if Plus is pressed multiple times
    if(pValue==0)
        pValue=[values integerValue];
    
    values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationMultiply:(id)operation
{
    opera=multiply;
    [display setText:@"0"];
    //if Plus is pressed multiple times
    if(pValue==0)
        pValue=[values integerValue];
    values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationDivide:(id)operation
{
    operation=divide;
    
    [display setText:@"0"];
    //if Plus is pressed multiple times
    if(pValue==0)
        pValue=[values integerValue];
    
    
    values=[NSMutableString stringWithFormat:@"%s",""];
}
-(IBAction)buttonOperationEqual:(id)operation
{
    
    switch (opera) {
        case plus:
        {
            cValue=[values integerValue];
            pValue+=cValue;
            NSString *result=[NSString stringWithFormat:@"%i",pValue];
            [display setText:result];
            
            break;
        }
            
        case minus:
        {
            cValue=[values integerValue];
            pValue-=cValue;
            NSString *result=[NSString stringWithFormat:@"%i",pValue];
            [display setText:result];
            pValue=0;
            break;
        }
            
        case multiply:{
            cValue=[values integerValue];
            pValue*=cValue;
            NSString *result=[NSString stringWithFormat:@"%i",pValue];
            [display setText:result];
            pValue=0;
            break;
        }
        case divide:{
            cValue=[values floatValue];
            pValue/=cValue;
            NSString *result=[NSString stringWithFormat:@"%i",pValue];
            [display setText:result];
            pValue=0;
            break;
            values=[NSMutableString stringWithFormat:@"%s",""];
        }
        default:
            break;
    }
}
-(IBAction)clearDisplay:(id)sender
{
    pValue=0;
    cValue=0;
    values=[NSMutableString stringWithFormat:@"%s",""];
    [display setText:@""];
}


@end
