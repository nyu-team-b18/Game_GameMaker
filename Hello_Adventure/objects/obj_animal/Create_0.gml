/// @Create animal object

alarm[0] = choose (300, 480);

speed = choose(1, 1, -1, -1, 0);
dir = choose("hor", "ver");
if (speed == 0){ dir = ""; }

xspd = 0;
yspd = 0;

hmove = 1;
vmove = 1;

animals = [
	[black_chicken_idle, black_chicken_walk],
	[brown_chicken_idle, brown_chicken_walk],
	[black_cow_idle, black_cow_walk],
	[brown_cow_idle, brown_cow_walk],
	[strawberry_cow_idle, strawberry_cow_walk],
	[baby_black_cow_idle, baby_black_cow_walk],
	[baby_brown_cow_idle, baby_brown_cow_walk],
	[baby_strawberry_cow_idle, baby_strawberry_cow_walk],
	[black_goat_idle, black_goat_walk], 
	[blackberry_goat_idle, blackberry_goat_walk],
	[brown_goat_idle, brown_goat_walk],
	[white_goat_idle, white_goat_walk],
	[baby_black_goat_idle, baby_black_goat_walk],
	[baby_blackberry_goat_idle, baby_blackberry_goat_walk],
	[baby_brown_goat_idle, baby_brown_goat_walk],
	[baby_white_goat_idle, baby_white_goat_walk],
	[pink_pig_idle, pink_pig_walk],
	[spotted_pig_idle, spotted_pig_walk],
	[baby_pink_pig_idle, baby_pink_pig_walk],
	[baby_spotted_pig_idle, baby_spotted_pig_walk],
	[fluffy_sheep_idle, fluffy_sheep_walk],
	[sheep_idle, sheep_walk],
	[baby_sheep_idle, baby_sheep_walk]
]

animal_ind = floor(random(array_length(animals)));
sprite_index = animals[animal_ind][0]

dir = "";
