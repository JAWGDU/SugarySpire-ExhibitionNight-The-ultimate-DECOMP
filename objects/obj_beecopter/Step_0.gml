if (flash && alarm[2] <= 0)
    alarm[2] = room_speed * 0.15;

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

if (state == UnknownEnum.Value_2)
    vsp = 0;

enemyAttackTimer = max(enemyAttackTimer - 1, 0);

if (((obj_parent_player.x > (x - 50) && obj_parent_player.x < (x + 50)) && (y <= (obj_parent_player.y + 300) && y >= (obj_parent_player.y - 300))) && obj_parent_player.state != UnknownEnum.Value_50 && obj_parent_player.state != UnknownEnum.Value_60 && obj_parent_player.state != UnknownEnum.Value_43 && obj_parent_player.state != UnknownEnum.Value_61)
{
    if (state != UnknownEnum.Value_2 && enemyAttackTimer <= 0 && obj_parent_player.state != UnknownEnum.Value_50)
    {
        if (state == UnknownEnum.Value_874)
        {
            image_index = 0;
            state = UnknownEnum.Value_2;
            
            if (x != obj_parent_player.x)
                image_xscale = sign(obj_parent_player.x - x);
            
            sprite_index = spr_throw;
        }
    }
}

if (state == UnknownEnum.Value_0)
    state = UnknownEnum.Value_874;

event_inherited();
scr_scareenemy();
