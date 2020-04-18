/// @description Weapon Fires

instance_create_layer(x + (sprite_width/2), y + (sprite_height+10), "Instances", obj_boss1Wep);
alarm_set(0, random_range(15,45));