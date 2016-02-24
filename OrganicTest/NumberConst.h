//
//  NumberConst.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 15..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#ifndef OrganicTest_NumberConst_h
#define OrganicTest_NumberConst_h

typedef enum
{
    kAlkali_Metal = 10,
    kAlkali_EarthMetal = 11,
    kLanthanum = 12,
    kActinium = 13,
    kUltraActinium = 14,
    kTransition_Metal = 15,
    kPostTransition_Metal = 16,
    kMetalloid = 17,
    kNonmetal = 18,
    kHalogen = 19,
    kInertGas = 20
} ElementType;

//핵염기
typedef enum
{
    kAdenine = 100,
    kAdenosine = 101,
    kCytosine = 102,
    kCytidine = 103,
    kGuanine = 104,
    kGuanosine = 105,
    kThymine = 106,
    kMethylUridine = 107,
    kUracil = 108,
    kUridine = 109
} NucleoType;


//핵염기 계열
typedef enum
{
    kPurine = 200,
    kPyrimidine = 201
} NucleoBase;


//핵염기 변형
typedef enum
{
    kMutationType0 = 600,
    kMutationType1 = 601
} MutationType;


//효소 타입
typedef enum
{
    kKinase = 300,//인산화효소: 5탄당과 인산을 붙여주는 효소
    kPhosphatase = 301//인산화효소: 인산을 가수분해로 떼어내는 효소
} EnzymeType;


//뉴클레오티드 타입
//phosphate n, (chemical substance) 화학물질, 인산염 명
//monophosphate/diphosphate/triphosphate
typedef enum
{
    kNucleoside_Mono = 400,
    kNucleoside_Di = 401,
    kNucleoside_Tri = 402
} NucleotideType;


//리보솜 타입
typedef enum
{
    kRibosome_Small_Subunit = 500,
    kRibosome_Large_Subunit = 501
} RibosomeType;


#endif
