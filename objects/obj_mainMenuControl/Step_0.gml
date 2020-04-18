/// @description Insert description here
// You can write your code in this editor

// If main song or credit song is playing, stops it
if audio_is_playing(snd_backgroundMusic) {
    audio_stop_sound(snd_backgroundMusic);
}
if audio_is_playing(snd_creditMusic) {
	audio_stop_sound(snd_creditMusic);
}

// Plays menu song
if !audio_is_playing(snd_menuSong) {
	audio_play_sound(snd_menuSong, 0, true)
}

// Removes plane after beating game from main menu
if (room==rm_first_menu) {
	if instance_exists(obj_plane) { instance_destroy(obj_plane); }
}
	