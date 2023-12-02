module main

import lolikon

// Simple API wrapper around `oppai-ng`. <br/>
// Any more than this, you should use the underlying api instead. <br/>
// Refer to `oppai.c.v`

fn main() {
	println(lolikon.calculate_pp('/run/media/junko/Second/Games/osu!/Songs/10418 supercell - Kimi no Shiranai Monogatari/supercell - Kimi no Shiranai Monogatari (Ex Boy) [Ex Hard].osu',
		64))
}
