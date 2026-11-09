depth = -15;
levelArray[0] = [];
levelArray[1] = [];
levelArray[2] = [];
levelArray[3] = [];
levelArray[4] = [];
waitBuffer = false;
alarm[0] = 30;
obj_parent_player.state = UnknownEnum.Value_2;

addLSLevel = function(argument0 = 0, argument1, argument2, argument3)
{
    array_push(levelArray[argument0], [argument1, argument2, argument3]);
};

gotoLevel = function(argument0)
{
    scr_gotoLevel(argument0);
    obj_camera.chargeCameraX = 0;
    
    with (obj_parent_player)
    {
        x = other.x;
        y = other.y - 46;
        image_index = 0;
        
        if (true && global.InternalLevelName != "tutorial")
            sprite_index = spr_enterpainting;
        else
            sprite_index = spr_entergate;
        
        state = UnknownEnum.Value_28;
        targetDoor = "A";
        targetRoom = global.LevelFirstRoom;
        global.ComboLost = false;
        hubRoom = rm_levelSelect;
        hubX = -1;
        hubY = -1;
    }
    
    instance_create(x, y, obj_fadeoutTransition, 
    {
        levelStart: true
    });
};

addLSLevel(0, "demohub", "Demo 2 Hub", hub_demohallway);
addLSLevel(0, "tutorial", "Tutorial", tutorial_1OLD);
addLSLevel(0, "entryway", "Crunchy Construction", entryway_1);
addLSLevel(0, "steamy", "Cottontown", steamy_1);
addLSLevel(0, "mineshaft", "Sugarshack Mines", mineshaft_1);
addLSLevel(0, "molasses", "Molasses Swamp", molasses_1);
addLSLevel(1, "fudge", "Mt. Fudgetop", mountain_intro);
addLSLevel(1, "molasses", "Molasses Swamp", molasses_1);
addLSLevel(1, "cafe", "Chocoa Cafe", cafe_1);
addLSLevel(2, "dance", "Dance Off", dance_1);
addLSLevel(2, "bee", "Sting Operation", bee_1);
addLSLevel(2, "casino", "Coneboy Casino", casino_1);
addLSLevel(3, "souractive", "Souractive", souractive_1);
addLSLevel(3, "licorice", "Licorice Castle", licorice_1);
addLSLevel(3, "sucrose", "Sucrose Snowstorm", sucrose_start);
addLSLevel(4, "credits", "Credits", rm_credits);
addLSLevel(4, "testroom", "testroom", testroom);
addLSLevel(4, "dragonlair", "Dragonlair", dragonlair_1);
addLSLevel(4, "waferdim", "Exitway", exitway_1);
addLSLevel(4, "hub", "hub", hub_w1);
selectedWorld = 0;
selectedLevel = 0;
confectiSprites[0] = 
{
    sprite: spr_marshmellow_taunt,
    image: choose(0, 1)
};
confectiSprites[1] = 
{
    sprite: spr_chocolate_taunt,
    image: choose(0, 1)
};
confectiSprites[2] = 
{
    sprite: spr_crack_taunt,
    image: choose(0, 1)
};
confectiSprites[3] = 
{
    sprite: spr_gummyworm_taunt,
    image: choose(0, 1)
};
confectiSprites[4] = 
{
    sprite: spr_candy_taunt,
    image: choose(0, 1)
};
