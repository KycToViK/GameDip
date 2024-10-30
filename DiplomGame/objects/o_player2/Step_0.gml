if keyboard_check(vk_left){
	move_and_collide(-sp,0,wall)
}
if keyboard_check(vk_right){
	move_and_collide(sp,0,wall)
}
if keyboard_check_pressed(vk_up){
	if place_meeting(x,y,o_doorCafe){
	o_doorBack.player2x = x
	o_doorBack.player2y = y
	y = o_doorCafe.py
	x = o_doorCafe.px
	}
	else if place_meeting(x,y,o_doorBack){
	y = o_doorBack.player2y
	x = o_doorBack.player2x
	}
}

if instance_exists(o_buyWinCafe) and keyboard_check_pressed(vk_numpad0) and global.openBuyPlayer == o_player2
	instance_destroy(o_buyWinCafe)

move_wrap(1,0,32*2)

