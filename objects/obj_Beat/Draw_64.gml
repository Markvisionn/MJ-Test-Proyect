/// @description Draw BeatBar
// You can write your code in this editor

var a //scale
if global.beatchance{
	a=1.2
} else a=1

//draw yellow box range
var rangescale=(BarHalf*beathitrange)/(boxchancelenght*0.5)
draw_sprite_ext(img_BeatRange,0,x,y,1,rangescale,0,-1,1);

//draw_sprite(img_BeatBar,0,hpbar_x,hpbar_y)
draw_sprite(img_BeatBar,0,x,y)
draw_sprite_ext(img_BeatMeter, 0, x, y+BarHalf*BeatBarProgress,a, a, 0, -1, 1);
//draw_sprite(img_BeatMeter,0,x,y+BarHalf*BeatProgress)
draw_sprite_ext(spr_Heart,0,x,y,a,a,0,-1,1)

/*draw_text(2*room_width/3,  32, "y : "+string(BarHalf*(1-BeatProgress)))
draw_text(2*room_width/3,  32+16, string(y))
draw_text(2*room_width/3,  32+32, string(BeatProgress))
*/
if global.DrawText{
	draw_text(2*room_width/3,  32+32, string(BeatBarProgress));
	draw_text(x-16,y,string(bpm));
}
