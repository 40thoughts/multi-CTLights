//// CTLights
// DESIGN

// Import external files

include <./config.scad>;			// Configuration file
use <./modules/led.scad>;		// Modules file


// Design

%intersection() {									// Upper Part
	difference() {
		scale([1, 1, ((1/g_dia)*g_hei)]) sphere(r=g_rad);

		union() {
			scale([1, 1, ((1/g_dia)*(g_hei-w_th))]) sphere(r=(g_rad-w_th));
			ledSpots(6, sph_l_rad, sph_l_hei, sph_l_x);
		}
	}

	cylinder(r=g_rad, h=((g_hei/2)+pad));
}

intersection() {									// Bottom Part
	difference() {
		scale([1, 1, ((1/g_dia)*g_hei)]) sphere(r=g_rad);
		scale([1, 1, ((1/g_dia)*(g_hei-w_th))]) sphere(r=(g_rad-w_th));
	}

	translate([0, 0, -((g_hei/2) + pad)]) cylinder(r=g_rad, h=((g_hei/2)+pad));
}


// DEBUG

