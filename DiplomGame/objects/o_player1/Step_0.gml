if keyboard_check(ord("A")){
	move_and_collide(-sp,0,wall)
}
if keyboard_check(ord("D")){
	move_and_collide(sp,0,wall)
}

if keyboard_check_pressed(ord("W")){
	if place_meeting(x,y,o_doorCafe){
	o_doorBack.player1x = x
	o_doorBack.player1y = y
	y = o_doorCafe.py
	x = o_doorCafe.px
	}
	else if place_meeting(x,y,o_doorBack){
	y = o_doorBack.player1y
	x = o_doorBack.player1x
	}
}

move_wrap(1,0,32*2)