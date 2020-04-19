/// @description Initial Room Setup

// If you've beaten the 4th boss, and your shield is gone
// You'll get a new shield upon the room creation
if (global.boss4Alive == false) && !instance_exists(obj_planeShield) {
	instance_create(obj_plane.x, obj_plane.y-10, obj_planeShield);
}

paused = false;