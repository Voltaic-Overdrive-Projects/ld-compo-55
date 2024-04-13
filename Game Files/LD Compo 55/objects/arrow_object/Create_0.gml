// Plays the arrow shooting sound.
audio_play_sound(snd_arrow_shot, 10, false);

// Auto destroy the arrow once it is off the screen to free up resources.
call_later(10, time_source_units_seconds, function(){ instance_destroy() });