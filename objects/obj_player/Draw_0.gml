draw_self()
draw_circle(x,y,50,1)

if faca==true
{

	var _dir=point_direction(x,y,mouse_x,mouse_y)
	var _xx=lengthdir_x(20,_dir)
	var _yy=lengthdir_y(20,_dir)
     
	draw_sprite_ext(spr_facam,xscale,x+_xx,y+_yy,1,1,0,c_white,1)


}





