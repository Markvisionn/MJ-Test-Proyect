function PlayerCollision() {
	var _collision = false;

	//Horizontal tiles
	if(tilemap_get_at_pixel(CollisionMap, x + hSpeed, y))
	{
		x -= x mod TILE_SIZE;
		if (sign(hSpeed) == 1)
		{
			x += TILE_SIZE -1;
		}
		hSpeed = 0;
		_collision = true;
	}

	//Horizontal move
	x += hSpeed;



	//Vertical tiles
	if(tilemap_get_at_pixel(CollisionMap, x , y + vSpeed))
	{
		y -= y mod TILE_SIZE;
		if (sign(vSpeed) == 1)
		{
			y += TILE_SIZE -1;
		}
		vSpeed = 0;
		_collision = true;
	}

	//Vertical move
	y += vSpeed;

	return _collision;


}
