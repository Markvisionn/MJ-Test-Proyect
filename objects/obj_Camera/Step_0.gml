/// @description Update Camera
if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//update object position
x += (xTo -x) /15;
y += (yTo -y) /15;

//Keep camera center inside room
x = clamp(x,ViewWidthHalf, room_width-ViewWidthHalf);
y = clamp(y,ViewHeightHalf, room_height-ViewHeightHalf);

// screenshake
x += random_range(-ShakeRemain,ShakeRemain);
y += random_range(-ShakeRemain,ShakeRemain);

ShakeRemain= max(0, ShakeRemain - ((1/ShakeLenght)*ShakeMagnitude));

camera_set_view_pos(cam,x-ViewWidthHalf,y-ViewHeightHalf);

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
camera_set_view_mat(cam,vm);
