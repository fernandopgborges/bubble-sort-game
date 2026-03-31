var targetScale = baseScale;

if ( pos == global.Select && !global.Done ) {
	
	targetScale = 1.5;
	targetScale = 1.5;
	
	if ( keyboard_check_pressed( vk_space ) ) {
		flag = true;	
	}
}

image_xscale = lerp( image_xscale, targetScale, 0.2 );
image_yscale = lerp( image_yscale, targetScale, 0.2 );


if ( flag ) {
	flag = false;
	
	var _xx = x + global.Dist;
	var _idd = idd;

	with ( obj_Item ) {
		if ( x == _xx && idd < _idd ) {
			var temp = x;
		
			x = other.x;
			other.x = temp;
			
			var tempPos = pos;
			
			pos = other.pos;
			other.pos = tempPos;
			global.Select++;
		}
	}
}