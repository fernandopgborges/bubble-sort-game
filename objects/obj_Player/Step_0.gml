if ( !global.Done ) exit;


if ( flag ) {
	flag = false;
	
	var _target = noone;
	
	if ( pos < 9 ) {
		with ( obj_Item ) {
			if ( other.idd <= idd && x == other.x + global.Dist ) {
				_target = id;
			}
		} 
	} else {
		with ( obj_Flag ) {
			_target = id;	
			idd = other.idd;
		}
		
		
	}
	
	
	if ( _target != noone ) {
		alarm[0] = 60;
		moveX = _target.x;

		t = 0;
		pos = _target.pos;
		
		startX = x;
		startY = y;
		
		idd = _target.idd;
		
		var spr_h = 32;
		var scale_y = 1 + idd/10;
		moveY = 360 - ( spr_h * scale_y );
		
	}
}

if ( t < 1 ) {
	t += 0.05;

	if ( t > 1 ) t = 1;

	x = lerp(startX, moveX, t);
	
	var baseY = lerp( startY, moveY, t );

	var h = 40;
	y = baseY - h * 4 * t * ( 1 - t);
}

if ( t >= 1 ) {
	x = moveX;
	y = moveY;
}