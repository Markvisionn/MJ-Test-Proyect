/// @description
FightRhythmAnimate();
if(keyboard_check_pressed(ord("D"))) perreo=10;

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
	if (bitcount==bits)
	{
		 bitcount=0;
		 stance=  EnemyStance.prepare;
		 scr_ataque1();
	}
}
if (stance ==  EnemyStance.attack)
{
	if (!collided)
	{
		global.enemy_atk = true;
		global.enemy_hit = false;
	}
	
	if (!attacking)
	{
		if (global.beat=true) bitcount++;
		if (bitcount=bits2)
		{
			bitcount=0;
			scr_ataque1p2();
			attacking= true;
		}
	}
	if (attacking) scr_FightEnemyMove();
}
if (stance== EnemyStance.endstance && StartEndState=true)
{
	alarm[0]=room_speed*attack_delay;
	StartEndState=false;
}
if (stance == EnemyStance.hit)
{
	alarm[0]=room_speed*hurt_delay;
}