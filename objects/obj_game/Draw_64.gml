draw_set_halign( fa_center );
if ( !global.Done ) {
	draw_text_scribble( 640, 64, "[shake][scale, 6]" + string( alarm[0]/60) );
} else {
	draw_text_scribble( 640, 64, "[scale, 6]" + string( time/60 ) );	
}
