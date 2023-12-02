module lolikon

// calculate_pp calculates the pp with given path and mods.
pub fn calculate_pp(path_to_map string, mods int) f32 {
	ez := new()

	defer {
		ezpp_free(ez)
	}

	set_mods(ez, mods)
	set_map(ez, path_to_map)

	return pp(ez)
}

// calculate_stars calculates the stars with given path and mods.
pub fn calculate_stars(path_to_map string, mods int) f32 {
	ez := new()

	defer {
		ezpp_free(ez)
	}

	set_mods(ez, mods)
	set_map(ez, path_to_map)

	return stars(ez)
}
