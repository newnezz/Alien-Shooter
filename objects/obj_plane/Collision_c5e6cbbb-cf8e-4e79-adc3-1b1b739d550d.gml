/// @description Increases Shooting Speed

// If you havent killed boss 2, works normal
if (global.boss2Alive == true) {
	// Rate higher then 10?
	if global.shootingRate >=10 {
		global.shootingRate -= 5;
	}
	// Rate lower then 10?
	else {
		global.shootingRate = 5;
	}
}

// If you have killed the boss, works differently
if (global.boss2Alive == false) {
	global.shootingRate = 3.5;
}

alarm_set(3, room_speed * 15);