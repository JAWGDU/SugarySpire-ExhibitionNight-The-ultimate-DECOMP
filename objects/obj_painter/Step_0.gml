if (prevhp != eliteHP)
{
    if (eliteHP < prevhp)
    {
        touchedground = 0;
        flickertime = 11;
        alarm[6] = 5;
    }
    
    prevhp = eliteHP;
}

if (state == UnknownEnum.Value_4 && baddieStunTimer > 50 && birdCreated == false)
{
    birdCreated = true;
    
    with (instance_create(x, y, obj_enemyBirdEffect))
        ID = other.id;
}

if (flash && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (state != UnknownEnum.Value_5)
    depth = 0;

if (state != UnknownEnum.Value_4 && state != UnknownEnum.Value_9)
    thrown = 0;

event_inherited();

if (enemyAttackTimer > 0)
    enemyAttackTimer--;

if (ragereset > 0)
    ragereset--;

invincibleBaddie = flickertime > 0;
