draw_sprite_ext( sprite_index, image_index, x, y, image_xscale, image_yscale + idd/10, image_angle, image_blend, image_alpha );

draw_set_halign( fa_middle );

draw_text( x, y, idd );

if ( pos == global.Select ) {
	draw_sprite( spr_Selector, 0, x, y + 32 );	
}