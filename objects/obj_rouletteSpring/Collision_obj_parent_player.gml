with (other)
{
    if (!cutscene && !global.freezeframe && (state != UnknownEnum.Value_18 && state != UnknownEnum.Value_40 && state != UnknownEnum.Value_24 && state != UnknownEnum.Value_41))
    {
        move = key_left + key_right;
        jumpStop = true;
        state = UnknownEnum.Value_7;
        fmod_studio_event_instance_start(sndWallkickStart);
        vsp = -20;
        sprite_index = spr_wallJumpIntro;
        image_index = 1;
        hsp = move * 7;
        
        if (hsp != 0)
            xscale = sign(hsp);
        
        movespeed = hsp;
        dir = xscale;
        
        with (other)
        {
            if (sprite_index != spr_rouletteSpring_bounce)
                event_play_oneshot("event:/SFX/general/mallowbounce", x, y);
            
            sprite_index = spr_rouletteSpring_bounce;
            image_index = 0;
        }
    }
}
