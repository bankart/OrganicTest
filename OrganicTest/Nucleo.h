//
//  Nucleo.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 14..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//
//  핵염기는 퓨린(아데닌과 구아닌) 과 피리미딘 (우라실, 티민 과 시토신)으로 구성되어 있다. 
//  모든 유전자는 필요할 때 하나의 단백질을 만들 수 있는 정보를 가지고 있다. DNA에 있는 핵 염기의 순서가 이 정보를 제공한다. 
//  RNA는 단백질을 합성하는 과정에 작용하며 일부 바이러스는 DNA 대신 RNA를 유전 물질로 갖기도 한다. 핵염기로 DNA와 달리 티민 대신 우라실을 갖는다.

#import "Phosphate.h"
#import "BaseNucleoDelegate.h"
#import "NumberConst.h"

@interface Nucleo : Phosphate<BaseNucleoDelegate>
{
    @protected
    NSValue *_nucleoStruct;
}

@property (nonatomic) NucleoType type;
@property (nonatomic, readonly) NSInteger hookCount;
@property (nonatomic, readonly) NucleoBase nucleoClass;
@property (nonatomic, readonly) NSValue *nucleoStruct;

- (id)initWithType:(NucleoType)nucleoType;
- (NSString *)nucleoInfo;
+ (double)NucleoTotal;
@end
