local_var = 10;
switch (state)
{
	case "move":
		#region Move State
		if keyboard_check(vk_right) 
		{
			move_and_collide(4, 0);
			image_xscale = 1;
			sprite_index = s_skeleton_run_strip6;
			image_speed = 0.6;
		}

		if keyboard_check(vk_left) 
		{
			move_and_collide(-4,0);
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
			state = "roll"
		}
		#endregion
		break;
	
	case "roll":
		#region Roll State 
		set_state_sprite(s_skeletin_roll,0.7,0);
		if image_xscale == 1
		{
		move_and_collide(roll_speed,0);
		{
		
		if image_xscale == -1
		{
		 move_and_collide(-roll_speed,0);
		}		
		#endregion
		break;

	case "attack one":
		#region Attack On State
		set_state_sprite(s_skeleton_attack_one_strip5, 0.7, 0);
		
		if keyboard_check_pressed(vk_lcontrol) and animation_hit_frame_range(2, 4)
		{
			state = "attack two";
		}
		#endregion
		break;
		
		case "attack two":
			#region Attack Two State
			set_state_sprite(s_skeleton_attack_two_strip5, 0.7,0);
			
			if keyboard_check_pressed(vk_lcontrol) and animation_hit_frame_range(2,4)
			{
				state = "attack three";
			}
			#endregion
			break;

		case "attack three":
			#region Attack Three State
			set_state_sprite(s_skeleton_attack_three_strip6, 0.7, 0);
			#endregion
}