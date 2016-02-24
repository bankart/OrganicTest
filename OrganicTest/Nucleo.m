//
//  Nucleo.m
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 14..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//

#import "Nucleo.h"
#import "StringConst.h"
#import "StructFactory.h"

static double nucleoCount = 0.0f;
static double kNucleo_CountLimit = 6000000000.0;
static NSInteger kError_LimitCode = 1000;

static NSString *const kErrorDomain = @"3dasu.nucleo";


@implementation Nucleo
@synthesize hookCount = _hookCount, nucleoClass = _nucleoClass, type;
@synthesize nucleoStruct;

+ (double)NucleoTotal
{
    return nucleoCount;
}

- (id)init
{
    if( nucleoCount < kNucleo_CountLimit) {
        nucleoCount++;
        if( (int)nucleoCount - (INT_MAX-1) == 0 ) {
            NSLog(@"totalCount: %f", nucleoCount);
        }
    } else {
        NSError *error = [[NSError alloc] initWithDomain:kErrorDomain
                                                    code:kError_LimitCode
                                                userInfo:[NSDictionary dictionaryWithObject:@"can't make nucleo anymore!!" forKey:NSLocalizedDescriptionKey]];
        @throw error;
    }
    
    if( [super init] ) {
        
    }
    return self;
}

- (id)initWithType:(NucleoType)nucleoType
{
    if( [self init] ) {
        self.type = nucleoType;
    }
    return self;
}


- (void)setType:(NucleoType)value
{
    type = value;
    switch (type) {
        case kAdenine: case kAdenosine:
            _nucleoClass = kPurine;
            _hookCount = 1;
            break;
        case kCytosine: case kCytidine: 
            _nucleoClass = kPyrimidine;
            _hookCount = 2;
            break;
        case kGuanine: case kGuanosine:
            _nucleoClass = kPurine;
            _hookCount = 1;
            break;
        case kThymine:// case kMethylUridine:
            _nucleoClass = kPyrimidine;
            _hookCount = 2;
            break;
        case kUracil: case kUridine:
            _nucleoClass = kPyrimidine;
            _hookCount = 2;
            break;
            
        default:
            break;
    }
    _nucleoStruct = [StructFactory getPhosphate:type];
}


- (NSString *)nucleoInfo
{
    NSMutableString *info = [NSMutableString stringWithString:@""];
    /*
     struct foo newFoobar;
     
     if (strcmp([boxedFoobar objCType], @encode(struct foo)) == 0)
     [boxedFoobar getValue:&newFoobar];
     */
    
    if( _nucleoStruct ) {
        struct Adenine adenine;
        struct Adenosine adenosine;
        struct Cytosine cytosine;
        struct Cytidine cytidine;
        struct Guanine guanine;
        struct Guanosine guanosine;
        struct Thymine thymine;
        struct Uracil uracil;
        struct Uridine uridine;
        
        if( strcmp([_nucleoStruct objCType], @encode(struct Adenine)) == 0 ) {
            
            [_nucleoStruct getValue:&adenine];
            [info appendFormat:@"%@", [NSString stringWithUTF8String:adenine.name]];
            
        } else if( strcmp([_nucleoStruct objCType], @encode(struct Adenosine)) == 0 ) {
            
            [_nucleoStruct getValue:&adenosine];
            [info appendFormat:@"%@", [NSString stringWithUTF8String:adenosine.name]];
            
        } else if( strcmp([_nucleoStruct objCType], @encode(struct Cytosine)) == 0 ) {
            
            [_nucleoStruct getValue:&cytosine];
            [info appendFormat:@"%@", [NSString stringWithUTF8String:cytosine.name]];
            
        } else if( strcmp([_nucleoStruct objCType], @encode(struct Cytidine)) == 0 ) {
            
            [_nucleoStruct getValue:&cytidine];
            [info appendFormat:@"%@", [NSString stringWithUTF8String:cytidine.name]];
            
        } else if( strcmp([_nucleoStruct objCType], @encode(struct Guanine)) == 0 ) {
            
            [_nucleoStruct getValue:&guanine];
            [info appendFormat:@"%@", [NSString stringWithUTF8String:guanine.name]];
            
        } else if( strcmp([_nucleoStruct objCType], @encode(struct Guanosine)) == 0 ) {
            
            [_nucleoStruct getValue:&guanosine];
            [info appendFormat:@"%@", [NSString stringWithUTF8String:guanosine.name]];
            
        } else if( strcmp([_nucleoStruct objCType], @encode(struct Thymine)) == 0 ) {
            
            [_nucleoStruct getValue:&thymine];
            [info appendFormat:@"%@", [NSString stringWithUTF8String:thymine.name]];
            
        } else if( strcmp([_nucleoStruct objCType], @encode(struct Uracil)) == 0 ) {
            
            [_nucleoStruct getValue:&uracil];
            [info appendFormat:@"%@", [NSString stringWithUTF8String:uracil.name]];
            
        } else if( strcmp([_nucleoStruct objCType], @encode(struct Uridine)) == 0 ) {
            
            [_nucleoStruct getValue:&uridine];
            [info appendFormat:@"%@", [NSString stringWithUTF8String:uridine.name]];
            
        }
    } else {
        [info appendFormat:@"unknown"];
    }
    
    
    
    return info;
    
}

- (NSString *)description
{
    NSMutableString *desc = [NSMutableString stringWithFormat:@"\n%@", [super description]];
    [desc appendFormat:@"\n염기 정보: %@", [self nucleoInfo]];
    [desc appendFormat:@"\n연결 고리 수: %i", _hookCount];
    [desc appendFormat:@"\n염기 계열: %@", ( _nucleoClass == kPurine )?NUCLEO_BASE_PURINE:NUCLEO_BASE_PYRIMIDINE];
    return desc;
}

@end
