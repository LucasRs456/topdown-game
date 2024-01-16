
function scr_inimigo_(){
destx=obj_player.x
desty=obj_player.y
x+=hvsp
y+=vvsp
var _dir=point_direction(x,y,destx,desty)
hvsp=lengthdir_x(3,_dir)
vvsp=lengthdir_y(3,_dir)
}