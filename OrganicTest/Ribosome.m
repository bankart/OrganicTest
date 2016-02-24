//
//  Ribosome.m
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 20..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "Ribosome.h"

@implementation Ribosome
@synthesize type = _type;

- (id)initWithType:(RibosomeType)type
{
    if( [super init] ) {
        _type = type;
    }
    return self;
}



@end
