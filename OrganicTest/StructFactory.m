//
//  StructFactory.m
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 16..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "StructFactory.h"

//Hydrogen: 수소
static inline struct H HydrogenMake()
{
    struct H hydrogen;
    hydrogen.count = 1;
    hydrogen.index = 1;
    hydrogen.name = "Hydrogen";
    hydrogen.type = kNonmetal;
    return hydrogen;
}


//Carbon: 탄소
static inline struct C CarbonMake()
{
    struct C carbon;
    carbon.count = 1;
    carbon.index = 6;
    carbon.name = "Carbon";
    carbon.type = kNonmetal;
    return carbon;
}


//Oxygen: 산소
static inline struct O OxygenMake()
{
    struct O oxygen;
    oxygen.index = 8;
    oxygen.count = 1;
    oxygen.name = "Oxygen";
    oxygen.type = kNonmetal;
    return oxygen;
}


//Phosphorus: 인
static inline struct P PhosphorusMake()
{
    struct P phosphorus;
    phosphorus.index = 15;
    phosphorus.count = 1;
    phosphorus.name = "Phosphorus";
    phosphorus.type = kNonmetal;
    return phosphorus;
}


//Nitrogen: 질소
static inline struct N NitrogenMake()
{
    struct N nitrogen;
    nitrogen.index = 7;
    nitrogen.count = 1;
    nitrogen.name = "Nitrogen";
    nitrogen.type = kNonmetal;
    return nitrogen;
}


//Pontoes: 5탄당 C5H10O5
static inline struct Pentoes PentoesMake()
{
    struct Pentoes pentoes;
    pentoes.name = "Penttoes";
    pentoes.carbon = CarbonMake();
    pentoes.carbon.count = 5;
    pentoes.hydrogen = HydrogenMake();
    pentoes.hydrogen.count = 10;
    pentoes.oxygen = OxygenMake();
    pentoes.oxygen.count = 5;
    return pentoes;
}
//산소 하나 탈락
static inline struct Pentoes DeoxyriboseMake()
{
    struct Pentoes pentoes;
    pentoes.name = "DeoxyriboPenttoes";
    pentoes.carbon = CarbonMake();
    pentoes.carbon.count = 5;
    pentoes.hydrogen = HydrogenMake();
    pentoes.hydrogen.count = 10;
    pentoes.oxygen = OxygenMake();
    pentoes.oxygen.count = 4;
    return pentoes;
}
//산소/수소 위치 역전
static inline struct Pentoes RiboseMake()
{
    struct Pentoes pentoes;
    pentoes.name = "DeoxyriboPenttoes";
    pentoes.carbon = CarbonMake();
    pentoes.carbon.count = 5;
    pentoes.hydrogen = HydrogenMake();
    pentoes.hydrogen.count = 10;
    pentoes.oxygen = OxygenMake();
    pentoes.oxygen.count = 4;
    return pentoes;
}

//Adenine: 핵염기 아데닌 C5H5O5
static inline struct Adenine AdenineMake()
{
    struct Adenine adenine;
    adenine.name = "Adenine";
    adenine.carbon = CarbonMake();
    adenine.carbon.count = 5;
    adenine.hydrogen = HydrogenMake();
    adenine.hydrogen.count = 5;
    adenine.nitrogen = NitrogenMake();
    adenine.nitrogen.count = 5;
    return adenine;
}


//Adenosine: 뉴클레오시드 아데노신 C10H13N5O4
static inline struct Adenosine AdenosineMake()
{
    struct Adenosine adenosine;
    adenosine.name = "Adenosine";
    adenosine.adenine = AdenineMake();
    adenosine.pentoes = PentoesMake();
    return adenosine;
}


////DeoxyAdenosine: 디옥시뉴클레오시드 디옥시아데노신
//static inline struct DeoxyAdenosine DeoxyAdenosineMake()
//{
//    struct DeoxyAdenosine deoxyAdenosine;
//    deoxyAdenosine.adenine = AdenineMake();
//    deoxyAdenosine.pentoes = DeoxyriboPentoesMake();
//    return deoxyAdenosine;
//}


//Guanine: 핵염기 구아닌 C5H5N5O
static inline struct Guanine GuanineMake()
{
    struct Guanine guanine;
    guanine.name = "Guanine";
    guanine.carbon = CarbonMake();
    guanine.carbon.count = 5;
    guanine.hydrogen = HydrogenMake();
    guanine.hydrogen.count = 5;
    guanine.nigrogen = NitrogenMake();
    guanine.nigrogen.count = 5;
    guanine.oxygen = OxygenMake();
    return guanine;
}


//Guanosine: 뉴클레오시드 구아노신 C10H13N5O5
static inline struct Guanosine GuanosineMake()
{
    struct Guanosine guanosine;
    guanosine.name = "Guanosine";
    guanosine.guanine = GuanineMake();
    guanosine.pentoes = PentoesMake();
    return guanosine;
}


//Thymine: 핵염기 티민 C5H6N2O2
static inline struct Thymine ThymineMake()
{
    struct Thymine thymine;
    thymine.name = "Thymine";
    thymine.carbon = CarbonMake();
    thymine.carbon.count = 5;
    thymine.hygrogen = HydrogenMake();
    thymine.hygrogen.count = 6;
    thymine.nitrogen = NitrogenMake();
    thymine.nitrogen.count = 2;
    thymine.oxygen = OxygenMake();
    thymine.oxygen.count = 2;
    return thymine;
}


