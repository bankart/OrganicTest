//
//  StructConst.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 15..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "NumberConst.h"

#ifndef OrganicTest_StructConst_h
#define OrganicTest_StructConst_h

//Hydrogen: 수소
struct H {
    int count;
    int index;
    char *name;
    ElementType type;
};


//Carbon: 탄소
struct C {
    int count;
    int index;
    char *name;
    ElementType type;
};


//Oxygen: 산소
struct O {
    int count;
    int index;
    char *name;
    ElementType type;
};


//Phosphorus: 인
struct P {
    int count;
    int index;
    char *name;
    ElementType type;
};


//Nitrogen: 질소
struct N {
    int count;
    int index;
    char *name;
    ElementType type;
};


//Pontoes: 5탄당 C5H10O5
struct Pentoes {
    struct C carbon;
    struct H hydrogen;
    struct O oxygen;
    char *name;
};


//Adenine: 핵염기 아데닌 C5H5O5
struct Adenine {
    struct C carbon;
    struct H hydrogen;
    struct N nitrogen;
    char *name;
};


//Adenosine: 뉴클레오시드 아데노신 C10H13N5O4
struct Adenosine {
    struct Adenine adenine;
    struct Pentoes pentoes;
    char *name;
};


////DeoxyAdenosine: 디옥시뉴클레오시드 디옥시아데노신
//struct DeoxyAdenosine {
//    struct Adenine adenine;
//    struct Pentoes pentoes;
//};


//Guanine: 핵염기 구아닌 C5H5N5O
struct Guanine {
    struct C carbon;
    struct H hydrogen;
    struct N nigrogen;
    struct O oxygen;
    char *name;
};


//Guanosine: 뉴클레오시드 구아노신 C10H13N5O5
struct Guanosine {
    struct Guanine guanine;
    struct Pentoes pentoes;
    char *name;
};


//Thymine: 핵염기 티민 C5H6N2O2
struct Thymine {
    struct C carbon;
    struct H hygrogen;
    struct N nitrogen;
    struct O oxygen;
    char *name;
};


//Uracil: 핵염기 우라실 C4H4N2O2
struct Uracil {
    struct C carbon;
    struct H hygrogen;
    struct N nitrogen;
    struct O oxygen;
    char *name;
};


//Uridine: 뉴클레오시드 우리딘 C9H12N2O6
struct Uridine {
    struct Uracil uracil;
    struct Pentoes pentoes;
    char *name;
};


//Cytosine: 핵염기 시토신 C4H5N3O
struct Cytosine {
    struct C carbon;
    struct H hygrogen;
    struct N nitrogen;
    struct O oxygen;
    char *name;
};


//Cytidine: 뉴클레오시드 시티딘 C9H13N3O5
struct Cytidine {
    struct Cytosine cytosine;
    struct Pentoes pentoes;
    char *name;
};


//Phosphoric acid: 인산 H3PO4
struct PhosphoricAcid {
    struct H hydrogen;
    struct P phosphorus;
    struct O oxygen;
    char *name;
};



#endif
