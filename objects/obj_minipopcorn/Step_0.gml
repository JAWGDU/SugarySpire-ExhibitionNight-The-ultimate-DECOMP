if (flash && alarm[2] <= 0)
{
}

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

event_inherited();
scr_scareenemy();

if ((place_meeting(x + 1, y, obj_parent_player) && sprite_index == spr_minippcnspawn) || (place_meeting(x - 1, y, obj_parent_player) && sprite_index == spr_minippcnspawn))
    scr_hurtplayer();

if (!grounded && sprite_index == spr_minippcnspawn)
    hsp = 2 * image_xscale;

if (state == UnknownEnum.Value_0)
{
    if (!grounded && object_index == obj_minipopcorn)
        sprite_index = spr_minippcnspawn;
    
    if (grounded && sprite_index == spr_minippcnspawn)
    {
        sprite_index = spr_minippcnland;
        image_index = 0;
    }
    
    if (sprite_animation_end() && sprite_index == spr_minippcnland)
        sprite_index = baddieSpriteWalk;
}
