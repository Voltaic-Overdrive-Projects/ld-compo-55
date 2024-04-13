/// player movements.
if keyboard_check(ord("A")){
	x -= player_speed;
}

if keyboard_check(ord("D")){
	x += player_speed;
}

if keyboard_check(ord("W")){
	y -= player_speed;
}

if keyboard_check(ord("S")){
	y += player_speed;
}

if(arrow_reset <= 0){
	if keyboard_check(vk_right){
		var shootItem = instance_create_layer(x, y-16, "Instances", arrow_object);
		arrow_reset = 25;
		with(shootItem){
			speed = 15;
			direction = 0;
		}
	}

	if keyboard_check(vk_up){
		var shootItem = instance_create_layer(x-16, y, "Instances", arrow_object);
		arrow_reset = 25;
		with(shootItem){
			speed = 15;
			direction = 90;
			image_angle = 90;
		}
	}

	if keyboard_check(vk_left){
		var shootItem = instance_create_layer(x, y+16, "Instances", arrow_object);
		arrow_reset = 25;
		with(shootItem){
			speed = 15;
			direction = 180;
			image_angle = 180;
		}
	}

	if keyboard_check(vk_down){
		var shootItem = instance_create_layer(x+16, y, "Instances", arrow_object);
		arrow_reset = 25;
		with(shootItem){
			speed = 15;
			direction = 270;
			image_angle = 270;
		}
	}	
}

// Depending on what the player needs, they can summon it below.
if keyboard_check_pressed(ord("1")){
	if(player_sway >= 75){
		instance_create_layer(random_range(0, 960), random_range(0, 540), "Instances", heart_item);
		player_sway -= 75;
		audio_play_sound(snd_spawn_item, 10, false);
	}
}

if keyboard_check_pressed(ord("2")){
	if(player_sway >= 50){
		instance_create_layer(random_range(0, 960), random_range(0, 540), "Instances", armor_item);
		player_sway -= 50;
		audio_play_sound(snd_spawn_item, 10, false);
	}
}

if keyboard_check_pressed(ord("3")){
	if(player_sway >= 10){
		instance_create_layer(random_range(0, 960), random_range(0, 540), "Instances", coin_item);
		player_sway -= 10;
		audio_play_sound(snd_spawn_item, 10, false);
	}
}

arrow_reset -= 1;

// Keep player on the screen.
x=clamp(x, 0, room_width-16);
y=clamp(y, 0, room_height-16);

// Check for object collisions.
if place_meeting(x, y, summon_item){
	player_sway += round(random_range(5, 50));
	audio_play_sound(snd_sway_get, 10, false);
}

if place_meeting(x, y, heart_item){
	player_health += round(random_range(1, 15));
	audio_play_sound(snd_health_get, 10, false);
}

if place_meeting(x, y, coin_item){
	player_score += round(random_range(10, 75));
	audio_play_sound(snd_coin_get, 10, false);
}

if place_meeting(x, y, armor_item){
	player_armor += round(random_range(1, 15));
	audio_play_sound(snd_armor_get, 10, false);
}

// Keeps items in check.
if player_health > 100{
	player_health = 100;	
}

if player_armor > 100{
	player_armor = 100;	
}

if playaer_armor < 0{
	player_armor = 0;	
}