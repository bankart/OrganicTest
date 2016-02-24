//
//  ChainDelegate.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 15..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberConst.h"

@class Nucleo;
@protocol ChainDelegate <NSObject>
@optional
//펩티드결합
- (void)executePeptiedBone:(NSInteger)boneCount;
//인산결합
- (void)executePhosphateChain:(NucleotideType)chainType;
//수소결합
- (void)executeHydrogenChain:(Nucleo *)element;
@end
