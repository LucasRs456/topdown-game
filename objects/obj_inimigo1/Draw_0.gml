 draw_self()

if alpha <1 
{
	gpu_set_fog(true,color,0,0);
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,alpha)
	gpu_set_fog(false,color,0,0);
}




















