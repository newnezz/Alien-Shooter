/// @description Not working

// If you've beaten the 4th boss, and your shield is gone
// You'll get a new shield upon the room creation
if (global.boss4Alive == false) && !instance_exists(obj_planeShield) {
	instance_create(obj_plane.x, obj_plane.y-10, obj_planeShield);
}



/**
//If lives are 3
if(global.playerLives==3) {
	draw_clear_alpha(c_red, 0);
draw_sprite(spr_heart, 0, 10, room_height*.9);
draw_sprite(spr_heart, 0, 60, room_height*.9);
draw_sprite(spr_heart, 0, 110, room_height*.9);
}
//if lives are 2
else if(global.playerLives==2) {
	draw_clear_alpha(c_red, 0);
draw_sprite(spr_heart, 0, 10, room_height*.9);
draw_sprite(spr_heart, 0, 60, room_height*.9);
}
//if lives are 1
else {
	draw_clear_alpha(c_red, 0);
	draw_sprite(spr_heart, 0, 10, room_height*.9);
}
**/