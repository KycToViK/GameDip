if keyboard_check_pressed(vk_up) and !instance_exists(o_buyWinCafe){
	instance_create_layer(0,64,"GUI",o_buyWinCafe)
	global.openBuyPlayer = o_player2
}