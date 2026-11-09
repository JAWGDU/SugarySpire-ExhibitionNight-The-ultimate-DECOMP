canCollide = function(argument0 = obj_parent_player)
{
    switch (argument0)
    {
        case obj_parent_player:
        case obj_player1:
        case obj_player2:
            var _state = global.freezeframe ? argument0.frozenState : argument0.state;
            return _state != UnknownEnum.Value_26;
            break;
        
        default:
            return true;
            break;
    }
};

depth = 5;
image_speed = 0.35;
vsp = 0;
grav = 0.5;
TrueY = ystart;
falling = false;
fallbuffer = 5;
image_blend = c_red;
oldx = xstart;
oldy = ystart;
