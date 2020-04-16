/// @description Movement & Sprite
// You can write your code in this editor

/** Player Movement **/
// No Key Down
if (keyboard_check(vk_nokey)) {
	action_move("000010000", 0); //stops movement
}
// Left Key Down
if (keyboard_check(vk_left)) {
	action_move("000100000", baseSpeed); // move left
}
// Right Key Down
if (keyboard_check(vk_right)) {
	action_move("000001000", baseSpeed); //move right
}
// Down Key Down
if (keyboard_check(vk_down)) {
	action_move("010000000", baseSpeed); //move down
}
// Up Key Down
if (keyboard_check(vk_up)) {
	action_move("000000010", boostSpeed);//move up, higher speed
	sprite_index = spr_planeBoost; //boost image
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