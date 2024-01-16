time++;
var _dir=point_direction(x,y,destx,desty)

destx=obj_player.x
desty=obj_player.y
x+=hvsp
y+=vvsp
hvsp=lengthdir_x(3,_dir)
vvsp=lengthdir_y(3,_dir)
var _dist=point_distance(x,y,obj_player.x,obj_player.y)<300
if _dist
{
hvsp=0
vvsp=0
}
var _rot= _dir == clamp(_dir,90,270)

if _rot
{
image_xscale=-1
}
else 
{
image_xscale=1
}

alpha= lerp(alpha,0,0.1)