instance_create(x, y, obj_bangEffect);
fmod_studio_event_instance_stop(sndFirework, true);
event_play_oneshot("event:/SFX/general/fireworkexplode", x, y);
