/// @description Score, Health, Lives, Pause

if (room!=rm_winScreen) {
	
	//Draws Score
	action_draw_score(room_width/2, 15, "Score: ");
	draw_text(room_width*.7, 15, "High Score: " + string(global.highScore));

	//Draws Health
	draw_healthbar(10, 10, global.maxHealth+10, 25, (health/global.maxHealth) * 100, c_black, c_red, c_lime, 0, true, true);
	draw_text((global.maxHealth/2)-5, 30, string(health));

	//Lives
	draw_text(10, room_height*.9, "Lives: " + string(global.playerLives));

}

/** PRESS TAB TO PAUSE GAME **/
if keyboard_check_pressed(vk_tab) {
   paused = !paused;
}
if(paused) {
   instance_deactivate_all(1);
   draw_text(room_width/2, room_height/2, "PAUSED");
}
else {
   instance_activate_all();
}