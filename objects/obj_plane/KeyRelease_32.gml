action_set_relative(0);
var __b__;
__b__ = action_if(canShoot);
if __b__
{
{
canShoot = false;
{
action_set_relative(1);
action_create_object(obj_baseShot, 0, -15);
action_set_relative(0);
}
action_sound(snd_yelloBeam, 0);
action_set_alarm(1, 0);
}
}
action_set_relative(0);
