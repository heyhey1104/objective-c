//
//  main.m
//  bmi
//
//  Created by hogle on 2015. 10. 10..
//  Copyright (c) 2015년 hogle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
//        Employee *person = [[Employee alloc] init];
//        
//        [person setWeightInKilos:60];
//        [person setHeightInMeters:1.7];
//        [person setEmplyeeID:32];
//        
//        float bmi = [person bodyMassIndes];
//        NSLog(@"weigthInkilos : %d / heightInMeters : %f",[person weigthInKilos], [person heigthInMeters]);
//        NSLog(@"person %d has a BMI of %f", [person emplyeeID], bmi);
        NSMutableArray  *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++){
            
            Employee *person = [[Employee alloc] init];
            
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmplyeeID:i];
            
            [employees addObject:person];
        }
        
        for (int i = 0; i < 10; i++){
            
            Asset *asset = [[Asset alloc] init];
            
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            NSUInteger randomIndex = random() % [employees count];
            
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            [randomEmployee addAssetsObject:asset];
        }
        
        NSLog(@"Emplyess : %@", employees);
        
        NSLog(@"Giving up ownsership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of array");
        
        employees = nil;
        
    }
    return 0;
}
