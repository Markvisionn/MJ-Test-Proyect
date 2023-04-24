/// @description states,animate,dodge,*hit
// You can write your code in this editor

	Izquierda=keyboard_check_pressed(vk_left);
	Derecha=keyboard_check_pressed(vk_right);
	Arriba=keyboard_check_pressed(vk_up);
	Abajo=keyboard_check_pressed(vk_down);

//change image index through rhythm

	FightRhythmAnimate();

// Check for key pressed
	InputMagnitude=(Izquierda||Derecha||Abajo||Arriba);


//change states

	if (state="idle" && global.beatchance){
		if(Izquierda+Arriba+Abajo==1 && Derecha==0){
			if Izquierda x_to=x-dodge_distance;
			if Arriba y_to=y-dodge_distance;
			if Abajo y_to=y+dodge_distance;
			state="dodge";
		}
		if(Izquierda+Arriba+Abajo==0 && Derecha){
			image_index=0;
			sprite_index=spr_atk1;
			x_to=x+attack_distance;
			state="attack";
		}
	}

	if (state =="dodge"){
		x+=min(abs(x_to-x),dodge_speed)*sign(x_to-x);
		y+=min(abs(y_to-y),dodge_speed)*sign(y_to-y);
		if (sign(x_to-x)==0 and sign (y_to-y)==0){
			delay=dodge_delay
			start_delay=true;
			state="delay";
		}
	}

	if (state=="delay" && start_delay=true){
		start_delay=false;
		alarm[0]=room_speed*delay
	}
	if (state=="attack"){
		x+=min(abs(x_to-x),dodge_speed)*sign(x_to-x);
		if (sign(x_to-x)==0 and image_speed=0){
			delay=attack_delay
			start_delay=true;
			state="delay";
		}
	}