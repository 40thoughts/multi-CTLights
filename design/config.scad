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

// Colors

up_color="Silver";	// Upper part's color
up_tr=0.8;		// Upper part's transparency (0 to 1)
dn_color="SteelBlue";	// Down part's color
dn_tr=1;		// Down part's transparency (0 to 1)

// Leds support module

l_top_hei=22;		// Led top height
sph_l_dia=20;		// Spherical substraction diameter
sph_l_y=45;		// Spherical substraction y shift


// Ultrasonic module

sonic_z_pos=10;		// Spherical substraction z shift


//// Computed variables - /!\ WARNING : Don't touch these ones /!\

pad=0.1;			// Padding for geometrical manifoldness
g_rad=(g_dia/2);		// Global radius
sph_l_rad=(sph_l_dia/2);	// Spherical substraction diameter
