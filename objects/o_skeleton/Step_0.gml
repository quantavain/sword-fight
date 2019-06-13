
switch (state)
{
	case "move":
		#region Move State
		if input.right 
		{
			move_and_collide(run_speed, 0);
			image_xscale = 1;
			sprite_index = s_skeleton_run_strip6;
			image_speed = 0.6;
		}

		if input.left
		{
			move_and_collide(-run_speed, 0);
			image_xscale = -1;
			sprite_index = s_skeleton_run_strip6;
			image_speed = 0.6;
		}

		if not input.right and not input.left
		{
			sprite_index = s_skeleton_idle_strip3;
			image_speed = 0.4;
		}

		if input.roll
		{
			state = "roll";
		}
		
		if input.attack
		{
			state = "attack one"
		}
		#endregion
		break;
		
	
	case "roll":
		#region Roll State 
		set_state_sprite(s_skeletin_roll,0.7,0);
		if image_xscale == 1
		{
		move_and_collide(roll_speed,0);
		}
		
		if image_xscale == -1
		{
		 move_and_collide(-roll_speed,0);
		}		
		#endregion
		break;

	case "attack one":
		#region Attack On State
		set_state_sprite(s_skeleton_attack_one_strip5, 0.7, 0);
		
		if input.attack and animation_hit_frame_range(2, 4)
		{
			state = "attack two";
		}
		#endregion
		break;
		
		case "attack two":
			#region Attack Two State
			set_state_sprite(s_skeleton_attack_two_strip5, 0.7,0);
			
			if input.attack and animation_hit_frame_range(2,4)
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