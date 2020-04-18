/// @description Movement & Sprite
// You can write your code in this editor

/** Player Movement **/

// If Pressing Left Arrrow & Player is not to far left, move further to the left
if (keyboard_check(vk_left)) && !(x<sprite_width/2) {
	x -= baseSpeed;
}
// If Pressing Right Arrrow & Player is not to far right, move further to the right
if (keyboard_check(vk_right)) && !(x>(room_width-(sprite_width/2))) {
	x += baseSpeed;
}
// If Pressing Down Arrrow & Player is not to far down, move further down
if (keyboard_check(vk_down)) && !(y>(room_height-(sprite_height/2))) {
	y += baseSpeed;
}
// If Pressing Up Arrrow & Player is not to far up, move further up
if (keyboard_check(vk_up)) && !(y<sprite_height/2) {
	y -= boostSpeed;
	sprite_index = spr_planeBoost; //boost image
}
// Else if no key is pressed, dont move at all
if keyboard_check(vk_nokey) {
	action_move("000010000", 0);
}


/** Handles Sprite Changing **/
// User not hit, player not boosting
if (global.userHitSprite == false && keyboard_check(vk_up) == false) {
	sprite_index = spr_plane;
} 
// User is hit,  player not boosting
else if (global.userHitSprite == true && keyboard_check(vk_up) == false) {
	sprite_index = spr_plane_hit;
} 
// User is hit,  player is boosting
else if (global.userHitSprite == true && keyboard_check(vk_up) == true) {
	sprite_index = spr_planeBoostHit;
} 


//Check for death
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