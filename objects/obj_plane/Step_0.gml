/// @description Movement, Sprite, Death


/** PLAYER MOVEMENT **/

// If Pressing Left Arrrow & Player is not to far left, move further to the left
if (keyboard_check(vk_left)) && !(x<sprite_width/2) {
	x -= global.baseSpeed;
}
// If Pressing Right Arrrow & Player is not to far right, move further to the right
if (keyboard_check(vk_right)) && !(x>(room_width-(sprite_width/2))) {
	x += global.baseSpeed;
}
// If Pressing Down Arrrow & Player is not to far down, move further down
if (keyboard_check(vk_down)) && !(y>(room_height-(sprite_height/2))) {
	y += global.baseSpeed;
}
// If Pressing Up Arrrow & Player is not to far up, move further up
if (keyboard_check(vk_up)) && !(y<sprite_height/2) {
	y -= global.boostSpeed;
	sprite_index = spr_planeBoost; //boost image
}
// Else if no key is pressed, dont move at all
if keyboard_check(vk_nokey) {
	action_move("000010000", 0);
}


/** HANDLES SPRITE CHANGING **/

// User not hit, player not boosting
if (global.userHitSprite == false && keyboard_check(vk_up) == false
 && global.playerAlive == true) {
	sprite_index = spr_plane;
} 
// User is hit,  player not boosting
else if (global.userHitSprite == true && keyboard_check(vk_up) == false
 && global.playerAlive == true) {
	sprite_index = spr_planeHit;
} 
// User is hit,  player is boosting
else if (global.userHitSprite == true && keyboard_check(vk_up) == true
 && global.playerAlive == true) {
	sprite_index = spr_planeBoostHit;
} 


/** CHECKS FOR DEATH **/

// Lost a life
if (health <= 0) {
	global.playerAlive = false;
	sprite_index = spr_nothing;
	instance_create(x,y,obj_explosion);
	alarm_set(2, room_speed * 3);
	global.playerLives--;
	health = 100;
}

// No more lives
if(global.playerLives<1) {
	// If high score, adds it to game
	if (score > global.highScore) {
		global.highScore = score;
		// Opens file, saves data, closes file
		ini_open("savedata.ini");
		ini_write_real("savegame", "score", global.highScore);
		ini_close();
	}
	// Score to 0, kills game
	action_set_score(0);
	action_kill_object();
	action_restart_game();
}