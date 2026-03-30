var keyRight = ( keyboard_check_pressed( ord( "D" ) ) );
var keyLeft = ( keyboard_check_pressed( ord( "A" ) ) );

if ( keyRight ) {
	global.Select++;
}

if ( keyLeft ) {
	global.Select--;
}

if ( global.Select > 9 ) {
	global.Select = 0;
}

if ( global.Select < 0 ) {
	global.Select = 9;	
}