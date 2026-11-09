if (delay <= 0)
{
    with (obj_parent_player)
    {
        if (state != UnknownEnum.Value_19 && state != UnknownEnum.Value_20)
        {
            state = UnknownEnum.Value_19;
            movespeed = other.sethsp;
            verticalMovespeed = other.setvsp;
            ufoTimer = 750;
        }
    }
}
