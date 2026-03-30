randomise();

global.Dist = 48;

for ( var i = 0; i < 10; i++ ) {
	var inst = instance_create_depth( 24 + global.Dist * i, 32, depth, obj_Item );
	inst.idd = irandom( 99 );
}

global.Select = 0;