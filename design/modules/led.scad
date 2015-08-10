//// Modules

// Holes for the leds

module ledSpots(num, rad, z, x) {
	for ( i = [0 : (num-1)] )
	{
		rotate((i * 360 / num), [0, 0, 1]) translate([x, 0, z]) sphere(r=rad);
	}
}
