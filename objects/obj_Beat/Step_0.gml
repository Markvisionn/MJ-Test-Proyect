	/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//Activar obstáculos Obstacle1 
	MoveKey=keyboard_check_pressed(vk_control);


//start movement's obstacles
if(MoveKey)
{
	if(global.Move==false) global.Move=true else global.Move=false;
}

//counting hand
scr_CountingHand();

//beat
	var dt =delta_time;	
	SumDelta+=dt;
	SumFullDelta+=dt;

	if (SumDelta>=BeatTimeMS) {
		global.beat=true;
		SumDelta -= BeatTimeMS
		audio_play_sound(Beep,11,false)
		with(instance_create_layer(x, y,"Instances",obj_vanish_GUI))
		{
			sprite_index=img_BeatMeter;
		}
		} else global.beat=false;

	//beat meter
	BeatProgress = sin((SumFullDelta/BeatTimeMS)*pi)
	if (abs(BeatProgress)<=beathitrange) global.beatchance =true else global.beatchance =false

	var char = obj_control.room_data[obj_control.current_room][index.mainchar];

//draw vanishing BeatBar
	if (char.InputMagnitude and obj_control.room_data[obj_control.current_room][index.mode]!=mode.move)
	{
		with(instance_create_layer(x, y,"Instances",obj_vanish_GUI))
		{
			sprite_index=img_BeatMeter;
		}
	}
	
		if (keyboard_check_pressed(ord("A")) and obj_control.room_data[obj_control.current_room][index.mode]==mode.move)
	{
		with(instance_create_layer(x, y,"Instances",obj_vanish_GUI))
		{
			sprite_index=img_BeatMeter;
		}
	}
