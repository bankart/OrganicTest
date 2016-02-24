//
//  Ribosome.h
//  OrganicTest
//
//  Created by lee taehoon on 12. 6. 20..
//  Copyright (c) 2012년 __MyCompanyName__. All rights reserved.
//
//  small subunit ribosome에 mRNA가 결합 > large subunit ribosome결합 > amino acid와 결합된 tRNA가 리보솜과 결합 > 
//  결합되어 있는 tRNA의 amino acid와 상보적 결합을 이룰 수 있는 안티코돈을 가지는 tRNA가 ribosome에 결합하면 amino acid들 간 수소결합이 일어나면서
//  tRNA와의 결합은 해제되어 먼저 결합되어 있던 tRNA는 amino acid가 탈락된 채 ribosome밖으로 배출
//  종료코돈이 유입될때까지 위의 과정이 반복
//  종료코돈 유입 이후 전사되어진 코돈들의 다발이 단백질이 된다.

#import "Phosphate.h"
#import "NumberConst.h"

@interface Ribosome : Phosphate

@property (nonatomic, readonly) RibosomeType type;
- (id)initWithType:(RibosomeType)type;

@end
