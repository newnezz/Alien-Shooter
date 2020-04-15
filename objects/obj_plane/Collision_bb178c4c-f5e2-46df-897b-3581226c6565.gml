// Takes away some health and shows sprite as hit
health -= 25;
global.userHitSprite = true;
alarm_set(1,30);

// When health is noting, score is reset, game is restarted
if (health == 0){
action_set_score(0);
action_kill_object();
action_restart_game();
}

