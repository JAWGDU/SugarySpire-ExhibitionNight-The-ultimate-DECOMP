var prev_bee = -4;
var next_bee = -4;

with (obj_beeswarm)
{
    if (true && linePosition != -1)
    {
        if (linePosition == (other.linePosition - 1))
            next_bee = self;
        else if (linePosition == (other.linePosition + 1))
            prev_bee = self;
        
        if (linePosition > other.linePosition)
            linePosition = max(linePosition - 1, 0);
    }
}

if (prev_bee != -4)
{
    if (next_bee != -4)
        prev_bee.entityToFollow = next_bee;
    else
        prev_bee.entityToFollow = obj_parent_player;
}

event_inherited();
