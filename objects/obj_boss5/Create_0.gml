/// @description Path, Alarm0, BossHealth

// Sets Path
path_start(pth_boss, global.enemySpeed, path_action_reverse, false);
// Sets Alarm for shooting weapon
alarm_set(0, random_range(15,45));
// Sets Boss Health
global.boss5Health = 100;