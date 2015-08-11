//// Modules

// Holes for the leds

module ledSpots(num, rad, z, y) {
	for ( i = [0 : (num-1)] )
	{
		rotate((i * 360 / num) + (360 / (num * 2)), [0, 0, 1]) translate([0, y, z]) sphere(r=rad);
	}
}
