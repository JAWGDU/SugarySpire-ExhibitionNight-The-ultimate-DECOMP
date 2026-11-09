if (instance_exists(obj_fadeoutTransition) || instance_exists(obj_titlecard) || !waitBuffer)
    exit;

scr_getinput();
var old_world = selectedWorld;
var old_level = selectedLevel;
selectedWorld = clamp(selectedWorld + (key_down2 - key_up2), 0, array_length(levelArray) - 1);

if (old_world != selectedWorld)
    selectedLevel = 0;

selectedLevel = clamp(selectedLevel + (key_left2 + key_right2), 0, array_length(levelArray[selectedWorld]) - 1);

if (old_level != selectedLevel || old_world != selectedWorld)
    event_play_oneshot("event:/SFX/ui/step");

if (key_jump)
{
    var level_info = levelArray[selectedWorld][selectedLevel];
    stop_music(false);
    gotoLevel(level_info[0]);
}
