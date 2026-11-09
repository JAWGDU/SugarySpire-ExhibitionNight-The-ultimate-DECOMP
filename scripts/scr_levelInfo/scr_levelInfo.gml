global.GameLevelMap = ds_map_create();
global.InternalLevelName = "none";

function scr_defineTitleCard(arg0, arg1 = "event:/music/w1/entryway_titlecard", arg2 = -4, arg3 = -4) constructor
{
    image_index = arg0;
    music = arg1;
    x = arg2;
    y = arg3;
}

function scr_defineLevel(arg0, arg1, arg2, arg3, arg4 = [], arg5 = 20000, arg6 = -4, arg7 = false)
{
    ds_map_add(global.GameLevelMap, arg1, 
    {
        internalName: arg1,
        levelWorld: arg0,
        visualName: arg2,
        groupArr: arg4,
        firstRoom: arg3,
        sRankRequirement: arg5,
        titleCardInfo: arg6,
        isBoss: arg7
    });
}

scr_defineLevel(0, "demohub", "Demo 2 Hub", hub_demohallway);
scr_defineLevel(0, "tutorial", "Tutorial", tutorial_1);
scr_defineLevel(0, "entryway", "Crunchy Construction", entryway_1, ["Entryway"], 17500, new scr_defineTitleCard(0, "event:/music/w1/entryway_titlecard", 37, 42));
scr_defineLevel(0, "steamy", "Cottontown", steamy_1, ["Cottontown"], 23500, new scr_defineTitleCard(1, "event:/music/w1/cottontown_titlecard", 37, 498));
scr_defineLevel(0, "molasses", "Molasses Swamp", molasses_1, ["Molasses"], 20000, new scr_defineTitleCard(2, "event:/music/w2/molasses_titlecard", 37, 498));
scr_defineLevel(0, "mineshaft", "Sugarshack Mines", mineshaft_1, ["Mines"], 22500, new scr_defineTitleCard(3, "event:/music/w1/mines_titlecard", 37, 498));
scr_defineLevel(0, "boss_gumbob", "Boss 1", rm_missing, [], 20000, true);
scr_defineLevel(1, "fudge", "Mt. Fudgetop", mountain_intro, ["Fudgetop"]);
scr_defineLevel(1, "molasses", "Molasses Swamp", molasses_1, ["Molasses"]);
scr_defineLevel(1, "cafe", "Chocoa Cafe", cafe_1, ["Cafe"]);
scr_defineLevel(1, "boss_sheriff", "Boss 2", rm_missing);
scr_defineLevel(2, "dance", "Dance Off", dance_1, ["Danceoff"]);
scr_defineLevel(2, "bee", "Sting Operation", bee_1, ["Bee"]);
scr_defineLevel(2, "casino", "Coneboy Casino", casino_1, ["Casino"]);
scr_defineLevel(2, "boss_pizzano", "Boss 3", rm_missing);
scr_defineLevel(3, "souractive", "Souractive", souractive_1, ["Souractive"]);
scr_defineLevel(3, "licorice", "Licorice Castle", licorice_1, ["Licorice"]);
scr_defineLevel(3, "sucrose", "Sucrose Snowstorm", sucrose_start, ["Sucrose"]);
scr_defineLevel(3, "boss_cockroach", "Final Boss?", rm_missing);
scr_defineLevel(4, "boss_coneball", "The Final Boss...", rm_missing);
scr_defineLevel(4, "finale_exit", "That's the way the Spire Crumbles!", rm_credits);

function scr_gotoLevel(arg0)
{
    var level_info = ds_map_find_value(global.GameLevelMap, arg0);
    var first_room = level_info.firstRoom;
    global.texturesToLoad = array_concat(global.texturesToLoad, level_info.groupArr);
    global.InternalLevelName = level_info.internalName;
    global.LevelFirstRoom = first_room;
    global.srank = level_info.sRankRequirement;
    global.arank = global.srank / 2;
    global.brank = global.arank / 2;
    global.crank = global.brank / 2;
}

