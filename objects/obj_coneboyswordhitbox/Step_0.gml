x = obj_parent_player.x;
y = obj_parent_player.y;
image_xscale = obj_parent_player.xscale;

with (obj_parent_player)
{
    if (substate == 1 && state != UnknownEnum.Value_83 && state != UnknownEnum.Value_51)
        instance_destroy(other.id);
    else if (substate == 2 && state != UnknownEnum.Value_84)
        instance_destroy(other.id);
}
