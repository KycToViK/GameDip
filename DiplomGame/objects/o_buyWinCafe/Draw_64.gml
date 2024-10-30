draw_self()

for (i = 0; i < array_length(kitchen); ++i) {
	xz[i] = x+8
	yz[i] = y+48*(i+1)
	if global.money >= kitchen[1,i] and kitchen[1,i] >= 0
		draw_text_color(xz[i], yz[i],string_concat(kitchen[0,i],"  ",kitchen[1,i]),c_green,c_green,c_green,c_green,1)
	else
		draw_text_color(xz[i], yz[i],string_concat(kitchen[0,i],"  ",kitchen[1,i]),c_red,c_red,c_red,c_red,1)
}