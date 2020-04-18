/// @description Next Room Cheat

// If room is not menus, win screen or last level,
// just goes to next room
if(room!=rm_world5_level5 && room!=rm_first_menu 
   && room!=rm_chooseDiff && room!=rm_winScreen) {
	room_goto_next();
} 
// If last level, goes to win screen
else if (room == rm_world5_level5) {
	room_goto(rm_winScreen);
}