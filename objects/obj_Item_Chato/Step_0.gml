var targetScale = baseScale;

if ( pos == global.bs_i ) {
	targetScale = 1.5;
}

image_xscale = lerp( image_xscale, targetScale, 0.2 );
image_yscale = lerp( image_yscale, targetScale, 0.2 );
