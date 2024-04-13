//Draws the hud.
draw_set_alpha(1);
draw_set_colour(c_white);
draw_sprite_ext(heart_icon, -1, 160, 480, 2, 2, 0, c_white, 0.75);
draw_sprite_ext(armor_icon, -1, 320, 480, 2, 2, 0, c_white, 0.75);
draw_sprite_ext(Summon_Icon, -1, 480, 480, 2, 2, 0, c_white, 0.75);
draw_sprite_ext(coin_icon, -1, 640, 480, 2, 2, 0, c_white, 0.75);
draw_text(202, 485, player_health);
draw_text(362, 485, player_armor);
draw_text(522, 485, player_sway);
draw_text(682, 485, player_score);