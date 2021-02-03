draw_sprite_ext(sBow, -1, oPlayer.x, oPlayer.y, 1, 1, oPlayer.rot, c_white, 1);

bar = oPlayer.spd * 5
if (mouse_check_button(mb_left)) {
	draw_healthbar(oPlayer.x - 10, oPlayer.y - 40, oPlayer.x + 10, oPlayer.y - 35, bar, c_gray, c_red, c_red, 1, true, true);
}
//draw_line(oPlayer.x+lengthdir_x(44, oPlayer.rot)+lengthdir_x(24, oPlayer.rot+90), oPlayer.y+lengthdir_y(44, oPlayer.rot)+lengthdir_y(24, oPlayer.rot+90), oPlayer.x+lengthdir_x(44-oPlayer.spd/5, oPlayer.rot)+lengthdir_x(0, oPlayer.rot), oPlayer.y+lengthdir_y(44-oPlayer.spd/5, oPlayer.rot)+lengthdir_y(0, oPlayer.rot));
//draw_line(oPlayer.x+lengthdir_x(44, oPlayer.rot)+lengthdir_x(24, oPlayer.rot-90), oPlayer.y+lengthdir_y(44, oPlayer.rot)+lengthdir_y(24, oPlayer.rot-90), oPlayer.x+lengthdir_x(44-oPlayer.spd/5, oPlayer.rot)+lengthdir_x(0, oPlayer.rot), oPlayer.y+lengthdir_y(44-oPlayer.spd/5, oPlayer.rot)+lengthdir_y(0, oPlayer.rot));