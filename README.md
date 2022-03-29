# Project 04—2D Platformer

A somewhat-generic 2D platformer built in Godot. Includes 5 levels, 2 types of enemies, and collectable jewels

## Implementation
Built using Godot 3.4.2

The player sprite is adaptated from [MV Platformer Male](https://opengameart.org/content/mv-platformer-male-32x64) by MoikMellah. CC0 Licensed.

The player's sword sprite is adapted from [MV Platformer Weapon Set (Animated)] (https://opengameart.org/content/mv-platformer-weapon-set-animated) by MoikMellah. CC0 Licensed.

The terrain spritemap is from the Abstract Platformer package available at Kenney.nl.

The bat sprite was originally created by bagzie for Stendhal and was reworked by AntumDeluge.

The turret was created by Jason Francis and used with permission.

The pathfinding code was adapted from the good work done by FEDEOD: https://github.com/FEDE0D/godot-pathfinding2d-demo. Special thanks goes to GDQuest for their excellent pathfinding tutorial: https://www.gdquest.com/tutorial/godot/2d/navigation2d-tilemap-pathfinding/.

Animated jewel sprite made by myself

## References
None

## Future Development
None

## Extra Credit
-Modified supplied wall-jump action to improve experience (action only intiated if player is actively moving in direction of wall to help prevent accidentally sticking to wall and added a limit to the amount of time the player can stick to a wall).
-Multiple levels.
-Later levels are more complex/difficulty in each level is higher than the last.
-Two enemy types (five total enemies).
-Collectable jewels with animated sprites
-Menu with continue, save/load, and quit options (saving and loading has its own menu, which is accessed from the main menu).
-Player can go directly from either menu back to the game by hitting the menu button again.
-Save/load menu has three save slots and a button that leads back to the main menu. These slots are functionally separate and do not affect each other. They also do not allow jewels to be harvested by abusing saves.
-Saves can be overwritten or deleted once created.
-Game automatically searches for existing saves everytime it starts.
-Saves contain the player's level, jewels, lives, and precise location at the time of saving, as well as the time the save is made. The level, jewels, lives, and save time are displayed in the save/load menu when hovering the cursor over the save slot they belong to.
-Game starts in main menu and has different end screens for "winning" and "dying". Menu "play" button changes to "continue" after starting game.
-Added ability to attack. This is directional, so the player can't hit something they aren't facing. If this is done in midair, the player's movement is canceled momentarily and, if a double-jump was possible, the second jump is disabled. Likewise, if the player has already double-jumped, an attack is not possible until the player hits the ground again.
-Controls are listed in main menu and saving/loading is explained in save/load menu




## Created by 
Jonathan Barger