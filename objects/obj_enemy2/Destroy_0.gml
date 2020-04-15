/// @description Chance 2 drop health

// sets var from 1-10 randomly
dropCheck = floor(random_range(1, 10 + 1));

// 1/10 chance to drop health
if (dropCheck == 1) {
	instance_create(x,y,obj_health);
}