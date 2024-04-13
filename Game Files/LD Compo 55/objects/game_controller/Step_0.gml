if (spawn_timer == 0){
	call_later(3, time_source_units_seconds, function(){ 
		instance_create_layer(random_range(0, 960), random_range(0, 540), "Instances", enemy_object);
	});	
	spawn_timer = 35;
}

spawn_timer -= 1;