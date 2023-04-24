/// @description Insert description here
// You can write your code in this editor
draw_self();

if (global.DrawText){

	draw_text(x-16,y+32+16,string(bitcount));
	draw_text(x-16,y+64,string(stance));
	draw_text(x-16,y+64+16,string(position));
	draw_text(x-16,y+64+32,string(current_path_name));
}