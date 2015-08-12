//// CTLights
// DESIGN

// Import external files

include <./config.scad>;						// Configuration file
include <./modules/ledSupport.scad>;		// Leds support module


// Design

color( up_color, up_tr ) {								// Upper Part
	intersection() {
		difference() {
			union() {
				scale([1, 1, ((1 / g_dia) * g_hei)]) sphere(r = g_rad);
				ledPlace() ledSpots();
			}

			union() {
				scale([1, 1, ((1 / g_dia) * (g_hei - w_th))]) sphere(r = (g_rad - w_th));
				ledPlace() ledSpots(false);
			}
		}

		cylinder(r=g_rad, h=((g_hei / 2) + pad));
	}
}

color( dn_color, dn_tr ) {								// Bottom Part
	intersection() {
		difference() {
			hull() {
				scale([1, 1, ((1 / g_dia) * g_hei)]) sphere(r = g_rad + pad);
				translate([0, 0, -(g_hei / 4)]) cube([p_wl, p_wl, (g_hei / 2)], center = true);
			}

			scale([1, 1, ((1 / g_dia) * (g_hei - w_th))]) sphere(r = (g_rad - w_th + pad));
		}

		translate([0, 0, -((g_hei / 2) + pad)]) cylinder(r = g_rad, h = ((g_hei / 2) + pad));
	}
}


// DEBUG

