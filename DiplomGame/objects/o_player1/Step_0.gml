if keyboard_check(ord("A")){
	x-=sp
}
if keyboard_check(ord("D")){
	x+=sp
}

if keyboard_check(ord("W")){
	room = Cafe
	x = room_width-(sprite_width*image_xscale)
}

move_wrap(1,0,32*2)