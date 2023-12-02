module lolikon

// Simple API wrapper around `oppai-ng`. <br/>
// Any more than this, you should use the underlying api instead. <br/>
// Refer to `oppai.c.v`

// calculate_pp calculates the pp with given path and mods.
pub fn calculate_pp(path_to_map string, mods int) f32 {
	ez := C.ezpp_new()

	defer {
		C.ezpp_free(ez)
	}

	C.ezpp_set_mods(ez, mods)
	C.ezpp(ez, path_to_map.str)

	return C.ezpp_pp(ez)
}

// calculate_stars calculates the stars with given path and mods.
pub fn calculate_stars(path_to_map string, mods int) f32 {
	ez := C.ezpp_new()

	defer {
		C.ezpp_free(ez)
	}

	C.ezpp_set_mods(ez, mods)
	C.ezpp(ez, path_to_map.str)

	return C.ezpp_stars(ez)
}
