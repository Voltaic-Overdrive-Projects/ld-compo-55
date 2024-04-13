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

// Keep player on the screen.
x=clamp(x, 0, room_width-16);
y=clamp(y, 0, room_height-16);

// Check for object collisions.
if place_meeting(x, y, summon_item){
	player_sway += round(random_range(5, 50));
}

if place_meeting(x, y, heart_item){
	player_health += round(random_range(5, 25));
}

if place_meeting(x, y, coin_item){
	player_score += round(random_range(10, 75));
}

if place_meeting(x, y, armor_item){
	player_armor += round(random_range(3, 20));
}

// Keeps items in check.
if player_health > 100{
	player_health = 100;	
}

if player_armor > 100{
	player_armor = 100;	
}