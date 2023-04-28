event_inherited();

animals = [
	[wolf_cub_idle_1, wolf_cub_walk],
	[wolf_cub_idle_2, wolf_cub_walk],
	[wolf_cub_idle_3, wolf_cub_walk]
]

animal_ind = floor(random(array_length(animals)));
sprite_index = animals[animal_ind][0]