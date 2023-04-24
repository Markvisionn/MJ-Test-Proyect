/// @description
FightRhythmAnimate();
position= path_position;
if  (position == 0.5)
{
	global.enemy_atk = 1;
	global.enemy_hit = 0;
	path_speed = 64;
}

//stop in every point of path
current_path_name=path_get_name(current_path)
var points =path_get_number(current_path)
var obj_x=path_get_x(current_path,position);
var obj_y=path_get_y(current_path,position);

if (points>2){
	for (var i = 1; i < points ; i += 1)
	{
		var pointx=path_get_point_x(current_path,i);
		var pointy=path_get_point_y(current_path,i);
		pointdirection=point_direction(obj_x,obj_y,pointx,pointy);
		pointdistance=point_distance(obj_x,obj_y,pointx,pointy);
		if (pointdistance<path_speed and pointdirection=direction)
		{
			breakpoints=10;
			path_speed=pointdistance;
		}
		if (obj_x==pointx and obj_y ==pointy)
		{

			if (global.beat) path_speed=spd else path_speed = 0;
		}
	}
}

if (stance== EnemyStance.prepare && position =1)
{
stance= EnemyStance.attack
}

if (stance ==  EnemyStance.wait)
{
	if (global.beat=true) bitcount++;
	if (bits==bitcount)
	{
		 bitcount=0;
		 stance=  EnemyStance.prepare;
		 scr_ataque1();
	}
}
if (stance ==  EnemyStance.attack)
{
	if (global.beat=true) bitcount++;
	if (bits2==bitcount){
		bitcount=0;
		stance= EnemyStance.attack
		scr_ataque12();
}
	
}
if (stance== EnemyStance.endstance && StartEndState=true && position=1){
	alarm[0]=room_speed*attack_delay;
	StartEndState=false;
}
