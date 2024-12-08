#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
ThemetizeInit()

draw_set_font(font1)
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
i=0 repeat(editor_names_size) {
pressed=mouse_check_button(mb_any)
pinr=point_in_rectangle(mouse_x,mouse_y,i*128,0,128+i*128,20)
draw_set1(c_white*(!pressed)+c_gray*pressed,1)
draw_sprite_stretched(TabSprite,0,0+i*128,0,16,20)
draw_sprite_stretched(TabSprite,1,16+i*128,0,128-32,20)
draw_sprite_stretched(TabSprite,2,128-16+i*128,0,16,20)
draw_set1(0,1)
draw_text(16+i*128+1+1,2,editor_names[i])
draw_text(16+i*128+1-1,2,editor_names[i])
draw_text(16+i*128+1,2-1,editor_names[i])
draw_text(16+i*128+1,2+1,editor_names[i])
draw_set1(c_white,1)
draw_text(16+i*128+1,2,editor_names[i])
i+=1
}
