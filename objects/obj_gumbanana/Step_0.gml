event_inherited();
var targetplayer = instance_nearest(x, y, obj_parent_player);

if (x != targetplayer.x && grounded)
{
    if ((targetplayer.x > (x - 400) && targetplayer.x < (x + 400)) && (y <= (targetplayer.y + 60) && y >= (targetplayer.y - 60)))
    {
        if (state == UnknownEnum.Value_0)
        {
            state = UnknownEnum.Value_2;
            substate = 0;
            movespeed = 0;
            image_xscale = sign(obj_parent_player.x - x);
            sprite_index = spr_banana_chargestart;
            image_index = 0;
            fmod_studio_event_instance_start(sndCharge);
        }
    }
}

if (sprite_index == spr_banana_chargestart && floor(image_index) == (image_number - 1))
    sprite_index = spr_banana_charge;

if (hitboxcreate == 0 && state == UnknownEnum.Value_2 && sprite_index == spr_banana_charge)
{
    hitboxcreate = 1;
    
    with (instance_create(x, y, obj_forkhitbox, 
    {
        ID: other.id
    }))
    {
        ID = other.id;
        image_xscale = other.image_xscale;
        image_index = other.image_index;
        depth = -1;
        sprite_index = spr_chargershitbox;
        mask_index = spr_chargershitbox;
    }
}

if (state == UnknownEnum.Value_0)
{
    movespeed = 0;
    hsp = 0;
}
