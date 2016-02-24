//
//  Nucleocide.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 15..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//
//  뉴클레오시드(Nucleoside)는 핵염기와 오탄당이 N-글리코시드결합을 이룬 화합물이다.

#import "Phosphate.h"
#import "ChainDelegate.h"
#import "StructConst.h"

enum NucleoDefinitionType {
    kRNAType,
    kDNAType,
    kMultiType
};

@class Nucleo;
@interface Nucleotide : Phosphate<ChainDelegate>
{
    NSMutableArray *_phosphoricAcids;
    NSMutableArray *_glicocideBonds;
    enum NucleoDefinitionType _definitionType;
}
@property (nonatomic, readonly) Nucleo *nucleo;
@property (nonatomic, readonly) NucleotideType phosphateType;
@property (nonatomic) enum NucleoDefinitionType definitionType;

- (id)initWithType:(enum NucleoDefinitionType)type;

@end
