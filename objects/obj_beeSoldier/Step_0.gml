if (flash && alarm[2] <= 0)
{
}

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

event_inherited();

if (state != UnknownEnum.Value_2 && state != UnknownEnum.Value_0)
    scr_scareenemy();

enemyAttackTimer = max(enemyAttackTimer - 1, 0);
ragereset = max(ragereset - 1, 0);

if (state == UnknownEnum.Value_0)
    enemyAttackTimer = 0;

if (point_in_rectangle(obj_parent_player.x, obj_parent_player.y, x - 300, y - 50, x + 300, y + 50) && obj_parent_player.state != UnknownEnum.Value_43 && obj_parent_player.state != UnknownEnum.Value_29 && state != UnknownEnum.Value_0)
{
    if ((state == UnknownEnum.Value_0 || state == UnknownEnum.Value_0) && enemyAttackTimer <= 0)
    {
        if (x != obj_parent_player.x)
            image_xscale = sign(obj_parent_player.x - x);
        
        sprite_index = spr_beesoldier_intro;
    }
}

if (state != UnknownEnum.Value_0 && ((obj_parent_player.x > (x - 400) && obj_parent_player.x < (x + 400)) && (y <= (obj_parent_player.y + 60) && y >= (obj_parent_player.y - 60))) && obj_parent_player.state != UnknownEnum.Value_50 && obj_parent_player.state != UnknownEnum.Value_60 && obj_parent_player.state != UnknownEnum.Value_43 && obj_parent_player.state != UnknownEnum.Value_61 && obj_parent_player.state != 112)
{
    if (state != UnknownEnum.Value_3 && state != UnknownEnum.Value_2 && enemyAttackTimer <= 0 && obj_parent_player.state != UnknownEnum.Value_50)
    {
        if (state == UnknownEnum.Value_0 || state == UnknownEnum.Value_0)
        {
            image_index = 0;
            state = UnknownEnum.Value_2;
            
            if (x != obj_parent_player.x)
                image_xscale = sign(obj_parent_player.x - x);
            
            sprite_index = spr_throw;
        }
    }
}

movespeed = 4;
