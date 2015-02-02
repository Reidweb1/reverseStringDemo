//
//  ViewController.m
//  LabelDemo
//
//  Created by Reid Weber on 2/2/15.
//  Copyright (c) 2015 Reid Weber. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *labelTextField;
@property (weak, nonatomic) IBOutlet UILabel *mainTextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeButtonClicked:(id)sender {
    if ([self.labelTextField.text length] > 0) {
        self.mainTextLabel.text = [self reverseString: self.labelTextField.text];
        NSLog(@"%@", self.labelTextField.text);
    }
}

- (NSString *) reverseString: (NSString *)text {
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger index = [text length];
    while (index > 0) {
        index--;
        NSRange range = NSMakeRange(index, 1);
        [reversedString appendString:[text substringWithRange:range]];
    }
    return reversedString;
}

@end
