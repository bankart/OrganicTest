//
//  Nucleocide.m
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 15..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "Nucleotide.h"
#import "Constants.h"
#import "NumberConst.h"
#import "Nucleo.h"
#import "StructFactory.h"
#import "ProteinKinase.h"


#define kPhosphoricAcidLimit 3
#define kDefinition_RNAcase 2
#define kDefinition_DNAcase 3

@interface Nucleotide (private)
- (void)glycosideBond;
@end

@implementation Nucleotide
@synthesize phosphateType = _phosphateType;
@synthesize nucleo = _nucleo;
@synthesize definitionType = _definitionType;



- (void)setDefinitionType:(enum NucleoDefinitionType)value
{
    _definitionType = value;
    [StructFactory Cytidine];
    switch (_definitionType) {
            
        case kRNAType:
        {
            NucleoType nucleoType[] = {kThymine, kUridine};
            _nucleo = [[Nucleo alloc] initWithType:nucleoType[arc4random()%kDefinition_RNAcase]];
            _glicocideBonds = [[NSMutableArray alloc] initWithCapacity:kPhosphoricAcidLimit];
            break;
        }
            
            
        case kDNAType:
        {
            NucleoType nucleoType[] = {kAdenosine, kCytidine, kGuanosine};
            _nucleo = [[Nucleo alloc] initWithType:nucleoType[arc4random()%kDefinition_DNAcase]];
            _glicocideBonds = [[NSMutableArray alloc] initWithCapacity:kPhosphoricAcidLimit];
            break;
        }
        
        case kMultiType:
        {
            NucleoType nucleoType[] = {kAdenosine, kCytidine, kGuanosine, kThymine, kUridine};
            _nucleo = [[Nucleo alloc] initWithType:nucleoType[arc4random()%(kDefinition_DNAcase+kDefinition_RNAcase)]];
            _glicocideBonds = [[NSMutableArray alloc] initWithCapacity:kPhosphoricAcidLimit];
            break;
        }
            
        default:
            break;
    }
}



- (id)init
{
    if( [super init] ) {
        self.definitionType = kMultiType;
    }
    return self;
}



- (id)initWithType:(enum NucleoDefinitionType)type
{
    if( [super init] ) {
        self.definitionType = type;
    }
    return self;
}


- (void)executePhosphateChain:(NucleotideType)chainType
{
    _phosphateType = chainType;
    int elementCount = 0;
    switch (_phosphateType) {
        case kNucleoside_Mono:
            _name = NUCLEOSIDE_MONOPHOSPHATE;
            elementCount = 1;
            break;
        case kNucleoside_Di:
            _name = NUCLEOSIDE_DIPHOSPHATE;
            elementCount = 2;
            break;
        case kNucleoside_Tri:
            _name = NUCLEOSIDE_TRIPHOSPHATE;
            elementCount = 3;
            break;
        default:
            break;
    }
    
    struct PhosphoricAcid pa;
    NSMutableArray *elements = nil;
    for (int i=0; i<elementCount; i++) {
        pa = [StructFactory PhosphoricAcid];
        elements = [NSArray arrayWithObjects:[NSValue value:&pa withObjCType:@encode(struct PhosphoricAcid)], [[ProteinKinase alloc] init], nil];
        [_glicocideBonds addObject:elements];
    }
}


- (void)executeHydrogenChain:(Nucleo *)element
{
    if( _nucleo.type != element.type ) {
        
    }
}

- (NSString *)description
{
    NSMutableString *desc = [NSMutableString stringWithFormat:@"\n%@", [super description]];
    [desc appendFormat:@"\nname: %@", _name];
    [desc appendFormat:@"\nnucleo: %@", _nucleo];
    [desc appendFormat:@"\nglicocideBond: count=%i(phosphoricAcid, proteinKinase)", _glicocideBonds.count];
    return desc;
}

@end
