/// @description Start Music& beats
// You can write your code in this editor

global.beatchance=false;
global.beat=false;
SumDelta=0;
SumFullDelta=0;
BeatProgress=0;
current_music = obj_control.room_data[obj_control.current_room][index.music];
current_bpm = obj_control.room_data[obj_control.current_room][index.bpm];
bpm=current_bpm;
BeatTimeMS=((60)/bpm)*1000000
audio_play_sound(current_music, 10, true);

