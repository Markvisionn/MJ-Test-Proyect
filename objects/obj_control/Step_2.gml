/// @description Pause

if (keyboard_check_pressed(ord("P")))
{
	global.Game_Pause = !global.Game_Pause;

	if (global.Game_Pause)
	{
		with(all)
		{
			GamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	}
	else 
	{
		with(all)
		{
			image_speed = GamePausedImageSpeed;
			
		}	
	}
}