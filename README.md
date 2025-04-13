# LayerDemonstration
Done with Godot 4.3, should run on other version but if needed: [godotengine.org](https://godotengine.org/download/archive/) and take the 4.3-stable.

Clone this repo then open it with godot, with the import Button.
Then you can run it.

To update comportement, of the projectile for example, go to his area and check/uncheck Collision->Mask layers 2 or 3.
With layer 2 checked: projectile will interact with player
With layer 3 checked: projectile will interact with enemy

The enemy has no shape, if you want to make him collide with the wall, you deen to add a collision shape 2D to the enemy, as the one in player, and be sur to set the layer mask of the enemy to 1, as the one in player. 