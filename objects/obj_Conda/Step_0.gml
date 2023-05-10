/// @description
FightRhythmAnimate();

if ( stance ==  EnemyStance.prepare)
{
	if (current_beat != global.BeatNumber)
	{
		current_beat=global.BeatNumber;
		move_on_path=true;
	}
	
	if (move_on_path==true)
	{
	//var _ishalfbeat=(global.beatprogress>=0.45)
	if (/*_ishalfbeat &&*/ move_on_path)
	{
		on_point = scr_FightEnemyMove();
		if (on_point /*and _ishalfbeat*/) move_on_path=false;
	}
	}
}

//idle state, wait for for certain beats to start attack
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
	global.enemy_atk = 1;
	global.enemy_hit = 0;
	if (global.beat=true) bitcount++;
	if (bits2==bitcount){
		bitcount=0;
		stance= EnemyStance.attack
		scr_ataque12();
}
	
}
if (stance== EnemyStance.endstance && StartEndState=true && position=1)
{
	alarm[0]=room_speed*attack_delay;
	StartEndState=false;
}
