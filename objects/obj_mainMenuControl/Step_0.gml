/// @description Music & Cleanup

// Plays menu song
if !audio_is_playing(snd_menuSong) {
	audio_play_sound(snd_menuSong, 0, true)
}

// Removes plane after beating game from main menu
if instance_exists(obj_plane) { 
	instance_destroy(obj_plane); 
}
	