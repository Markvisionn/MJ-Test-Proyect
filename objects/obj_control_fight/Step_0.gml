/// @description pause
if (keyboard_check_released(vk_space))
{
	with(obj_enemy1)
	{
		if(path_speed=8)
		{
			path_speed = 0;
		}
		else
		{
			path_speed=8
		}
	}
}
if (keyboard_check_released(vk_enter))
{
	game_restart()
}
