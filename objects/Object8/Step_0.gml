x=obj_player.x
y=obj_player.y

	var _yy= choose(-1,1)*random_range(-300,-200);
	var _xx=random_range(0,room_height)
	time++;
	estado=choose(1,2)
	if estado==1  && global.quant2<=2 && time>30
	{
	instance_create_layer(_xx,y+_yy,"instances",obj_inimigo1);
	estado=choose(1,2);
	time=0
	global.quant2+=1
	
	}
	
if estado==2 && global.quant<1 && time>30
	{
	instance_create_layer(_xx,y+_yy,"instances",obj_inimigo2);
	instance_create_layer(obj_inimigo2.x,obj_inimigo2.y,"armas_enemies",obj_tiro);
	estado=choose(1,2);
	time=0
	global.quant+=1
	}