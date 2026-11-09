if (flash && alarm[2] <= 0)
{
}

if (enemyAttackTimer > 0)
{
    enemyAttackTimer--;
}
else if (state == UnknownEnum.Value_0)
{
    state = UnknownEnum.Value_873;
    substate = 0;
    tauntTimer = 40;
    
    with (instance_create(x, y, obj_baddieTauntEffect))
        image_speed = 0.25;
    
    sprite_index = spr_meloncooltaunt;
    image_index = choose(0, 1, 2);
}

if (hitboxcreate == 0 && state == UnknownEnum.Value_873)
{
    hitboxcreate = 1;
    
    with (instance_create(x, y, obj_forkhitbox, 
    {
        ID: other.id
    }))
    {
        ID = other.id;
        sprite_index = spr_swordhitbox2;
        image_xscale = other.image_xscale;
        depth = -1;
    }
}

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

event_inherited();
scr_scareenemy();
