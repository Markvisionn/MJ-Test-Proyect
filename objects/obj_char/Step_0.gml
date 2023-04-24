/// @description walk
// Input teclado
Izquierda = (keyboard_check(vk_left));
Derecha = (keyboard_check(vk_right));
Arriba = (keyboard_check(vk_up));
Abajo = (keyboard_check(vk_down));
Activar = (keyboard_check_pressed(vk_space));
Dash = (keyboard_check_pressed(ord("A")));

// definir direccion
InputDirection = point_direction(0,0, Derecha - Izquierda, Abajo-Arriba);
InputMagnitude = (Derecha-Izquierda != 0) || (Abajo - Arriba != 0);

if (!global.Game_Pause)
{
	script_execute(state);
}