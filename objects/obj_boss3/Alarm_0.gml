/// @description Weapon Fires

instance_create(obj_boss3.x, obj_boss3.y+20, obj_boss3Wep);
alarm_set(0, global.enemyFireRate);