/// @description Desc.

randomize();
global.Game_Pause = false;
global.iCamera = instance_create_layer(0,0,layer,obj_Camera);
global.DrawText=false;

room_goto(ROOM_START);

//salas
global.currentroom=0;
room_count=3; //cambiar a lenght(room_data)

//Room data rooms index in Macros (enum) 
//room_data=[room_name, Music, BPM, obj_to_follow, room_mode,mainChar]
room_data = [
	[rm_TestAle, bgm_ForestTime, 126, obj_gato, mode.move,obj_gato],
    [rm_pelea,bgm_Feelings, 115, obj_control_fight , mode.fight,obj_Conde],
    [rm_Obstacle1,bgm_OneLove, 107,obj_CharGrid , mode.grid,obj_CharGrid]
];

//mute bin var
mute=0;