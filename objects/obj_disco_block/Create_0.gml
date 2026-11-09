canCollide = function(argument0 = obj_parent_player)
{
    return global.dancetimer <= 0 && !place_meeting(x, y, obj_parent_player);
};
