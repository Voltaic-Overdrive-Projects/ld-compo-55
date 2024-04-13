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

