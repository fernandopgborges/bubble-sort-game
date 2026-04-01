var keyRight = ( keyboard_check_pressed( ord( "D" ) ) ) || keyboard_check_pressed( vk_right );
var keyLeft = ( keyboard_check_pressed( ord( "A" ) ) ) || keyboard_check_pressed( vk_left );

if ( keyRight ) {
	global.Select++;
}

if ( keyLeft ) {
	global.Select--;
}

if ( global.Select >= global.Qtd ) {
	global.Select = 0;
}

if ( global.Select < 0 ) {
	global.Select = global.Qtd - 1;	
}