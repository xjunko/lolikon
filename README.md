# Lolikon 
Simple C wrapper for the amazing [[oppai-ng]](https://github.com/Francesco149/oppai-ng) library!

## Install
`v install https://github.com/xjunko/lolikon`

## Features
* Everything that oppai-ng does.

## Notes
* Everything is translated as is, the only thing that's different is the function name; `ezpp_new()` become `new()`, except for one function, `ezpp_free()`.

## Examples
Simple API
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
Underlying API
```v
import lolikon

fn main() {
    beatmap_path := "~/ばか/maps/1.osu"
    beatmap_mods := 0

    ctx = lolikon.new()

    lolikon.set_mods(ctx, beatmap_mods)
    lolikon.set_map(ctx, beatmap_path)

    calc_pp := lolikon.pp(ctx)
    calc_stars := lolikon.stars(ctx)

    println("PP: ${calc_pp} | Stars: ${calc_stars}")
}
```