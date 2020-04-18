/// @description Insert description here
// You can write your code in this editor

// Sets up coordinates only when plane exists
if instance_exists(obj_plane) {
	x = obj_plane.x;
	y = obj_plane.y - 10 ;
} else { instance_destroy(); }

if (global.shieldHealth <= 0) {
	instance_destroy();
}