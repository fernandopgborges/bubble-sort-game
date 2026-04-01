var _targetScale = baseScale;
if ( instance_position( mouse_x, mouse_y, obj_ButtonStart ) ) {
	_targetScale = baseScale + 0.5;	
}

image_xscale = lerp( image_xscale, _targetScale, 0.2 );
image_yscale = lerp( image_yscale, _targetScale, 0.2 );