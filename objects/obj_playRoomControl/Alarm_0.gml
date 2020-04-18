/// @description Play Sounds when Dead

if !audio_is_playing(snd_death) {
	audio_play_sound(snd_death, 0, false);
}