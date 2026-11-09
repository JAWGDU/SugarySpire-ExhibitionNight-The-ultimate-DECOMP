function scr_dreamyPlayerTransition()
{
    exit;
}

function state_player_dreamy_normal()
{
    move = key_left + key_right;
    hsp = xscale * movespeed;
    scr_conveyorBeltKinematics();
    
    if (move != 0)
    {
        if (move == xscale)
        {
            movespeed = approach(movespeed, key_attack ? max(12, movespeed) : 8, 0.35);
        }
        else
        {
            xscale = move;
            movespeed = 8;
        }
    }
    else
    {
        movespeed = approach(movespeed, 0, 0.5);
    }
    
    if (grounded && vsp > 0)
        jumpStop = false;
    
    if (!key_jump2 && !jumpStop && vsp < 0.5 && !stompAnim)
    {
        vsp /= 20;
        jumpStop = true;
    }
    
    if (can_jump && inputBufferJump > 0)
    {
        fmod_studio_event_instance_start(sndJump);
        instance_create(x, y, obj_highJumpCloud1, 
        {
            playerID: id
        });
        vsp = -11;
        grav = 0.3;
        image_index = 0;
        jumpStop = false;
        inputBufferJump = 0;
    }
    else if (!grounded && (inputBufferJump > 0 || (vsp >= 0 && key_jump && !jumpStop)))
    {
        if (vsp > -3)
            vsp = -3;
        
        instance_create(x, y, obj_highJumpCloud1, 
        {
            playerID: id
        });
        image_index = 0;
        jumpStop = false;
        inputBufferJump = 0;
    }
    
    if ((!grounded || slopeCheck(x + xscale, y)) && scr_solid(x + xscale, y, true) && !place_meeting(x + xscale, y, obj_destructibles))
        state = UnknownEnum.Value_126;
    else
        movespeed = 0;
}

function state_player_dreamy_glide()
{
    grav = 0.2;
    vsp = min(10, vsp);
    move = key_left + key_right;
    hsp = xscale * movespeed;
    scr_conveyorBeltKinematics();
    
    if (move != 0)
    {
        if (move == xscale)
        {
            movespeed = approach(movespeed, 20, 0.25);
        }
        else
        {
            movespeed = approach(movespeed, 0, 0.25);
            
            if (movespeed <= 0)
                xscale = move;
        }
    }
    
    if (inputBufferJump > 0)
    {
        state = UnknownEnum.Value_124;
        movespeed = 0;
        inputBufferJump = 0;
    }
    
    if (grounded)
    {
        state = UnknownEnum.Value_124;
        movespeed = key_attack ? max(12, movespeed) : movespeed;
    }
}

function state_player_dreamy_wall()
{
    state = UnknownEnum.Value_124;
}

function state_player_dreamy_attack()
{
}
