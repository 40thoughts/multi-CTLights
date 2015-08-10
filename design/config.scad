////// CTLights
//// CONFIG
//// (Units are taken in mm's)

//// Variables
// Globals

$fn=60;			// Circles resolution (low/high definition)
w_th=2;			// Wall thickness
g_dia=130;		// Global diameter
g_hei=60;		// Global height

// Led holes

sph_l_dia=20;		// Spherical substraction diameter
sph_l_hei=30;		// Spherical substraction height (from center to center)
sph_l_x=40;		// Spherical substraction x displacement


//// Computed variables - /!\ WARNING : Don't touch these ones /!\

pad=0.1;			// Padding for geometrical manifoldness
g_rad=(g_dia/2);		// Global radius
sph_l_rad=(sph_l_dia/2);	// Spherical substraction diameter
