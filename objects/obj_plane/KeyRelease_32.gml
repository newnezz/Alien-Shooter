/// @description Shoot wep

action_set_relative(0);
var __b__;
__b__ = action_if(canShoot);
if __b__
{
{
canShoot = false;
{
action_set_relative(1);
action_create_object(obj_planeWep1, 0, -15);
action_set_relative(0);
}
action_sound(snd_pew, 0);
alarm_set(0, global.shootingRate)
}
}
action_set_relative(0);
