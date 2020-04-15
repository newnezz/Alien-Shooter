/// @description Checks if enemies exist
if !instance_exists(obj_enemy1) 
&& !instance_exists(obj_enemy2) 
&& !instance_exists(obj_boss1)
&& !instance_exists(obj_boss2)
   {
   room_goto_next();
   }

