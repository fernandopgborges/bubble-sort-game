randomise();

global.Dist = 48;

for ( var i = 0; i < 10; i++ ) {
	var inst = instance_create_depth( 112 + global.Dist * i, 360, depth, obj_Item );
	inst.idd = irandom( 79 );
}

global.Select = 0;

var flagX = 112 + global.Dist * 10;

var maior = 0;
with ( obj_Item ) {
	if ( idd > maior ) {
		maior = idd;	
	}
}

var spr_h = sprite_get_height(obj_Item.sprite_index);

// calcula escala final do maior
var scale_y = 1 + maior/10;

// calcula o topo (igual ao draw)
var topo = 360 - ( spr_h * scale_y );

instance_create_depth( flagX, topo, depth, obj_Flag);

instance_create_depth( 112 - global.Dist, 360, depth, obj_Player );

global.Done = false;

alarm[0] = 60 * 60;

scribble_anim_shake( 6, 0.5 );

time = 0;