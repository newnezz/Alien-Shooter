/// @description 3 hits 2 Kill

action_set_relative(1);

action_sound(snd_explosion, 0); // explosion sound
enemyHealth--; // reduces enemyhealth

// Enemy Dead
if enemyHealth == 0 {
	score += (50 * global.scoreRate);
	instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);
    instance_destroy();
    }
// Enemy hit but not dead yet
else if (enemyHealth < 3) {
	sprite_index = spr_enemy2Hit;
	alarm_set(1, 15);
}

action_set_relative(0);


