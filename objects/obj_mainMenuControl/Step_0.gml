/// @description Insert description here
// You can write your code in this editor

// If main song is playing, stops it
if audio_is_playing(snd_backgroundMusic) {
    audio_stop_sound(snd_backgroundMusic);
}

// Plays menu song
if !audio_is_playing(snd_menuSong) {
	audio_play_sound(snd_menuSong, 0, true)
}