with (other)
{
    if (!other.wasCollected && (state == UnknownEnum.Value_19 || state == UnknownEnum.Value_20))
    {
        other.wasCollected = true;
        other.alarm[0] = 200;
        sprite_index = spr_player_PZ_ufo_speedUp;
        image_index = 0;
        state = UnknownEnum.Value_20;
        ufoTimer = min(ufoTimer + 150, 750);
    }
}
