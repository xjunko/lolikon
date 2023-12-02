module main

import lolikon

// Simple API wrapper around `oppai-ng`. <br/>
// Any more than this, you should use the underlying api instead. <br/>
// Refer to `oppai.c.v`

// calculate_pp calculates the pp with given path and mods.
pub fn calculate_pp(path_to_map string, mods int) f32 {
	ez := lolikon.new()

	defer {
		lolikon.ezpp_free(ez)
	}

	lolikon.set_mods(ez, mods)
	lolikon.set_map(ez, path_to_map)

	return lolikon.pp(ez)
}

// calculate_stars calculates the stars with given path and mods.
pub fn calculate_stars(path_to_map string, mods int) f32 {
	ez := lolikon.new()

	defer {
		lolikon.ezpp_free(ez)
	}

	lolikon.set_mods(ez, mods)
	lolikon.set_map(ez, path_to_map)

	return lolikon.stars(ez)
}

fn main() {
	println(calculate_pp('/run/media/junko/Second/Games/osu!/Songs/10418 supercell - Kimi no Shiranai Monogatari/supercell - Kimi no Shiranai Monogatari (Ex Boy) [Ex Hard].osu',
		64))
}
