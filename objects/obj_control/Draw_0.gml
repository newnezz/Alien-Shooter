/// @description Score, Health, Lives

//Draws Score
action_draw_score(room_width/2, 15, "Score: ");
draw_text(room_width*.7, 15, "High Score: " + string(global.highScore));

//Draws Health
draw_healthbar(10,10,100,25, health, c_black, c_red, c_lime, 0, true, true);

//Lives
draw_text(10, room_height*.9, "Lives: " + string(global.playerLives));
