//  ViewController.m
//  mobileMakersAcademyObjCTaxCalc
//
//  Created by Calvin Tirrell on 11/7/15.
//  Copyright © 2015 CT. All rights reserved.

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property double sfTax;
@property double chiTax;
@property double nycTax;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.sfTax = .075;
    self.chiTax = .0925;
    self.nycTax = .045;
    
}

- (IBAction)onButtonTapped:(id)sender {
    
    NSString *enteredText = self.textField.text;
    double enteredValue = enteredText.doubleValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0) {
        double result = enteredValue * self.sfTax;
        self.resultLabel.text = [NSString stringWithFormat: @"%.2f", result];
    }
    
    else if (self.segmentedControl.selectedSegmentIndex == 1) {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat: @"%.2f", result];
    }

    else {
        double result = enteredValue * self.nycTax;
        self.resultLabel.text = [NSString stringWithFormat: @"%.2f", result];
    }
    
}
@end