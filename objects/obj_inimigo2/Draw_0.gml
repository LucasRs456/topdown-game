draw_self()
if alpha<1
{
gpu_set_fog(true,c_white,0,0);
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,alpha)
gpu_set_fog(false,c_white,0,0);
}









