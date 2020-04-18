/// @description Enemy, Boss & Music Check
if !instance_exists(obj_enemy1) 
&& !instance_exists(obj_enemy2) 
&& !instance_exists(obj_boss1)
&& !instance_exists(obj_boss2)
&& !instance_exists(obj_boss3)
&& !instance_exists(obj_boss4)
&& !instance_exists(obj_boss5)
&& room!=rm_winScreen
   {
   room_goto_next();
   }

// Logic for Win Game Room
if (room==rm_winScreen) {
	// Gets rid of drops
	if instance_exists(obj_extraPoints) { instance_destroy(obj_extraPoints); }
	if instance_exists(obj_extraLife) { instance_destroy(obj_extraLife); }
	if instance_exists(obj_health) { instance_destroy(obj_health); }
	// Saves High Score if greater then current high score
	if (score > global.highScore) {
		global.highScore = score;
		// Opens file, saves data, closes file
		ini_open("savedata.ini");
		ini_write_real("savegame", "score", global.highScore);
		ini_close();
	}
}


/** MUSIC HANDLING DURING PLAY ROOMS **/
// Stops main menu music if playing
if audio_is_playing(snd_menuSong) {
    audio_stop_sound(snd_menuSong);
}

// If boss room, stop main background music, play boss music 
if (room == rm_world1_level5 || room == rm_world2_level5 
   || room == rm_world3_level5 || room == rm_world4_level5
   || room == rm_world5_level5) 
   {
	// Is main background music playing? If so, stop it
	   if audio_is_playing(snd_backgroundMusic) {
		audio_stop_sound(snd_backgroundMusic);
	   }
	// Is boss music playing? If not, play it!
	   if !audio_is_playing(snd_bossBattle){
		audio_play_sound(snd_bossBattle, 0, true);
	   }
}
// Else if Win Room, stop boss music, play win song
else if (room=rm_winScreen) {
	audio_stop_sound(snd_bossBattle);
	if !audio_is_playing(snd_creditMusic) {
		audio_play_sound(snd_creditMusic, 0, true);
	}
}
// If not boss room or win room stop boss music, play main background music
else {
	// Is boss music playing? If so, stop it
	if audio_is_playing(snd_bossBattle) {
		audio_stop_sound(snd_bossBattle);
	}
	// Is main background music playing? If not, play it!
	if !audio_is_playing(snd_backgroundMusic) {
		audio_play_sound(snd_backgroundMusic, 0, true);
	}
}