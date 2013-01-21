//
//  MitternachtsformelViewController.m
//  Mitternachtsformel
//
//  Created by Niedermann Fabian on 06.05.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MitternachtsformelViewController.h"
#include "math.h"

@interface MitternachtsformelViewController ()

@end

@implementation MitternachtsformelViewController

@synthesize fieldA = _fieldA;
@synthesize fieldB = _fieldB;
@synthesize fieldC = _fieldC;
@synthesize labelRes1 = _labelRes1;
@synthesize labelRes2 = _labelRes2;



- (IBAction)solve
{
    double a = [self.fieldA.text doubleValue];
    double b = [self.fieldB.text doubleValue];
    double c = [self.fieldC.text doubleValue];
    double res1;
    double res2;
    if (b*b-4*a*c < 0) {
        self.labelRes1.text = @"unreal Result";
        self.labelRes2.text = @"unreal Result";
    } else {
        res1 = (-1*b+sqrt(b*b-4*a*c))/(2*a);
        res2 = (-1*b-sqrt(b*b-4*a*c))/(2*a);
        self.labelRes1.text = [NSString stringWithFormat:@"%g", res1];
        self.labelRes2.text = [NSString stringWithFormat:@"%g", res2];
    }
}

@end
