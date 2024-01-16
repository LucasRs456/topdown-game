#region movimentação 
x+=hsp 
y+=vsp
var _tecla_d=keyboard_check(ord("D"))
var _tecla_a=keyboard_check(ord("A"))
var _tecla_w=keyboard_check(ord("W"))
var _tecla_s=keyboard_check(ord("S"))

var _teclas= _tecla_d-_tecla_a !=0 or _tecla_s-_tecla_w !=0

move_dir=point_direction(0,0,_tecla_d-_tecla_a,_tecla_s-_tecla_w)
hsp=lengthdir_x(spd*_teclas,move_dir)
vsp=lengthdir_y(spd*_teclas,move_dir)

#endregion 
#region colisão 
if place_meeting(x+hsp,y,obj_block)
{
	while !place_meeting(x+sign(hsp),y,obj_block)
	{
	x+=sign(hsp)
	}
hsp=0
}

if place_meeting(x,y+vsp,obj_block)
{

	while  !place_meeting(x,y+sign(vsp),obj_block)
	{
	y+=sign(vsp)
    }
vsp=0
}
#endregion
#region direção do olhar 
var _dir = point_direction(x,y,mouse_x,mouse_y)



var _rot= _dir == clamp(_dir,90,270)

if _rot
{
image_xscale=-1
xscale=-1
}
else 
{
image_xscale=1
xscale=1
}
#endregion
#region armas 

if keyboard_check_pressed(ord("2"))
{
	faca=false
	instance_deactivate_layer("armas")
	instance_create_layer(x,y,"armas",obj_m4)
	spd=4
}

if keyboard_check_pressed(ord("1"))
{
	faca=false
	instance_deactivate_layer("armas")
	instance_create_layer(x,y,"armas",obj_pistola)
	spd=5
}

if keyboard_check_pressed(ord("4"))
{
	faca=false
	instance_deactivate_layer("armas")
	instance_create_layer(x,y,"armas",obj_doze)
	spd=2
}

if keyboard_check_pressed(ord("3"))
{
	faca=false
	instance_deactivate_layer("armas")
	instance_create_layer(x,y,"armas",obj_uzi)
	spd=5
}
if keyboard_check_pressed(ord("5"))
{
instance_deactivate_layer("armas")
faca=true
spd=5
}

var _lf=mouse_check_button_pressed(mb_left)
if _lf && faca==true
{
var _xx=x+lengthdir_x(20,_dir);
var _yy=y+lengthdir_y(20,_dir);
var _lf=instance_create_layer(_xx,_yy,"armas",obj_faca);
_lf.direction=_dir
faca=false
}

#endregion


if keyboard_check(vk_enter)
{
room_restart()
}
