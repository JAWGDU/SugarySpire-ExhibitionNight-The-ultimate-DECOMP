if (flash && alarm[2] <= 0)
    alarm[2] = room_speed * 0.15;

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

if (state == UnknownEnum.Value_0)
    movespeed = 0;

event_inherited();
scr_scareenemy();
