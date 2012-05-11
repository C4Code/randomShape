//
//  C4WorkSpace.m
//  adam
//
//  Created by Travis Kirton on 12-05-11.
//  Copyright (c) 2012 POSTFL. All rights reserved.
//

#import "C4WorkSpace.h"
@interface C4WorkSpace () 
-(void)update;
@end

@implementation C4WorkSpace {
    C4Shape *newShape;
    CGPoint polygonPoints[5];
}

-(void)setup {
    polygonPoints[0] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    polygonPoints[1] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    polygonPoints[2] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    polygonPoints[3] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    polygonPoints[4] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    newShape = [C4Shape polygon:polygonPoints pointCount:5];
    newShape.animationDuration = 0.50f;
    [self.canvas addShape:newShape];
}

-(void)update {
    polygonPoints[0] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    polygonPoints[1] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    polygonPoints[2] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    polygonPoints[3] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    polygonPoints[4] = CGPointMake([C4Math randomInt:768], [C4Math randomInt:1024]);
    
    [newShape polygon:polygonPoints pointCount:5];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    CGFloat time = ((CGFloat)[C4Math randomInt:100]) / 50.0f;
    NSTimer *t = [NSTimer timerWithTimeInterval:time target:self selector:@selector(update) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:t forMode:NSDefaultRunLoopMode];
}
@end