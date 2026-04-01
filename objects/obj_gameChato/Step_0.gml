if ( !global.bs_running) {
	global.bs_i = -1 
	exit;
}

// Incrementa o timer
global.bs_timer++;

// Espera o delay para a animação não ser instantânea
if (global.bs_timer < global.bs_delay) exit;
global.bs_timer = 0;

var inst_a = noone;
var inst_b = noone;

// Localizar os dois itens vizinhos baseados na posição lógica (pos)
with (obj_Item_Chato) {
    if (pos == global.bs_i) inst_a = id;
    if (pos == global.bs_i + 1) inst_b = id;
}


if ( inst_a != noone && inst_b != noone ) {
    if ( inst_a.idd > inst_b.idd ) {
        
        // Troca visual (X)
        var tempX = inst_a.x;
        inst_a.x = inst_b.x;
        inst_b.x = tempX;

        // Troca lógica (pos)
        var tempPos = inst_a.pos;
        inst_a.pos = inst_b.pos;
        inst_b.pos = tempPos;
    }
}

global.bs_i++;

if ( global.bs_i >= ( 10 - 1 ) -  global.bs_pass ) {
    global.bs_i = 0;      
    global.bs_pass++;     
}


if (global.bs_pass >= 9) {
    global.bs_running = false;
    global.Done = true;
}