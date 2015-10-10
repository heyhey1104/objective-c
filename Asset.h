//
//  Asset.h
//  Asset
//
//  Created by hogle on 2015. 10. 10..
//  Copyright (c) 2015년 hogle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
}

// strong 한정자 : 이것은 포인터로서 소유권 주장의 대상이 되는 객체를 가리킨다.
// 객체의 소유자가 없을 때 이 객체는 메모리 할당이 취소된다.
// dealloc 메시지를 받아서 취소
@property (strong) NSString *label;
@property unsigned int resaleValue;

@end
