/// @description Path, Health, Alarm 0

// Sets path
action_path(pth_enemies, global.enemySpeed, 1, 0);
// Sets enemy health
enemyHealth = 3;
// Sets alarm for 
action_set_alarm(random_range(15,120), 0);
