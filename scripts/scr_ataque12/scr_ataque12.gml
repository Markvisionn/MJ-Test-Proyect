function scr_ataque12() {
	// parte 2 ataque 1
	global.enemy_atk = 1;
	global.enemy_hit = 0;
	spd2=spd*2;

	switch(ataque)
	{
		case 1:
		path_start(pth_ADL,spd2,endaction,absolute);
		break;
	
		case 2:
		path_start(pth_AM,spd2,endaction,absolute);
		break;
	
		case 3:
		path_start(pth_AUD,spd2,endaction,absolute);
		break;
	
		case 4:
		path_start(pth_AUL,spd2,endaction,absolute);
		break;
	}
stance= EnemyStance.endstance;
StartEndState=true;

}
