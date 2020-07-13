/// @description Destroys instance

action_set_relative(1);
action_sound(snd_explosion, 0); //sound
score += (25 * global.scoreRate); //score
action_kill_object();
action_set_relative(0);
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion); //animation
