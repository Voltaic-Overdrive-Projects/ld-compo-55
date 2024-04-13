mp_linear_step(player_object.x, player_object.y, 1.5, false);

if place_meeting(x, y, player_object){
	if(random_spawn <= 25){
		instance_create_layer(x, y, "Instances", summon_item);
	}
	if(random_spawn > 25){
		instance_create_layer(x, y, "Instances", coin_item);
	}
	
	if(player_object.player_armor > 0){
		player_object.player_health -= 5;	
		player_object.player_armor -= 5;
	}
	if(player_object.player_armor <= 0){
		player_object.player_health -= 10;	
	}
	audio_play_sound(snd_player_hurt, 10, false);
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