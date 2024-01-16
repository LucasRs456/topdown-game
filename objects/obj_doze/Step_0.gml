y = obj_player.y
x =obj_player.x
time++;
#region mira 
var _dir = point_direction(x,y,mouse_x,mouse_y)

image_angle= _dir

var _rot= _dir == clamp(_dir,90,270)

if _rot
{
image_yscale=-1
}
else 
{
image_yscale=1
}
#endregion 
#region tiro
var _click= mouse_check_button(mb_left) 
if _click && time > 10 
{
time =0
var _xx=x+lengthdir_x(16,_dir)
var _yy=y+lengthdir_y(16,_dir) 
var _tiro=instance_create_layer(_xx,_yy,"shoot",obj_bullet2)
_tiro.direction=_dir 
}
#endregion 