//Uracil: 핵염기 우라실 C4H4N2O2
static inline struct Uracil UracilMake()
{
    struct Uracil uracil;
    uracil.name = "Uracil";
    uracil.carbon = CarbonMake();
    uracil.carbon.count = 4;
    uracil.hygrogen = HydrogenMake();
    uracil.hygrogen.count = 4;
    uracil.nitrogen = NitrogenMake();
    uracil.nitrogen.count = 2;
    uracil.oxygen = OxygenMake();
    uracil.oxygen.count = 2;
    return uracil;
}


//Uridine: 뉴클레오시드 우리딘 C9H12N2O6
static inline struct Uridine UridineMake()
{
    struct Uridine uridine;
    uridine.name = "Uridine";
    uridine.uracil = UracilMake();
    uridine.pentoes = PentoesMake();
    return uridine;
}


//Cytosine: 핵염기 시토신 C4H5N3O
static inline struct Cytosine CytosineMake()
{
    struct Cytosine cytosine;
    cytosine.name = "Cytosine";
    cytosine.carbon = CarbonMake();
    cytosine.carbon.count = 4;
    cytosine.hygrogen = HydrogenMake();
    cytosine.hygrogen.count = 5;
    cytosine.nitrogen = NitrogenMake();
    cytosine.nitrogen.count = 3;
    cytosine.oxygen = OxygenMake();
    return cytosine;
}


//Cytidine: 뉴클레오시드 시티딘 C9H13N3O5
static inline struct Cytidine CytidineMake()
{
    struct Cytidine cytidine;
    cytidine.name = "Cytidine";
    cytidine.cytosine = CytosineMake();
    cytidine.pentoes = PentoesMake();
    return cytidine;
}


//Phosphoric acid: 인산 H3PO4
static inline struct PhosphoricAcid PhosphoricAcidMake()
{
    struct PhosphoricAcid phosphoricAcid;
    phosphoricAcid.hydrogen = HydrogenMake();
    phosphoricAcid.hydrogen.count = 3;
    phosphoricAcid.phosphorus = PhosphorusMake();
    phosphoricAcid.oxygen = OxygenMake();
    phosphoricAcid.oxygen.count = 4;
    return phosphoricAcid;
}



@implementation StructFactory

+ (NSValue *)getPhosphate:(NucleoType)type
{
    NSValue *nucleoValue = nil;
    
    switch (type) {
            
        case kAdenine:
        {
            struct Adenine nucleo = [self Adenine];
            nucleoValue = [NSValue valueWithBytes:&nucleo objCType:@encode(struct Adenine)];
            break;
        }
        
        case kAdenosine:
        {
            struct Adenosine nucleo = [self Adenosine];
            nucleoValue = [NSValue valueWithBytes:&nucleo objCType:@encode(struct Adenosine)];
            break;
        }
           
        case kCytosine:
        {
            struct Cytosine nucleo = [self Cytosine];
            nucleoValue = [NSValue valueWithBytes:&nucleo objCType:@encode(struct Cytosine)];
            break;
        }
        
        case kCytidine:
        {
            struct Cytidine nucleo = [self Cytidine];
            nucleoValue = [NSValue valueWithBytes:&nucleo objCType:@encode(struct Cytidine)];
            break;
        }
            
        case kGuanine:
        {
            struct Guanine nucleo = [self Guanine];
            nucleoValue = [NSValue valueWithBytes:&nucleo objCType:@encode(struct Guanine)];
            break;
        }
            
        case kGuanosine:
        {
            struct Guanosine nucleo = [self Guanosine];
            nucleoValue = [NSValue valueWithBytes:&nucleo objCType:@encode(struct Guanosine)];
            break;
        }
            
        case kThymine:
        {
            struct Thymine nucleo = [self Thymine];
            nucleoValue = [NSValue valueWithBytes:&nucleo objCType:@encode(struct Thymine)];
            break;
        }
            
        case kUracil:
        {
            struct Uracil nucleo = [self Uracil];
            nucleoValue = [NSValue valueWithBytes:&nucleo objCType:@encode(struct Uracil)];
            break;
        }
            
        case kUridine:
        {
            struct Uridine nucleo = [self Uridine];
            nucleoValue = [NSValue valueWithBytes:&nucleo objCType:@encode(struct Uridine)];
            break;
        }
            
        default:
            break;
    }
    
    return nucleoValue;
}


+ (struct Adenine)Adenine
{
    return AdenineMake();
}

+ (struct Adenosine)Adenosine
{
    return AdenosineMake();
}

+ (struct Guanine)Guanine
{
    return GuanineMake();
}

+ (struct Guanosine)Guanosine
{
    return GuanosineMake();
}

+ (struct Thymine)Thymine
{
    return ThymineMake();
}

+ (struct Uracil)Uracil
{
    return UracilMake();
}

+ (struct Uridine)Uridine
{
    return UridineMake();
}

+ (struct Cytosine)Cytosine
{
    return CytosineMake();
}

+ (struct Cytidine)Cytidine
{
    return CytidineMake();
}

+ (struct PhosphoricAcid)PhosphoricAcid
{
    return PhosphoricAcidMake();
}




@end
