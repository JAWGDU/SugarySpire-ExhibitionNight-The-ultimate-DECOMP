event_inherited();
enemyAttackTimer = max(enemyAttackTimer - 1, 0);

if (state != UnknownEnum.Value_2 && enemyAttackTimer <= 0)
{
    if (state == UnknownEnum.Value_0 || state == UnknownEnum.Value_0)
    {
        image_index = 0;
        state = UnknownEnum.Value_2;
        sprite_index = spr_throw;
    }
}

if (flash && alarm[2] <= 0)
{
}

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;
