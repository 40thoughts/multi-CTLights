////// CTLights
//// CONFIG
//// (Units are taken in mm's)

//// Variables
// Globals

$fn=50;			// Circles resolution (low/high definition)
w_th=2;			// Wall thickness
g_dia=130;		// Global diameter
g_hei=50;		// Global height
l_num=10;		// Leds number
p_wl=40;		// Pad width/length

// Led holes

sph_l_dia=20;		// Spherical substraction diameter
sph_l_hei=25;		// Spherical substraction height (from center to center)
sph_l_y=45;		// Spherical substraction y displacement


//// Computed variables - /!\ WARNING : Don't touch these ones /!\

pad=0.1;			// Padding for geometrical manifoldness
g_rad=(g_dia/2);		// Global radius
sph_l_rad=(sph_l_dia/2);	// Spherical substraction diameter
