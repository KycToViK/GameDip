if keyboard_check(vk_left){
	x-=sp
}
if keyboard_check(vk_right){
	x+=sp
}
if keyboard_check(vk_up){
	x = room_width-(sprite_width*image_xscale)
}
if keyboard_check(vk_down){
	instance_destroy()
}

move_wrap(1,0,32*2)
