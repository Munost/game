dir = point_direction(x, y, mouse_x, mouse_y);
image_angle = dir;

if (dir < 45 and dir > 0 or dir < 360 and dir > 315) { //Right
	
	x = oPlayer.x;
	y = oPlayer.y;
	
	image_yscale = 1;
	
} else if (dir < 135 and dir > 45) { //Up
	
	x = oPlayer.x;
	y = oPlayer.y;
	
	image_yscale = -1;
	
} else if (dir < 225 and dir > 135) { //Left
	
	x = oPlayer.x;
	y = oPlayer.y;
	
	image_yscale = -1;
		
} else if (dir < 315 and dir > 225) { //Down
	
	x = oPlayer.x;
	y = oPlayer.y;
	image_yscale = -1;
	
}

