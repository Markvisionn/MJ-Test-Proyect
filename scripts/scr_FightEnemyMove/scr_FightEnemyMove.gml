// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function scr_FightEnemyMove(){

var _xTo,_yTo;

_xTo=path_get_point_x(current_path,point_to_go);
_yTo=path_get_point_y(current_path,point_to_go);


//
var _distance,_actualdistance;

_distance=point_distance(xi,yi,_xTo,_yTo);
_actualdistance=point_distance(x,y,_xTo,_yTo);

var _BPM,_time,_speed,_direction;

//set speed based on bpm
_BPM = obj_Beat.current_bpm;
_time = ((60/_BPM)*room_speed);
_speed = (_distance/_time)*2;//twice of speed
_direction= point_direction(xi,yi,_xTo,_yTo);


if(_actualdistance<=_speed)
{
	//match speed to distance remaining
	_speed=_actualdistance;			
}

x+=lengthdir_x(_speed,_direction);
y+=lengthdir_y(_speed,_direction);


if(_actualdistance==0)
{
	breakpoint=14
	//if reached the last point, attack stance
	var _numpoints=path_get_number(current_path)-1;
	if(point_to_go==_numpoints)
	{
		stance=EnemyStance.attack;
	} else
	{
		xi=x;
		yi=y;
		point_to_go++;
		return true;
	}
}else return false;
}