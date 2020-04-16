/// @description Checks for Enemies
if !instance_exists(obj_enemy1) 
&& !instance_exists(obj_enemy2) 
&& !instance_exists(obj_boss1)
&& !instance_exists(obj_boss2)
   {
   room_goto_next();
   }


if (global.boss1Alive == false) {
	global.maxHealth = 150;
}