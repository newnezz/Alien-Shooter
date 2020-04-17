/// @description Checks for Enemies
if !instance_exists(obj_enemy1) 
&& !instance_exists(obj_enemy2) 
&& !instance_exists(obj_boss1)
&& !instance_exists(obj_boss2)
   {
   room_goto_next();
   }


if (global.boss1Alive == false) {
	global.maxHealth = 150;
}

//Main Music
if audio_is_playing(snd_menuSong) {
    audio_stop_sound(snd_menuSong);
}

if (room == rm_world1_level5 || room == rm_world2_level5 
   || room == rm_world3_level5 || room == rm_world4_level5
   || room == rm_world5_level5) {
	   if audio_is_playing(snd_backgroundMusic){
		audio_stop_sound(snd_backgroundMusic);
	   }
	   if !audio_is_playing(snd_bossBattle){
		audio_play_sound(snd_bossBattle, 0, true);
	   }
}
else if !audio_is_playing(snd_backgroundMusic) {
    audio_play_sound(snd_backgroundMusic, 0, true);
}