mp_linear_step(player_object.x, player_object.y, 0.75, 1);

if place_meeting(x, y, player_object){
	if(random_spawn <= 50){
		instance_create_layer(x, y, "Instances", summon_item);
	}
	if(random_spawn > 50){
		instance_create_layer(x, y, "Instances", coin_item);
	}
	instance_destroy();
}

if place_meeting(x, y, arrow_object){
	if(random_spawn <= 50){
		instance_create_layer(x, y, "Instances", summon_item);
	}
	if(random_spawn > 50){
		instance_create_layer(x, y, "Instances", coin_item);
	}
	instance_destroy(arrow_object);
	instance_destroy();
}