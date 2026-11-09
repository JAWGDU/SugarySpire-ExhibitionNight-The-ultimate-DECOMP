targetRoom = sucrose_start;
targetDoor = "A";
level = "sucrose";
details = [gate_createlayer(spr_sucrose_startgate, 0), gate_createlayer(spr_sucrose_startgate, 1), gate_createlayer(spr_sucrose_startgate, 2, 1), gate_createlayer(spr_sucrose_startgate, 3, 0.66), gate_createlayer(spr_sucrose_startgate, 4, 0.33), gate_createlayer(spr_sucrose_startgatebg, 0, 0, 0, 0.35)];
info = 
{
    backgroundInfo: [spr_sucrosecard_bg, UnknownEnum.Value_2, UnknownEnum.Value_4, UnknownEnum.Value_8, 0, 0],
    titleInfo: [spr_sucrosecard_title, UnknownEnum.Value_0, UnknownEnum.Value_5, UnknownEnum.Value_6, 0, 0],
    song: "event:/music/w4/sucrose_titlecard"
};
