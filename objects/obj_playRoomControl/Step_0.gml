/// @description Enemy, Boss & Music Check
if !instance_exists(obj_enemy1) 
&& !instance_exists(obj_enemy2) 
&& !instance_exists(obj_boss1)
&& !instance_exists(obj_boss2)
&& !instance_exists(obj_boss3)
   {
   room_goto_next();
   }

// If Boss 1 is dead, increase health
if (global.boss1Alive == false) {
	global.maxHealth = 150;
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
// If not boss room, stop boss music, play main background music
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