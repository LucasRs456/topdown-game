function scr_spawn()
{
	var _yy= choose(-1,1)*random_range(-600,-200);
	var _xx=irandom_range(-600,600);
	time++;
	estado=choose(1,2)
	if estado==1 && time>500 && global.quant2<=2
	{
	instance_create_layer(x+_xx,y+_yy,"instances",obj_inimigo1);
	estado=choose(1,2);
	time=0;
	global.quant2+=1
	show_message("foi")
	}
	
if estado==2 && time>500 && global.quant<1
	{
	instance_create_layer(x+_xx,y+_yy,"instances",obj_inimigo2);
	instance_create_layer(obj_inimigo2.x,obj_inimigo2.y,"armas_enemies",obj_tiro);
	estado=choose(1,2);
	time=0
	global.quant+=1
	}
}
