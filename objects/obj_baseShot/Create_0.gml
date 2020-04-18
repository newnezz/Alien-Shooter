action_move("000000010", 15);

// If Boss 3 is defeated, bullets are larger
if (global.boss3Alive == false) {
	image_yscale += 1;
	image_xscale += 1;
}