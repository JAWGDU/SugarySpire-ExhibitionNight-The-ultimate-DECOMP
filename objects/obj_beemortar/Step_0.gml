movespeed = 0;

if (point_in_circle(x, y, obj_parent_player.x + (75 * obj_parent_player.xscale), obj_parent_player.y, 125) && obj_parent_player.inhaling && state != UnknownEnum.Value_881)
    state = UnknownEnum.Value_881;

enemyAttackTimer = max(enemyAttackTimer - 1, 0);
event_inherited();
scr_scareenemy();

if (((obj_parent_player.x > (x - 400) && obj_parent_player.x < (x + 400)) && (y <= (obj_parent_player.y + 60) && y >= (obj_parent_player.y - 60))) && obj_parent_player.state != UnknownEnum.Value_50 && obj_parent_player.state != UnknownEnum.Value_60 && obj_parent_player.state != UnknownEnum.Value_43 && obj_parent_player.state != UnknownEnum.Value_61)
{
    if (state != UnknownEnum.Value_3 && state != UnknownEnum.Value_2 && enemyAttackTimer <= 0 && obj_parent_player.state != UnknownEnum.Value_50)
    {
        if (state == UnknownEnum.Value_0 || state == UnknownEnum.Value_0)
        {
            image_index = 0;
            state = UnknownEnum.Value_2;
            
            if (x != obj_parent_player.x)
                image_xscale = sign(x - obj_parent_player.x);
            
            sprite_index = spr_throw;
        }
    }
}

if (flash && alarm[2] <= 0)
    alarm[2] = room_speed * 0.15;

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;
