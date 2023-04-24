/// @description create 

image_speed = 0;
image_index = 1;
walk_speed = 2;
dash_speed = 6;
distance_dash = 64;
hSpeed = 0;
vSpeed = 0;
CollisionMap = layer_tilemap_get_id(layer_get_id("Col"));
state = CharMove;
memory_direction = 0;

InputMagnitude =0;

//sprites
sprchardown=spr_char_down;
sprcharleft=spr_char_left;
sprcharup=spr_char_up;
sprcharright=spr_char_right;

MirrorWalkSprite=false;