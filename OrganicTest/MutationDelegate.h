//
//  MutationDelegate.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 15..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NumberConst.h"
@protocol MutationDelegate <NSObject>
@optional
//변이
- (void)executeMutation:(MutationType)type;
@end
