global.userHitSprite = true;
health -= 50;

if (health == 0){
action_set_score(0);
action_kill_object();
action_restart_game();
}

