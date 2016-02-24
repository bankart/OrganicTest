//
//  StructFactory.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 16..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StructConst.h"
#import "NumberConst.h"

@interface StructFactory : NSObject

+ (NSValue *)getPhosphate:(NucleoType)type;
+ (struct Adenine)Adenine;
+ (struct Adenosine)Adenosine;
+ (struct Guanine)Guanine;
+ (struct Guanosine)Guanosine;
+ (struct Thymine)Thymine;
+ (struct Uracil)Uracil;
+ (struct Uridine)Uridine;
+ (struct Cytosine)Cytosine;
+ (struct Cytidine)Cytidine;
+ (struct PhosphoricAcid)PhosphoricAcid;

@end
