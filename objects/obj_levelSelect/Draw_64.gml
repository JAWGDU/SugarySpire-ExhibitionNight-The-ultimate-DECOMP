var level_info = levelArray[selectedWorld][selectedLevel];
var world_name = "World 1";

switch (selectedWorld)
{
    case 0:
        world_name = "Demo 2 Levels";
        break;
    
    case 1:
        world_name = "World 2";
        break;
    
    case 2:
        world_name = "World 3";
        break;
    
    case 3:
        world_name = "World 4";
        break;
    
    case 4:
        world_name = "EXTRA";
        break;
}

var level_i_name = level_info[0];
var level_name = level_info[1];
draw_set_font(global.smallfont);
draw_set_halign(fa_center);
draw_set_color(c_white);
ini_open(global.SaveFileName);
draw_sprite(spr_default_startgate, 0, x, y);
var secret_count = 0;
var treasure_found = (ini_read_string("Treasure", level_i_name, 0) != "0") ? "TREASURE FOUND!" : "TREASURE MISSING...";

for (var i = 0; i < 3; i++)
    secret_count += (ini_read_string("Secret", level_i_name + string(i + 1), 0) ? 1 : 0);

draw_text(x, y - 252, string("{0} POINTS", ini_read_string("Highscore", level_i_name, 0)));
draw_text(x, y - 278, string("{0} OF 3 SECRETS - {1}", secret_count, treasure_found));

for (var i = 0; i < array_length(confectiSprites); i++)
{
    var x_pos = -100 + (50 * i);
    var collected = ini_read_string("Confecti", level_i_name + string(i + 1), 0);
    
    if (!collected)
        draw_sprite_ext_flash(confectiSprites[i].sprite, confectiSprites[i].image, x + x_pos, y - 328, 1, 1, 0, 0, 1);
    else
        draw_sprite_ext(confectiSprites[i].sprite, confectiSprites[i].image, x + x_pos, y - 328, 1, 1, 0, c_white, 1);
}

var _rank = ini_read_string("Ranks", level_i_name, "none");
var _rankspr = spr_null;

switch (_rank)
{
    case "p":
        _rankspr = spr_rankbubble_pfilled;
        break;
    
    case "s":
        _rankspr = spr_rankbubble_sfilled;
        break;
    
    case "a":
        _rankspr = spr_rankbubble_a;
        break;
    
    case "b":
        _rankspr = spr_rankbubble_b;
        break;
    
    case "c":
        _rankspr = spr_rankbubble_c;
        break;
    
    default:
        _rankspr = spr_rankbubble_d;
        break;
}

if (_rank != "none")
    draw_sprite_ext(_rankspr, 0, x - 32, y - 218, 1, 1, 0, c_white, 1);
else
    draw_sprite_ext_flash(_rankspr, 0, x - 32, y - 218, 1, 1, 0, 0, 1);

ini_close();
draw_text_scribble(480, 450, string("[fa_middle][shake][spr_promptfont]{0}", world_name));
draw_text_scribble(480, 500, string("[fa_middle][shake][spr_promptfont]{0}", level_name));
