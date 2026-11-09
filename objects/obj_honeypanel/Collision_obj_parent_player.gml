if (active && other.state != UnknownEnum.Value_121 && other.state != UnknownEnum.Value_0 && other.state != UnknownEnum.Value_39 && other.state != UnknownEnum.Value_38)
{
    with (other)
    {
        if (state == UnknownEnum.Value_6)
            state = UnknownEnum.Value_35;
        
        if (state == UnknownEnum.Value_18 || state == UnknownEnum.Value_55)
            state = UnknownEnum.Value_1;
        
        if (state == UnknownEnum.Value_37)
        {
            state = UnknownEnum.Value_1;
            
            if (sprite_index == spr_machslideboost || sprite_index == spr_machslideboostFallStart || sprite_index == spr_machslideboostFall)
                state = UnknownEnum.Value_35;
            
            if (sprite_index == spr_machslideboost3 || sprite_index == spr_machslideboost3FallStart || sprite_index == spr_machslideboost3Fall)
                state = UnknownEnum.Value_36;
        }
        
        scr_taunt_storeVariables();
        state = UnknownEnum.Value_121;
        webID = other.id;
    }
}