function scr_defineLevelMenuTune(arg0)
{
    var note_array = [];
    
    switch (arg0)
    {
        default:
            note_array = [UnknownEnum.Value_26, UnknownEnum.Value_33, UnknownEnum.Value_38, UnknownEnum.Value_26, UnknownEnum.Value_33, UnknownEnum.Value_38, UnknownEnum.Value_26, UnknownEnum.Value_33, UnknownEnum.Value_26, UnknownEnum.Value_33, UnknownEnum.Value_38, UnknownEnum.Value_26, UnknownEnum.Value_33, UnknownEnum.Value_38, UnknownEnum.Value_26, UnknownEnum.Value_33, UnknownEnum.Value_25, UnknownEnum.Value_32, UnknownEnum.Value_37, UnknownEnum.Value_25, UnknownEnum.Value_32, UnknownEnum.Value_37, UnknownEnum.Value_25, UnknownEnum.Value_32, UnknownEnum.Value_25, UnknownEnum.Value_32, UnknownEnum.Value_37, UnknownEnum.Value_25, UnknownEnum.Value_37, UnknownEnum.Value_32, UnknownEnum.Value_25, UnknownEnum.Value_32];
            break;
        
        case "tutorial":
            note_array = [UnknownEnum.Value_15, UnknownEnum.Value_16, UnknownEnum.Value_17, UnknownEnum.Value_25, UnknownEnum.Value_17, UnknownEnum.Value_25, UnknownEnum.Value_17, UnknownEnum.Value_25, UnknownEnum.Value_25, UnknownEnum.Value_27, UnknownEnum.Value_28, UnknownEnum.Value_29, UnknownEnum.Value_25, UnknownEnum.Value_27, UnknownEnum.Value_29, UnknownEnum.Value_24, UnknownEnum.Value_27, UnknownEnum.Value_25, UnknownEnum.Value_15, UnknownEnum.Value_16, UnknownEnum.Value_17, UnknownEnum.Value_25, UnknownEnum.Value_17, UnknownEnum.Value_25, UnknownEnum.Value_17, UnknownEnum.Value_25, UnknownEnum.Value_22, UnknownEnum.Value_20, UnknownEnum.Value_19, UnknownEnum.Value_22, UnknownEnum.Value_25, UnknownEnum.Value_29, UnknownEnum.Value_27, UnknownEnum.Value_25, UnknownEnum.Value_22, UnknownEnum.Value_27];
            break;
        
        case "entryway":
            note_array = [UnknownEnum.Value_19, UnknownEnum.Value_22, UnknownEnum.Value_24, UnknownEnum.Value_26, UnknownEnum.Value_24, UnknownEnum.Value_22, UnknownEnum.Value_19, UnknownEnum.Value_15, UnknownEnum.Value_22, UnknownEnum.Value_24, UnknownEnum.Value_26, UnknownEnum.Value_24, UnknownEnum.Value_29, UnknownEnum.Value_26, UnknownEnum.Value_19, UnknownEnum.Value_22, UnknownEnum.Value_24, UnknownEnum.Value_26, UnknownEnum.Value_29, UnknownEnum.Value_34, UnknownEnum.Value_36, UnknownEnum.Value_36, UnknownEnum.Value_34, UnknownEnum.Value_36, UnknownEnum.Value_38, UnknownEnum.Value_39, UnknownEnum.Value_38, UnknownEnum.Value_31];
            break;
        
        case "steamy":
            note_array = [UnknownEnum.Value_27, UnknownEnum.Value_30, UnknownEnum.Value_34, UnknownEnum.Value_35, UnknownEnum.Value_33, UnknownEnum.Value_34, UnknownEnum.Value_33, UnknownEnum.Value_30, UnknownEnum.Value_27, UnknownEnum.Value_25, UnknownEnum.Value_30, UnknownEnum.Value_34, UnknownEnum.Value_35, UnknownEnum.Value_33, UnknownEnum.Value_34, UnknownEnum.Value_42, UnknownEnum.Value_41, UnknownEnum.Value_39, UnknownEnum.Value_23, UnknownEnum.Value_27, UnknownEnum.Value_30, UnknownEnum.Value_34, UnknownEnum.Value_30, UnknownEnum.Value_33, UnknownEnum.Value_32, UnknownEnum.Value_30, UnknownEnum.Value_23, UnknownEnum.Value_22, UnknownEnum.Value_26, UnknownEnum.Value_29, UnknownEnum.Value_32, UnknownEnum.Value_29, UnknownEnum.Value_34, UnknownEnum.Value_32, UnknownEnum.Value_30, UnknownEnum.Value_27];
            break;
        
        case "mineshaft":
            note_array = [UnknownEnum.Value_25, UnknownEnum.Value_27, UnknownEnum.Value_28, UnknownEnum.Value_27, UnknownEnum.Value_24, UnknownEnum.Value_21, UnknownEnum.Value_20, UnknownEnum.Value_18, UnknownEnum.Value_16, UnknownEnum.Value_18, UnknownEnum.Value_21, UnknownEnum.Value_25, UnknownEnum.Value_28, UnknownEnum.Value_33, UnknownEnum.Value_32, UnknownEnum.Value_30, UnknownEnum.Value_28, UnknownEnum.Value_27, UnknownEnum.Value_28, UnknownEnum.Value_27, UnknownEnum.Value_25, UnknownEnum.Value_28, UnknownEnum.Value_27, UnknownEnum.Value_25, UnknownEnum.Value_28, UnknownEnum.Value_27, UnknownEnum.Value_20, UnknownEnum.Value_28, UnknownEnum.Value_27, UnknownEnum.Value_24, UnknownEnum.Value_20, UnknownEnum.Value_21, UnknownEnum.Value_20, UnknownEnum.Value_18, UnknownEnum.Value_20, UnknownEnum.Value_21, UnknownEnum.Value_16, UnknownEnum.Value_13, UnknownEnum.Value_21, UnknownEnum.Value_16, UnknownEnum.Value_13, UnknownEnum.Value_21, UnknownEnum.Value_16, UnknownEnum.Value_21, UnknownEnum.Value_21, UnknownEnum.Value_28, UnknownEnum.Value_27, UnknownEnum.Value_32];
            break;
        
        case "molasses":
            note_array = [UnknownEnum.Value_14, UnknownEnum.Value_26, UnknownEnum.Value_24, UnknownEnum.Value_21, UnknownEnum.Value_19, UnknownEnum.Value_17, UnknownEnum.Value_17, UnknownEnum.Value_17, UnknownEnum.Value_19, UnknownEnum.Value_17, UnknownEnum.Value_21, UnknownEnum.Value_19, UnknownEnum.Value_14, UnknownEnum.Value_14, UnknownEnum.Value_17, UnknownEnum.Value_17, UnknownEnum.Value_19, UnknownEnum.Value_14, UnknownEnum.Value_21, UnknownEnum.Value_24, UnknownEnum.Value_26, UnknownEnum.Value_26, UnknownEnum.Value_21, UnknownEnum.Value_19, UnknownEnum.Value_21, UnknownEnum.Value_19, UnknownEnum.Value_17, UnknownEnum.Value_19, UnknownEnum.Value_21, UnknownEnum.Value_14, UnknownEnum.Value_14, UnknownEnum.Value_17, UnknownEnum.Value_17, UnknownEnum.Value_21, UnknownEnum.Value_26, UnknownEnum.Value_24, UnknownEnum.Value_26, UnknownEnum.Value_29];
            break;
    }
    
    return note_array;
}

global.MenuNoteArray = scr_defineLevelMenuTune("none");
global.MenuNoteArraySelect = 0;
