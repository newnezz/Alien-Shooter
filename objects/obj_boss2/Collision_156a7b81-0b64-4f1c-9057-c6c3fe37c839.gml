/// @description Boss Damage

// Reduces Health
global.boss2Health --;

// Kills Boss
if (global.boss2Health<1) {
	instance_destroy();
}

// Sound Effect
if (global.boss2Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

// Damage Visual
if (global.boss2Health%10 == 0) {
	sprite_index = spr_boss2Hit;
	alarm_set(1, 60);
}