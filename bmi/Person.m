//
//  Person.m
//  bmi
//
//  Created by hogle on 2015. 10. 10..
//  Copyright (c) 2015년 hogle. All rights reserved.
//

#import "Person.h"

@implementation Person

- (float) heigthInMeters
{
    return heightInMeters;
}

- (int) weigthInKilos
{
    return weightInKilos;
}

- (void) setHeightInMeters:(float)h
{
    heightInMeters = h;
}

- (void) setWeightInKilos:(int)w
{
    weightInKilos = w;
}

- (float) bodyMassIndes
{
    return weightInKilos / (heightInMeters * heightInMeters);
}


@end
