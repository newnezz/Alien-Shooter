/// @description Burst Shots

// This runs 5 times
for (var i = 0; i < 5; i += 1) {
instance_create_layer(x + (sprite_width/2), y + (sprite_height+5), "Instances", obj_enemy3Wep); //broken?
}

// Alarm reset to go back through loop after random time between 15-300 steps
alarm_set(0,global.enemyFireRate);