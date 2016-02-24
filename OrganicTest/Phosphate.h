//
//  Phosphate.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 15..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//
//  인산염: 무기 화합물

#import <Foundation/Foundation.h>

@interface Phosphate : NSObject
{
    @protected
    NSString *_name;
    NSString *_bondType;
//    NSArray *nameList;
}
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSString *bondType;

@end
