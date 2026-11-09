if (point_in_circle(x, y, obj_parent_player.x + (75 * obj_parent_player.xscale), obj_parent_player.y, 125) && obj_parent_player.inhaling && state != UnknownEnum.Value_881)
    state = UnknownEnum.Value_881;

var target_player = obj_player1;

if (x != target_player.x && state != UnknownEnum.Value_2 && target_player.state != UnknownEnum.Value_58 && enemyAttackTimer <= 0 && grounded)
{
    if (target_player.x > (x - 200) && target_player.x < (x + 200) && y <= (target_player.y + 100) && y >= (target_player.y - 100))
    {
        if (state == UnknownEnum.Value_0)
        {
            image_index = 0;
            sprite_index = spr_throw;
            image_xscale = sign(target_player.x - x);
            state = UnknownEnum.Value_2;
        }
    }
}

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_3 && state != UnknownEnum.Value_2)
    enemyAttackTimer -= 0.5;

event_inherited();
scr_scareenemy();
