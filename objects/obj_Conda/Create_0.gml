/// @description configs
randomize();
StartEndState=false;
image_speed = 0;
global.enemy_hit = true;
global.enemy_atk = false;
global.enemy_damage = 31;
time_attack = round(random_range(3,4));
attack_delay=0.5;

stance = EnemyStance.wait;
state="idle"; //state para script fightrhythmanimate
bits=5;
bits2=2;
bitcount=0;


// path sets
current_path = 0;
current_path_name="";
spd = 16;
endaction =	0;
absolute = 0;

//sprites
spr_atk1=spr_CondaATK1;
spr_atk2=spr_CondaATK2;
spr_atk3=spr_CondaATK3;
spr_atk4=spr_CondaATK4;
spr_dead=spr_CondaDead;
spr_hurt=spr_CondaHurt;
spr_idle=spr_CondaIdle;
