/// @description HP Bar
// Puede escribir su código en este editor
draw_sprite(spr_hpbardbg,0,hpbar_x,hpbar_y);
draw_sprite_stretched(spr_hpbar1,0,hpbar_x,hpbar_y,(hp/hpmax)*hpbar_width,hpbar_height);
draw_sprite(spr_hpbarb,0,hpbar_x,hpbar_y);