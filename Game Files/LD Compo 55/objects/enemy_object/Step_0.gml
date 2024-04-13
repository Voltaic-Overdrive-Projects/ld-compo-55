mp_linear_step(player_object.x, player_object.y, 0.75, 1);

if place_meeting(x, y, player_object){
	instance_destroy();
}