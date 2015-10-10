//
//  Person.h
//  bmi
//
//  Created by hogle on 2015. 10. 10..
//  Copyright (c) 2015년 hogle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}
- (float) heigthInMeters;
- (void) setHeightInMeters: (float) h;
- (int) weigthInKilos;
- (void) setWeightInKilos: (int) w;

// BMI 계산
- (float) bodyMassIndes;
@end
