if (flash && alarm[2] <= 0)
{
}

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

event_inherited();

if (state != UnknownEnum.Value_2)
    scr_scareenemy();

enemyAttackTimer = max(enemyAttackTimer - 1, 0);
ragereset = max(ragereset - 1, 0);

if (point_in_rectangle(obj_parent_player.x, obj_parent_player.y, x - 300, y - 120, x + 300, y + 120) && obj_parent_player.state != UnknownEnum.Value_43 && obj_parent_player.state != UnknownEnum.Value_29)
{
    if (state != UnknownEnum.Value_2 && state == UnknownEnum.Value_0 && enemyAttackTimer <= 0)
    {
        image_index = 0;
        flash = true;
        state = UnknownEnum.Value_2;
        
        if (x != obj_parent_player.x)
            image_xscale = sign(obj_parent_player.x - x);
        
        sprite_index = spr_throw;
    }
}
