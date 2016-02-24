//
//  RNA.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 19..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//
//  type: mRNA, tRNA, r(ibosome)RNA
//
//  codon: 
//  [U] 
//  UUU(페닐알라닌), UCU(세린), UAU(티로신), UGU(시스틴)
//  UUC(페닐알라닌), UCC(세린), UAC(티로신), UGC(시스틴)
//  UUA(류신), UCA(세린), UAA(종료), UGA(종료)
//  UUG(류신), UCG(세린), UAG(종료), UGG(트립토판)
//  [C]
//  CUU, CCU, CAU, CGU
//  CUC, CCC, CAC, CGC
//  CUA, CCA, CAA, CGA
//  CUG, CCG, CAG, CGG
//  [A]
//  AUU, ACU, AAU, AGU
//  AUC, ACC, AAC, AGC
//  AUA, ACA, AAA, AGA
//  AUG, ACG, AAG, AGG
//  [G]
//  CUU, CGU, GAU, GGU
//  GUC, GCC, GAC, GGC
//  GUA, GCA, GAA, GGA
//  GUG, GCG, GAG, GGG


#import "Phosphate.h"
#import "StructFactory.h"

@interface RNA : Phosphate

@end
