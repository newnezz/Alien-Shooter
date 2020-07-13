/// @description Weapon 

action_set_relative(1);

//Creates weapon object
action_create_object(obj_enemy2Wep, 0, 10);
{
action_set_relative(0);
action_set_alarm(random_range(30,150), 0);
action_set_relative(1);
}

action_set_relative(0);
