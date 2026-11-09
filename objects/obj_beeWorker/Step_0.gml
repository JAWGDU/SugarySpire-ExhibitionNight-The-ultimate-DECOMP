movespeed = 0;

if (flash && alarm[2] <= 0)
{
}

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

if (state == UnknownEnum.Value_0)
    state = UnknownEnum.Value_874;

event_inherited();
scr_scareenemy();

if (state == UnknownEnum.Value_3 || (state == UnknownEnum.Value_4 && !thrown))
{
    hsp = 0;
    vsp = 0;
}
