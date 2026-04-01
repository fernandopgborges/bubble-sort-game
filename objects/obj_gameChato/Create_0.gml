randomise();

global.Dist = 48;

global.Floor = 392;
var startX = (camera_get_view_width(view_camera[0]) / 2) - (( 10  - 1) * global.Dist / 2);

for (var i = 0; i < 10; i++) {
    var inst = instance_create_depth(
        startX + global.Dist * i,
        global.Floor,
        depth,
        obj_Item_Chato
    );
    
    inst.idd = irandom(79);
}

global.bs_i = 0;       // posição atual (1 até 9)
global.bs_pass = 0;    // quantas passadas já fez
global.bs_timer = 0;
global.bs_delay = 30;
global.bs_running = true;