/// @Alarm for animal movement

speed = choose(1, 1, -1, -1, 0);
dir = choose("hor", "ver");
if (speed == 0){ dir = ""; }

alarm[0] = choose (60, 480);
