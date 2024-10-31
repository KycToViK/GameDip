draw_self()

for (var i = 0; i < array_length(global.kitchen); ++i) {
	xz[i] = x+8
	yz[i] = y+48*(i+1)
	x1z[i] = xz[i]-4
	y1z[i] = yz[i]-16
	x2z[i] = xz[i]+179
	y2z[i] = yz[i]+16
	if global.money >= global.kitchen[i,1] and global.kitchen[i,1] >= 0{
		draw_rectangle_color(x1z[i],y1z[i],x2z[i],y2z[i],#004000,#004000,#004000,#004000,0)
		draw_text_color(xz[i], yz[i],string_concat(global.kitchen[i,0],"  ",global.kitchen[i,1]),c_green,c_green,c_green,c_green,1)
		
		if pressedKey-1 == i{
			draw_rectangle_color(x1z[i],y1z[i],x2z[i],y2z[i],c_yellow,c_yellow,c_yellow,c_yellow,0)
			draw_text_color(xz[i], yz[i],string_concat(global.kitchen[i,0],"  ",global.kitchen[i,1]),c_green,c_green,c_green,c_green,1)
		}
	}
	else{
		draw_rectangle_color(x1z[i],y1z[i],x2z[i],y2z[i],#400000,#400000,#400000,#400000,0)
		draw_text_color(xz[i], yz[i],string_concat(global.kitchen[i,0],"  ",global.kitchen[i,1]),c_red,c_red,c_red,c_red,1)
	}
}

