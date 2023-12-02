import lolikon

fn main() {
	beatmap_path := '/run/media/junko/Second/Games/osu!/Songs/10418 supercell - Kimi no Shiranai Monogatari/supercell - Kimi no Shiranai Monogatari (Ex Boy) [Ex Hard].osu'
	beatmap_mods := 0

	calc_pp := lolikon.calculate_pp(beatmap_path, beatmap_mods)
	calc_stars := lolikon.calculate_stars(beatmap_path, beatmap_mods)

	println('PP: ${calc_pp} | Stars: ${calc_stars}')
}
