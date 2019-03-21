switch (state)
{
	case "move":
		#region Move State
		if keyboard_check(vk_right) and not place_meeting(x+4, y, o_wall)
		{
			x += 4;
			image_xscale = 1;
			sprite_index = s_skeleton_run_strip6;
			image_speed = 0.6;
		}

		if keyboard_check(vk_left) and not place_meeting(x-4, y, o_wall)
		{
			x -= 4;
			image_xscale = -1;
			sprite_index = s_skeleton_run_strip6;
			image_speed = 0.6;
		}

		if not keyboard_check(vk_right) and not keyboard_check(vk_left) 
		{
			sprite_index = s_skeleton_idle_strip3;
			image_speed = 0.4;
		}

		if keyboard_check_pressed(vk_space)
		{
			image_index = 0;
			state = "roll"
		}
		#endregion
		break;
	
	case "roll":
		#region Roll State 
		sprite_index = s_skeleton_roll_strip7;
		image_speed = 0.6
		
		if image_xscale == 1 and not place_meeting(x+4,y,o_wall)
		{
			x += 6;  
		}  
 
		if image_xscale == -1 and not place_meeting(x-4,y,o_wall)
		{
			x -= 6;
		}
		
		#endregion
		break;

}
	

		

	  
	