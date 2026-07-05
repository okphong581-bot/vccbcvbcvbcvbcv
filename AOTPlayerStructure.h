#import <Foundation/Foundation.h>

@interface AOTPlayerStructure : NSObject

@property (nonatomic, assign) uint64_t baseAddress;
@property (nonatomic, assign) float health;
@property (nonatomic, assign) float maxHealth;
@property (nonatomic, assign) BOOL isAlive;

@end
