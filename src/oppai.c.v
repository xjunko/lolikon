module main

#flag -I @VMODROOT/src/c
#define OPPAI_IMPLEMENTATION
#include "../c/oppai.c"
#flag -lm

// C Decl
@[typedef]
struct C.ezpp_t {}

type EZPP_PTR = C.ezpp_t

// FNs
fn C.ezpp_new() EZPP_PTR
fn C.ezpp_free(EZPP_PTR)

fn C.ezpp(EZPP_PTR, &u8)

fn C.ezpp_pp(EZPP_PTR) f32
fn C.ezpp_stars(EZPP_PTR) f32

/*
* the above is all you need for basic usage. below are some advanced api's
 * and usage examples
 *
 * - if map is "-" the map is read from standard input
 * - you can use ezpp_data if you already have raw beatmap data in memory
 * - if autocalc is set to 1, the results will be automatically refreshed
 *   when you change parameters. if reparsing is required, the last passed
 *   map or map data will be used
 * - if map is 0 (NULL), difficulty calculation and map parsing are skipped
 *   and you must set at least mode, aim_stars, speed_stars, nobjects,
 *   base_ar, base_od, max_combo, nsliders, ncircles
 * - if aim_stars or speed_stars are set difficulty calculation is also
 *   skipped but values are taken from map
 * - setting mods or cs resets aim_stars and speed_stars, set those last
 * = setting end resets accuracy_percent
 * - if mode_override is set, std maps are converted to other modes
 * - mode defaults to MODE_STD or the map's mode
 * - mods default to MODS_NOMOD
 * - combo defaults to full combo
 * - nmiss defaults to 0
 * - score_version defaults to scorev1
 * - if accuracy_percent is set, n300/100/50 are automatically
 *   calculated and stored
 * - if n300/100/50 are set, accuracy_percent is automatically
 *   calculated and stored
 * - if none of the above are set, SS (100%) is assumed
 * - if end is set, the map will be cut to this object index
 * - if base_ar/od/cs are set, they will override the map's values
 * - when you change map and you're reusing the handle, you should reset
 *   ar/od/cs/hp to -1 otherwise it will override them with the previous
 *   map's values
 * - in autocalc mode, calling ezpp with a non-NULL map always resets
 *   ar/od/cs/hp overrides to -1 so you don't have to
*/

fn C.ezpp_set_autocalc(EZPP_PTR, int)
fn C.ezpp_autocalc(EZPP_PTR) int
fn C.ezpp_data(EZPP_PTR, u8, int) int
fn C.ezpp_aim_stars(EZPP_PTR) f32
fn C.ezpp_speed_stars(EZPP_PTR) f32
fn C.ezpp_aim_pp(EZPP_PTR) f32
fn C.ezpp_speed_pp(EZPP_PTR) f32
fn C.ezpp_acc_pp(EZPP_PTR) f32
fn C.ezpp_accuracy_percent(EZPP_PTR) f32
fn C.ezpp_n300(EZPP_PTR) int
fn C.ezpp_n100(EZPP_PTR) int
fn C.ezpp_n50(EZPP_PTR) int
fn C.ezpp_nmiss(EZPP_PTR) int
fn C.ezpp_ar(EZPP_PTR) f32
fn C.ezpp_cs(EZPP_PTR) f32
fn C.ezpp_od(EZPP_PTR) f32
fn C.ezpp_hp(EZPP_PTR) f32
fn C.ezpp_artist(EZPP_PTR) &u8
fn C.ezpp_artist_unicode(EZPP_PTR) &u8
fn C.ezpp_title(EZPP_PTR) &u8
fn C.ezpp_title_unicode(EZPP_PTR) &u8
fn C.ezpp_version(EZPP_PTR) &u8
fn C.ezpp_creator(EZPP_PTR) &u8
fn C.ezpp_ncircles(EZPP_PTR) int
fn C.ezpp_nsliders(EZPP_PTR) int
fn C.ezpp_nspinners(EZPP_PTR) int
fn C.ezpp_nobjects(EZPP_PTR) int
fn C.ezpp_odms(EZPP_PTR) f32
fn C.ezpp_mode(EZPP_PTR) int
fn C.ezpp_combo(EZPP_PTR) int
fn C.ezpp_max_combo(EZPP_PTR) int
fn C.ezpp_mods(EZPP_PTR) int
fn C.ezpp_score_version(EZPP_PTR) int
fn C.ezpp_time_at(EZPP_PTR, int) f32
fn C.ezpp_strain_at(EZPP_PTR, int, int) f32
fn C.ezpp_ntiming_points(EZPP_PTR) int
fn C.ezpp_timing_time(EZPP_PTR, int) f32
fn C.ezpp_timing_ms_per_beat(EZPP_PTR, int) f32
fn C.ezpp_timing_change(EZPP_PTR, int) int
fn C.ezpp_set_aim_stars(EZPP_PTR, f32)
fn C.ezpp_set_speed_stars(EZPP_PTR, f32)
fn C.ezpp_set_base_ar(EZPP_PTR, f32)
fn C.ezpp_set_base_od(EZPP_PTR, f32)
fn C.ezpp_set_base_cs(EZPP_PTR, f32)
fn C.ezpp_set_base_hp(EZPP_PTR, f32)
fn C.ezpp_set_mode_override(EZPP_PTR, int)
fn C.ezpp_set_mode(EZPP_PTR, int)
fn C.ezpp_set_mods(EZPP_PTR, int)
fn C.ezpp_set_combo(EZPP_PTR, int)
fn C.ezpp_set_nmiss(EZPP_PTR, int)
fn C.ezpp_set_score_version(EZPP_PTR, int)
fn C.ezpp_set_accuracy_percent(EZPP_PTR, f32)
fn C.ezpp_set_accuracy(EZPP_PTR, int, int)
fn C.ezpp_set_end(EZPP_PTR, int)
fn C.ezpp_set_end_time(EZPP_PTR, f32)
