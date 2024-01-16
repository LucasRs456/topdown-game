
script_execute(scr_inimigo_)

if place_meeting(x+hvsp,y,obj_block)
{

	while  !place_meeting(x+sign(hvsp),y,obj_block)
	{
	x+=sign(hvsp)
    }
hvsp=0
}

if place_meeting(x,y+vsp,obj_block)
{

	while  !place_meeting(x,y+sign(vvsp),obj_block)
	{
	y+=sign(vvsp)
    }
vvsp=0
}

alpha= lerp(alpha,0,0.1)
var _dir=point_direction(x,y,obj_player.x,obj_player.y)

var _rot=_dir==clamp(_dir,90,270)

if _rot
{
image_xscale=-1
}
else 
{
image_xscale=1
}
