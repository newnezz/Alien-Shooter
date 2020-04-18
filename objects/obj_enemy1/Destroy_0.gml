/// @description Handles Drops

// Gets random number between 1-100
dropCheck = floor(random_range(1, 100 + 1));

/** Each instance should only drop one **/
// Drop for extra life 1%
if (dropCheck <=1) {
	instance_create(x,y,obj_extraLife);
}
// Drop for Health 3%
else if (dropCheck <= 4) {
	instance_create(x,y,obj_health);
}
// Drop extra points 5%
else if (dropCheck <=9) {
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



