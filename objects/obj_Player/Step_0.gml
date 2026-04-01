if ( !global.Done ) exit;

var _targetScale = baseScale;
if ( flag ) {
	flag = false;
	
	var _target = noone;
	
	if ( pos < global.Qtd - 1 ) {
		with ( obj_Item ) {
			if ( other.idd <= idd && x == other.x + global.Dist ) {
				_target = id;
			}
		} 
	} else {
		with ( obj_Flag ) {
			if ( abs( x - ( other.x + global.Dist ) ) < 1 ) {
				_target = id;	
				idd = other.idd;	
			}
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
		moveY = global.Floor - ( spr_h * scale_y );
		
		var pitch = random_range( 0.8, 1.2 );
		audio_play_sound( snd_Jump, 0, false, 1, 0, pitch );
		
	} else {
		sprite_index = spr_Player_Screaming;	
	}
}

if ( t < 1 ) {
	t += 0.05;
	
	sprite_index = spr_Player_Jumping;
	
	if ( t > 1 ) t = 1;

	x = lerp(startX, moveX, t);
	
	var baseY = lerp( startY, moveY, t );

	var h = 40;
	y = baseY - h * 4 * t * ( 1 - t);
}

if ( t >= 1 ) {
	if ( sprite_index != spr_Player_Screaming ) {
		sprite_index = spr_Player_Idle;
	}
	
	x = moveX;
	y = moveY;
	
	if ( place_meeting( x, y, obj_Flag ) ) {
		if ( global.Rodadas < 5 ) {
			global.Rodadas++;
			room_restart();	
		} else {
			game_end();	
		}
	}
}
