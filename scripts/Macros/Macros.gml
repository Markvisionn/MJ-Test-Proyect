function Macros() {
#macro TILE_SIZE 16
#macro CARDINAL round(InputDirection/90)
#macro ROOM_START rm_TestAle
#macro MEDIOX room_width/2
#macro MEDIOY room_height/2

//battle
enum EnemyStance{
	prepare,
	attack,
	wait,
	hit,
	endstance
}

//general
enum Sala{
	TestMove,
	fight,
	Obstacles	
}
enum index{
	name,
	music,
	bpm,
	follow,
	mode,
	mainchar
}
enum mode{
	move,
	grid,
	fight
}
}