/// @description Insert description here
// You can write your code in this editor
global.boss1Health --;

// Kills him once health is gone
if (global.boss1Health<1) {
	instance_destroy();
	score += 500;
}

// Every five hits, makes a sound
if (global.boss1Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

// Every 10 hits, flashes to indicate he is hurt
if (global.boss1Health%10 == 0) {
	sprite_index = spr_boss1_hit;
	alarm_set(1, 60);
}