keyLeft = -keyboard_check(ord("A")); 
keyRight = keyboard_check(ord("D")); 
keyJump = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_space);



script_execute(state);

