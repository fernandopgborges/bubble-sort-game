// Quantidade
var qtd;
var timer;
var flag = obj_Flag;

switch ( global.Rodadas ) {
    case 1: 
		qtd = 4; 
		timer = 120 * 60;
			break;
    case 2: 
		qtd = 6; 
		timer = 90 * 60;
			break;
    case 3: 
		qtd = 8;
		timer = 60 * 60;
			break;
    case 4: 
		qtd = 10; 
		timer = 30 * 60;
			break;
	case 5:
		qtd = 10;
		timer = 15 * 60;
			break;
    default: 
		qtd = 10;
		timer = 120 * 60;
}

// Centralização
var startX = (camera_get_view_width(view_camera[0]) / 2) - ((qtd - 1) * global.Dist / 2);

// Criar itens
for (var i = 0; i < qtd; i++) {
    var inst = instance_create_depth(
        startX + global.Dist * i,
        global.Floor,
        depth,
        obj_Item
    );
    
    inst.idd = irandom(79);
}

// Player
instance_create_depth(
    startX - global.Dist,
    global.Floor,
    depth,
    obj_Player
);

// Maior valor
var maior = 0;

with ( obj_Item ) {
    if ( idd > maior ) {
        maior = idd;
    }
}

// Flag
var lastX = startX + global.Dist * (qtd - 1);
var flagX = lastX + global.Dist;

var spr_h = sprite_get_height(obj_Item.sprite_index);
var scale_y = 1 + maior / 10;
var topo = global.Floor - (spr_h * scale_y);

instance_create_depth(flagX, topo, depth, flag );

// Extras
global.Qtd = qtd;
global.Select = 0;
global.Done = false;
alarm[0] = timer;
time = 0;