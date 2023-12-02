# Lolikon 
Simple C wrapper for the amazing [[oppai-ng]](https://github.com/Francesco149/oppai-ng) library!

## Features
* Everything that oppai-ng does.

## Notes
* Everything is translated as is, the only thing that's different is the function name; `ezpp_new()` become `new()`, except for one function, `ezpp_free()`.

## Examples
```v
import lolikon

fn main() {
    beatmap_path := "~/ばか/maps/1.osu"
    beatmap_mods := 0

    calc_pp := lolikon.calculate_pp(beatmap_path, beatmap_mods)
    calc_stars := lolikon.calculate_stars(beatmap_path, beatmap_mods)

    println("PP: ${calc_pp} | Stars: ${calc_stars}")
}

```