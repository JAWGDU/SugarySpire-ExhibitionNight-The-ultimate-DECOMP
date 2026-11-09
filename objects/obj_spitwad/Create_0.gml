event_inherited();
baddieSpriteIdle = spr_gumspitter_idle;
baddieSpriteWalk = spr_gumspitter_idle;
baddieSpriteStun = spr_gumspitter_stun;
baddieSpriteScared = spr_gumspitter_scared;
baddieSpriteTurn = undefined;
baddieSpriteHit = undefined;
baddieSpriteDead = spr_gumspitter_dead;
enemyAttackTimerMax = 100;
defaultMovespeed = 0;

enemyAttack_TriggerEvent = function()
{
    if (enemyAttackTimer <= 0 && scr_enemy_playerisnear(400, 20) && grounded && state == UnknownEnum.Value_0)
    {
        enemyAttackTimer = enemyAttackTimerMax;
        state = UnknownEnum.Value_2;
        var _player = get_nearestPlayer();
        image_xscale = -getFacingDirection(_player.x, x);
        sprite_index = spr_gumspitter_spit;
        image_index = 0;
    }
};

enemyState_Attack = function()
{
    scr_enemyThrowDefault(spr_gumspitter_spit, 7, 0.35, function()
    {
        with (instance_create(x + (image_xscale * 6), y - 6, obj_spitter_proj))
        {
            image_xscale = other.image_xscale;
            movespeed = 5;
            vsp = -8;
        }
    });
};
