/// @description Score & Health

//Draws Score
action_draw_score(room_width/2, 15, "Score: ");
draw_text(room_width*.7, 15, "High Score: " + string(global.highScore));

//Draws Health
draw_healthbar(10,10,100,25, health, c_black, c_red, c_lime, 0, true, true);