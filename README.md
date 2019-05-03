# Shape Drop
Shape drops is a simple iOS applciation that simulates shapes falling and colliding with each other upon a users interaction. The applciation makes use of many standard Swift libraries to simulate these falling objects.

## iOS Swift Libraries
* UIDynamicAnimator
* UIGravityBehavior
* UICollisionBehavior

### The Implementation

Each object spawns from the interaction of a UITapGestureRecognizer. Each shape is initiated with a UIDynamicAnimator which then have a UIGravityBehavior & UICollisionBehavior added to them. Each one of these animated objects are added to the reference view which is then bounded by the frame of the screen.
<br/>

<a target="_blank"><img align = "left" width = "600" height = "400" src="http://i63.tinypic.com/123mihs.png" border="0" alt="Data Flow"></a>
<a target="_blank"><img align = "left" width = "230" height = "400" src="https://user-images.githubusercontent.com/27150848/37168566-4514fada-22d3-11e8-95ef-7ad57aa26d12.gif" border="0" alt="Data Flow"></a>
