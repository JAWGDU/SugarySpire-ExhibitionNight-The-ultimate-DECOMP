if (DestroyedBy.object_index == obj_parent_player || DestroyedBy.object_index == obj_player1 || DestroyedBy.object_index == obj_player2)
{
    with (DestroyedBy)
    {
        if (state == UnknownEnum.Value_40 || state == UnknownEnum.Value_41)
        {
            event_play_oneshot("event:/SFX/player/groundpound", x, y);
            image_index = 0;
            state = UnknownEnum.Value_41;
            jumpAnim = true;
            jumpStop = false;
            
            with (obj_parent_enemy)
            {
                if (bbox_in_camera(id, view_camera[0]) && grounded)
                {
                    vsp = -7;
                    hsp = 0;
                }
            }
            
            camera_shake_add(10, 30);
            instance_create(x, y, obj_landcloud);
            freefallstart = 0;
            image_index = 0;
            
            if (sprite_index == spr_groundPoundfall)
                sprite_index = spr_groundPoundland;
            else
                sprite_index = spr_player_donutSlam_land;
        }
        else if (state == UnknownEnum.Value_15)
        {
            sprite_index = spr_piledriverland;
            event_play_oneshot("event:/SFX/player/groundpound", x, y);
            jumpAnim = true;
            jumpStop = false;
            image_index = 0;
            camera_shake_add(20, 40);
            hsp = 0;
            
            with (instance_create(x, y + 35, obj_bangEffect))
                xscale = obj_parent_player.xscale;
            
            instance_create(x, y, obj_landcloud);
            freefallstart = 0;
            
            with (obj_parent_enemy)
            {
                if (bbox_in_camera(id, view_camera[0]) && grounded)
                {
                    image_index = 0;
                    vsp = -7;
                    hsp = 0;
                }
            }
            
            with (baddieGrabbedID)
            {
                x = other.x;
                y = other.y;
                scr_instakillEnemy(id, other.id);
            }
            
            baddieGrabbedID = -4;
        }
    }
}

instance_destroy();
