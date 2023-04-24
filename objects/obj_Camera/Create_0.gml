/// @description Set up Camera
cam = camera_create();
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(640,480,1,10000);

camera_set_view_mat(cam, vm);
camera_set_proj_mat(cam, pm);
view_camera[0] = cam;

follow = obj_gato;
ViewWidthHalf = camera_get_view_width(cam)*0.5;
ViewHeightHalf = camera_get_view_height(cam)*0.5;
xTo = xstart;
yTo = ystart;

ShakeLenght = 0;
ShakeMagnitude = 0;
ShakeRemain = 0;

