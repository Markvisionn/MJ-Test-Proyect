function scr_ataque1() {
	randomize();
	ataque = choose(1,2,3,4);
	switch (ataque)
	{
		case 1:
		path_start(pth_DL1, spd, endaction ,absolute);
		current_path=pth_DL1;
		break;
	
		case 2:
		path_start(pth_M1,spd,endaction,absolute);
		current_path=pth_M1;
		break;
	
		case 3:
		path_start(pth_UD1, spd,endaction,absolute);
		current_path=pth_UD1;
		break;
	
		case 4:
		path_start(pth_UL1,spd, endaction,absolute);
		current_path=pth_UL1;
		break;
	}
}