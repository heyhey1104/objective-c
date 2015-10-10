//
//  Employee.m
//  bmi
//
//  Created by hogle on 2015. 10. 10..
//  Copyright (c) 2015년 hogle. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize emplyeeID;

-(float) bodyMassIndes
{
    float normalBMI = [super bodyMassIndes];
    
    return normalBMI * 0.9;
}

- (void)addAssetsObject:(Asset *)a
{
    if (!assets){
        assets = [[NSMutableArray alloc] init];
        
    }
    [assets addObject:a];
}

- (unsigned int)valueOfAssets
{
    unsigned int sum = 0;
    for (Asset *a in assets){
        sum += [a resaleValue];
    }
    return sum;
    
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d : $%d in assets>", [self emplyeeID], [self valueOfAssets]];
}

- (void)dealloc{
    NSLog(@"dellocation %@", self);
}
@end
