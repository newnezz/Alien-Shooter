/// @description Handles Drops

// Gets random number between 1-100
dropCheck = floor(random_range(1, 100 + 1));

/** Each instance should only drop one **/
// Drop for extra life 2%
if (dropCheck <=2) {
	instance_create(x,y,obj_extraLife);
}
// Drop for Health 5%
else if (dropCheck <= 7) {
	instance_create(x,y,obj_health);
}
// Drop extra points 8%
else if (dropCheck <=15) {
	instance_create(x,y,obj_extraPoints);
} 
// Drop for Speed Boost 3%
else if (dropCheck <= 12) {
	instance_create(x,y,obj_speedBoost);
}
// Drop for Shoot Increase 3%
else if (dropCheck <= 15) {
	instance_create(x,y,obj_shootFaster);
}
