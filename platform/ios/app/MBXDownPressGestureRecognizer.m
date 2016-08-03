//
//  MBXDownPressGestureRecognizer.m
//  ios
//
//  Created by Paul W Quimby on 8/2/16.
//  Copyright © 2016 Mapbox. All rights reserved.
//

#import "MBXDownPressGestureRecognizer.h"
#import <UIKit/UIGestureRecognizerSubclass.h>

@implementation MBXDownPressGestureRecognizer

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    if (self.state == UIGestureRecognizerStatePossible) {
        self.state = UIGestureRecognizerStateRecognized;
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    self.state = UIGestureRecognizerStateFailed;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    self.state = UIGestureRecognizerStateFailed;
}

@end
