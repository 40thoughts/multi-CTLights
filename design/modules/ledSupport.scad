//// Module Led Support

// Leds placing module

module ledPlace() {
	for (i = [0 : (l_num - 1)]) {
		rotate((i * 360 / l_num) + (360 / (l_num * 2)), [0, 0, 1]) translate([0, sph_l_y, 0]) {
			for(n = [0 : ($children - 1)]) {
				child(n);		// Switch to "children(n)" from v2014.03 and later
			}
		}
	}
}

// Led parts

module ledSpots(shape=true) {
	if(shape) {											// Add material
		cylinder(r = (sph_l_rad + w_th), h = l_top_hei);
	}

	else {													// Subtract material
		translate([0, 0, l_top_hei]) sphere(r = sph_l_rad);
	}
}


// DEBUG

//include <../config.scad>

//ledSpots();
//ledSpots(false);