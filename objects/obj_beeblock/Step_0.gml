var tplay = get_nearestPlayer(x, y);

with (tplay)
{
    if (place_meeting(x + hsp, y + vsp, other.id) && state == UnknownEnum.Value_20)
        instance_destroy(other.id);
}
