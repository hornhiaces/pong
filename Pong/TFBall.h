#import <UIKit/UIKit.h>

@interface TFBall : UIView

/** The UIKit Dynamics animation behaviors (its weight, etc) */
@property (strong, nonatomic) UIDynamicItemBehavior *dynamicBehavior;

@property (assign, nonatomic) BOOL paused;

@end
