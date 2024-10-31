if group == -1{
for (var i = 1; i < 5; ++i){
	if keyboard_check_pressed(ord(i)){
		group = i
	}
	else if keyboard_check_pressed(ord("Z")){
		group = -1
	}
}
}
else if group == 1{
for (var i = 1; i < 10; ++i){
	if keyboard_check_pressed(ord(i)){
		pressedKey = i
	}
	else if keyboard_check_pressed(ord("Z")){
		pressedKey = -1
		group = -1
	}
}


for (var i = 0; i < array_length(global.kitchen); ++i){
	if pressedKey > 0 and pressedKey <= array_length(global.kitchen) and keyboard_check_pressed(vk_enter){
		instance_create_layer(global.kitchen[i,3],global.kitchen[i,4],"InteractObjects",global.kitchen[i,2])
		if instance_exists(global.kitchen[i,2])
			global.money -= global.kitchen[i,1]
			
		array_delete(global.kitchen,pressedKey-1,1)
	
		pressedKey = -1

	}
}
}