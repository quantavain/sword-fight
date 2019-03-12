
if keyboard_check(vk_right)
{
	x+= 4;
sprite_index = s_skeleton_run_strip6;
image_speed = 0.6;
}

if keyboard_check(vk_left)
{
	x -=4;
image_xscale = 1;
sprite_index = s_skeleton_run_strip6
image_speed = 0.6;
}

if not keyboard_check(vk_right) and not keyboard_check(vk_left) 
{
sprite_index = s_skeleton_idle_strip3;
image_speed = 0.6;
}