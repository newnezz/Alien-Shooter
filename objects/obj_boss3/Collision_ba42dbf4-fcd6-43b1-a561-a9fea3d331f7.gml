/// @description Boss Damage

// Reduces Health
global.boss3Health --;

// Kills Boss
if (global.boss3Health<1) {
	instance_destroy();
}

// Sound Effect
if (global.boss3Health%5 == 0) {
	audio_play_sound(snd_explosion, 1, false);
}

// Damage Visual
if (global.boss3Health%10 == 0) {
	sprite_index = spr_boss3Hit;
	alarm_set(1, 60);
}