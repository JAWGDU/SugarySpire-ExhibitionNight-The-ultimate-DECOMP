if (state == UnknownEnum.Value_0)
{
    if (!instance_exists(sightID) && !alarmed)
    {
        sightID = instance_create(x, y, obj_guardhitbox);
        sightID.ID = id;
    }
    
    baddieSpriteWalk = alarmed ? spr_guard_run : spr_guard;
    
    if (state == UnknownEnum.Value_0 && alarmed)
        movespeed = 4;
    
    if (alarm[3] > 0)
        hsp = 0;
}

if (state == UnknownEnum.Value_4 || state == UnknownEnum.Value_3 || state == UnknownEnum.Value_9 || state == UnknownEnum.Value_5 || alarmed)
{
    alarm[3] = -1;
    
    if (instance_exists(sightID))
        instance_destroy(sightID);
}

if (flash && alarm[2] <= 0)
{
}

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

event_inherited();
scr_scareenemy();

if (stationary)
    movespeed = 0;
