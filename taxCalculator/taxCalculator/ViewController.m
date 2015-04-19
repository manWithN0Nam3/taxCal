//
//  ViewController.m
//  taxCalculator
//
//  Created by Alex Santorineos on 3/26/15.
//  Copyright (c) 2015 madApperz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentControl;

@property double caTax;
@property double chiTax;
@property double nyTax;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];



    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;

}

- (IBAction)onCalculateButtonTapped:(id)sender {
    
    NSString *enterTxt = self.textField.text;
    double enterV = enterTxt.intValue;


    if (self.segmentControl.selectedSegmentIndex == 0) {
        double result = enterV * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f",result];
    }
    else if(self.segmentControl.selectedSegmentIndex == 1){

        double result = enterV * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f",result];


    }else{

        double result = enterV * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f",result];
    }


}

@end
