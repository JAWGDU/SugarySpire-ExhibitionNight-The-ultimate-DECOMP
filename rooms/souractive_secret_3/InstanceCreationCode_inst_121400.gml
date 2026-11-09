condition = function()
{
    return !instance_exists(obj_parent_enemy) && !instance_exists(obj_sourenemyspawn);
};

output = function()
{
    portal_activate(121379, true);
    
    with (121379)
        y = ystart + 32;
};
