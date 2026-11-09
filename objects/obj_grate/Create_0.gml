canCollide = function(argument0 = obj_parent_player)
{
    switch (argument0)
    {
        case obj_parent_player:
        case obj_player1:
        case obj_player2:
            var _state = global.freezeframe ? argument0.frozenState : argument0.state;
            return _state != UnknownEnum.Value_112 && _state != UnknownEnum.Value_114 && _state != UnknownEnum.Value_113;
            break;
        
        default:
            return true;
            break;
    }
};
