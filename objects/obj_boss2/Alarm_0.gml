/// @description Weapon Fires

instance_create(obj_boss2.x, obj_boss2.y+20, obj_boss2Wep);
alarm_set(0, global.enemyFireRate);