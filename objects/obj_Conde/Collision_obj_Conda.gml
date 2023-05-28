/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.enemy_hit) 
{
	with(obj_Conda)
	{
		stance=EnemyStance.hit;
		hp-=obj_Conde.DMG;
			if (hp<0 and obj_Conde.debugswitch) 
	{
		obj_Conde.debugswitch=false;
		breakpointo=10;
	}
	}
}

if (global.enemy_atk)
{
	state="hit";
	hp-=obj_Conda.DMG;
	global.enemy_atk=false;

		
}