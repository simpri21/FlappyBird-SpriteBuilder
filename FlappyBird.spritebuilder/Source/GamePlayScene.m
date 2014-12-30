#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild: character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // put update code here
    timeSinceObstacle += delta; // delta is the time between updates (approximately 1/60th of a second)
    if (timeSinceObstacle > 2.0f)
    {
        //Adds a new obstacle
        [self addObstacle];
        
        //then reset timer
        timeSinceObstacle = 0.0f;
    }
    
}

// put new methods here
- (void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    //this will get called every time a player touches a screen
    [character flap];
}

@end
