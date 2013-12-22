#import "TFBall.h"

@implementation TFBall

- (id)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        self.dynamicBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[self]];
        self.dynamicBehavior.allowsRotation = NO;
        self.dynamicBehavior.elasticity = 1.0;
        self.dynamicBehavior.friction = 0.0;
        self.dynamicBehavior.resistance = 0.0;
    }
    return self;
}

- (void)layoutSubviews {
    // Make the ball round, rather than square
    self.layer.cornerRadius = CGRectGetWidth(self.frame)/2;
}

- (void)setPaused:(BOOL)paused {
    _paused = paused;
    if (paused) {
        self.dynamicBehavior.resistance = 10000.f;
    } else {
        self.dynamicBehavior.resistance = 0;
    }
}

@end
