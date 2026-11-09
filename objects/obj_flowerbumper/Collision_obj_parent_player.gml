if (colliding == false)
{
    sprite_index = spr_flowerbump;
    image_index = 0;
    other.xscale = image_xscale;
    other.jumpStop = 1;
    other.vsp = -13;
    
    if (other.state != UnknownEnum.Value_36)
    {
        other.state = UnknownEnum.Value_35;
        other.sprite_index = spr_player_PZ_mach2_spinJump;
        
        if (other.movespeed < 10)
            other.movespeed = 10;
        else if (other.movespeed >= 12)
            other.state = UnknownEnum.Value_36;
    }
}
