// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerMove(){
	
	

//Movement

move = keyLeft + keyRight; 
hsp = move * moveSpeed; 

if (vsp < 10) { vsp += grav; }

if (place_meeting(x, y + 1, oWall)) { vsp = keyJump * -jumpSpeed }

if (place_meeting(x + hsp, y, oWall)) { while (!place_meeting(x + sign(hsp), y, oWall)) { x += sign(hsp); } hsp = 0; } x += hsp;

if (place_meeting(x, y + vsp, oWall)) { while (!place_meeting(x, y + sign(vsp), oWall)) { y += sign(vsp); } vsp = 0; } y += vsp;
	
//Animate

dir = point_direction(x, y, mouse_x, mouse_y);



if (hsp == 0 && vsp == 0) {
	
	image_speed = 0;	
	image_index = 0;
	
}

if (dir < 90 and dir > 0 or dir > 270 and dir < 360) { //Right
	
	
	sprite_index = sOrionRunRight;
	image_xscale = 1;
	image_speed = 0.5;
	
} else if (dir > 90 and dir < 270) { //Left 
	
	sprite_index = sOrionRunRight ;
	image_xscale = -1;
	image_speed = 0.5;
	
} 

rot = point_direction(x, y, mouse_x, mouse_y);

if mouse_check_button(mb_left) {
	if (spd < maxSpd) { 
		spd += 0.5
	}
}

if mouse_check_button_released(mb_left) {
arrow = instance_create_layer(x, y, "Instances", oArrow)
arrow.direction = rot;
arrow.image_angle = rot;
arrow.gravity = 1;
arrow.gravity_direction = 270; 
arrow.spd = spd

	with (arrow) {
		image_angle = direction - 90;
		motion_add(direction, spd)
		
	}
spd = 0
}


}
