
x=obj_inimigo2.x;
y=obj_inimigo2.y;
time ++;
var _dir= point_direction(x,y,obj_player.x,obj_player.y)
var _rot =_dir==clamp(_dir,90,270)
if point_distance(x,y,obj_player.x,obj_player.y)<400 && time>120

{

	with instance_create_layer(x,y,"shoot",obj_bullet)
	{
	direction=_dir
	}
time=0
}
image_angle=_dir
if _rot
{
image_yscale=-1

}
else
{
image_yscale=1

}




