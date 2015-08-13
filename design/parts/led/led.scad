//// LED
// DESIGN

// Import external files

include <./config.scad>;		// Configuration file


// Position LED

module placeLed(x, y, z) {
	for(n = [0 : ($children - 1)]) {
		translate([x, y, z]) child(n);		// Switch to "children(n)" from v2014.03 and later
	}
}


// Led design

module led(sl, s_dep=s_h_dep,shape=true) {
	if(shape) {					// Add material
		color(led_color, led_tr) {
			cylinder(r = l_rad, h = l_hei);
			translate([0, 0, (l_hei - pad)]) cylinder(r = b_rad, h = (b_hei - b_rad + pad));
			translate([0, 0, (b_hei + l_hei - b_rad)]) sphere(r = b_rad);
		}
	}

	else {						// Subtract material
	}
}
