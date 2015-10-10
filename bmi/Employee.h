//
//  Employee.h
//  bmi
//
//  Created by hogle on 2015. 10. 10..
//  Copyright (c) 2015년 hogle. All rights reserved.
//

#import "Person.h"

@class Asset;

@interface Employee : Person
{
    int emplyeeID;
    NSMutableArray *assets;
}

@property int emplyeeID;

- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
