/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Keep track of the current room and its associated data
current_music = obj_control.room_data[obj_control.current_room][index.music];
current_bpm = obj_control.room_data[obj_control.current_room][index.bpm];
// set bpm
bpm=current_bpm;

BeatTimeMS=((60)/bpm)*1000000
global.beatchance=false;
global.beat=false;
global.Move=false;	

// range to beatchance
beathitrange=0.60;

//BeatProgress
SumDelta=0; //para global beat
SumFullDelta=0; //para bar meter
BeatProgress=0;


// Barra HP
BeatBarLenght = 216;
BarHalf=BeatBarLenght/2;
boxchancelenght=50;