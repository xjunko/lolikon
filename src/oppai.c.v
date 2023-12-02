module lolikon

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
pub fn new() EZPP_PTR {
	return C.ezpp_new()
}

fn C.ezpp_free(EZPP_PTR)
pub fn ezpp_free(ez EZPP_PTR) {
	C.ezpp_free(ez)
}

fn C.ezpp(EZPP_PTR, &u8)
pub fn set_map(ez EZPP_PTR, data string) {
	C.ezpp(ez, data.str)
}

fn C.ezpp_pp(EZPP_PTR) f32
pub fn pp(ez EZPP_PTR) f32 {
	return C.ezpp_pp(ez)
}

fn C.ezpp_stars(EZPP_PTR) f32
pub fn stars(ez EZPP_PTR) f32 {
	return C.ezpp_stars(ez)
}

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
pub fn set_autocalc(ez EZPP_PTR, value_1 int) {
	C.ezpp_set_autocalc(ez, value_1)
}

fn C.ezpp_autocalc(EZPP_PTR) int
pub fn autocalc(ez EZPP_PTR) int {
	return C.ezpp_autocalc(ez)
}

fn C.ezpp_data(EZPP_PTR, u8, int) int
pub fn data(ez EZPP_PTR, value_1 u8, value_2 int) int {
	return C.ezpp_data(ez, value_1, value_2)
}

fn C.ezpp_aim_stars(EZPP_PTR) f32
pub fn aim_stars(ez EZPP_PTR) f32 {
	return C.ezpp_aim_stars(ez)
}

fn C.ezpp_speed_stars(EZPP_PTR) f32
pub fn speed_stars(ez EZPP_PTR) f32 {
	return C.ezpp_speed_stars(ez)
}

fn C.ezpp_aim_pp(EZPP_PTR) f32
pub fn aim_pp(ez EZPP_PTR) f32 {
	return C.ezpp_aim_pp(ez)
}

fn C.ezpp_speed_pp(EZPP_PTR) f32
pub fn speed_pp(ez EZPP_PTR) f32 {
	return C.ezpp_speed_pp(ez)
}

fn C.ezpp_acc_pp(EZPP_PTR) f32
pub fn acc_pp(ez EZPP_PTR) f32 {
	return C.ezpp_acc_pp(ez)
}

fn C.ezpp_accuracy_percent(EZPP_PTR) f32
pub fn accuracy_percent(ez EZPP_PTR) f32 {
	return C.ezpp_accuracy_percent(ez)
}

fn C.ezpp_n300(EZPP_PTR) int
pub fn n300(ez EZPP_PTR) int {
	return C.ezpp_n300(ez)
}

fn C.ezpp_n100(EZPP_PTR) int
pub fn n100(ez EZPP_PTR) int {
	return C.ezpp_n100(ez)
}

fn C.ezpp_n50(EZPP_PTR) int
pub fn n50(ez EZPP_PTR) int {
	return C.ezpp_n50(ez)
}

fn C.ezpp_nmiss(EZPP_PTR) int
pub fn nmiss(ez EZPP_PTR) int {
	return C.ezpp_nmiss(ez)
}

fn C.ezpp_ar(EZPP_PTR) f32
pub fn ar(ez EZPP_PTR) f32 {
	return C.ezpp_ar(ez)
}

fn C.ezpp_cs(EZPP_PTR) f32
pub fn cs(ez EZPP_PTR) f32 {
	return C.ezpp_cs(ez)
}

fn C.ezpp_od(EZPP_PTR) f32
pub fn od(ez EZPP_PTR) f32 {
	return C.ezpp_od(ez)
}

fn C.ezpp_hp(EZPP_PTR) f32
pub fn hp(ez EZPP_PTR) f32 {
	return C.ezpp_hp(ez)
}

fn C.ezpp_artist(EZPP_PTR) &u8
pub fn artist(ez EZPP_PTR) &u8 {
	return C.ezpp_artist(ez)
}

fn C.ezpp_artist_unicode(EZPP_PTR) &u8
pub fn artist_unicode(ez EZPP_PTR) &u8 {
	return C.ezpp_artist_unicode(ez)
}

fn C.ezpp_title(EZPP_PTR) &u8
pub fn title(ez EZPP_PTR) &u8 {
	return C.ezpp_title(ez)
}

fn C.ezpp_title_unicode(EZPP_PTR) &u8
pub fn title_unicode(ez EZPP_PTR) &u8 {
	return C.ezpp_title_unicode(ez)
}

fn C.ezpp_version(EZPP_PTR) &u8
pub fn version(ez EZPP_PTR) &u8 {
	return C.ezpp_version(ez)
}

fn C.ezpp_creator(EZPP_PTR) &u8
pub fn creator(ez EZPP_PTR) &u8 {
	return C.ezpp_creator(ez)
}

fn C.ezpp_ncircles(EZPP_PTR) int
pub fn ncircles(ez EZPP_PTR) int {
	return C.ezpp_ncircles(ez)
}

fn C.ezpp_nsliders(EZPP_PTR) int
pub fn nsliders(ez EZPP_PTR) int {
	return C.ezpp_nsliders(ez)
}

fn C.ezpp_nspinners(EZPP_PTR) int
pub fn nspinners(ez EZPP_PTR) int {
	return C.ezpp_nspinners(ez)
}

fn C.ezpp_nobjects(EZPP_PTR) int
pub fn nobjects(ez EZPP_PTR) int {
	return C.ezpp_nobjects(ez)
}

fn C.ezpp_odms(EZPP_PTR) f32
pub fn odms(ez EZPP_PTR) f32 {
	return C.ezpp_odms(ez)
}

fn C.ezpp_mode(EZPP_PTR) int
pub fn mode(ez EZPP_PTR) int {
	return C.ezpp_mode(ez)
}

fn C.ezpp_combo(EZPP_PTR) int
pub fn combo(ez EZPP_PTR) int {
	return C.ezpp_combo(ez)
}

fn C.ezpp_max_combo(EZPP_PTR) int
pub fn max_combo(ez EZPP_PTR) int {
	return C.ezpp_max_combo(ez)
}

fn C.ezpp_mods(EZPP_PTR) int
pub fn mods(ez EZPP_PTR) int {
	return C.ezpp_mods(ez)
}

fn C.ezpp_score_version(EZPP_PTR) int
pub fn score_version(ez EZPP_PTR) int {
	return C.ezpp_score_version(ez)
}

fn C.ezpp_time_at(EZPP_PTR, int) f32
pub fn time_at(ez EZPP_PTR, value_1 int) f32 {
	return C.ezpp_time_at(ez, value_1)
}

fn C.ezpp_strain_at(EZPP_PTR, int, int) f32
pub fn strain_at(ez EZPP_PTR, value_1 int, value_2 int) f32 {
	return C.ezpp_strain_at(ez, value_1, value_2)
}

fn C.ezpp_ntiming_points(EZPP_PTR) int
pub fn ntiming_points(ez EZPP_PTR) int {
	return C.ezpp_ntiming_points(ez)
}

fn C.ezpp_timing_time(EZPP_PTR, int) f32
pub fn timing_time(ez EZPP_PTR, value_1 int) f32 {
	return C.ezpp_timing_time(ez, value_1)
}

fn C.ezpp_timing_ms_per_beat(EZPP_PTR, int) f32
pub fn timing_ms_per_beat(ez EZPP_PTR, value_1 int) f32 {
	return C.ezpp_timing_ms_per_beat(ez, value_1)
}

fn C.ezpp_timing_change(EZPP_PTR, int) int
pub fn timing_change(ez EZPP_PTR, value_1 int) int {
	return C.ezpp_timing_change(ez, value_1)
}

fn C.ezpp_set_aim_stars(EZPP_PTR, f32)
pub fn set_aim_stars(ez EZPP_PTR, value_1 f32) {
	C.ezpp_set_aim_stars(ez, value_1)
}

fn C.ezpp_set_speed_stars(EZPP_PTR, f32)
pub fn set_speed_stars(ez EZPP_PTR, value_1 f32) {
	C.ezpp_set_speed_stars(ez, value_1)
}

fn C.ezpp_set_base_ar(EZPP_PTR, f32)
pub fn set_base_ar(ez EZPP_PTR, value_1 f32) {
	C.ezpp_set_base_ar(ez, value_1)
}

fn C.ezpp_set_base_od(EZPP_PTR, f32)
pub fn set_base_od(ez EZPP_PTR, value_1 f32) {
	C.ezpp_set_base_od(ez, value_1)
}

fn C.ezpp_set_base_cs(EZPP_PTR, f32)
pub fn set_base_cs(ez EZPP_PTR, value_1 f32) {
	C.ezpp_set_base_cs(ez, value_1)
}

fn C.ezpp_set_base_hp(EZPP_PTR, f32)
pub fn set_base_hp(ez EZPP_PTR, value_1 f32) {
	C.ezpp_set_base_hp(ez, value_1)
}

fn C.ezpp_set_mode_override(EZPP_PTR, int)
pub fn set_mode_override(ez EZPP_PTR, value_1 int) {
	C.ezpp_set_mode_override(ez, value_1)
}

fn C.ezpp_set_mode(EZPP_PTR, int)
pub fn set_mode(ez EZPP_PTR, value_1 int) {
	C.ezpp_set_mode(ez, value_1)
}

fn C.ezpp_set_mods(EZPP_PTR, int)
pub fn set_mods(ez EZPP_PTR, value_1 int) {
	C.ezpp_set_mods(ez, value_1)
}

fn C.ezpp_set_combo(EZPP_PTR, int)
pub fn set_combo(ez EZPP_PTR, value_1 int) {
	C.ezpp_set_combo(ez, value_1)
}

fn C.ezpp_set_nmiss(EZPP_PTR, int)
pub fn set_nmiss(ez EZPP_PTR, value_1 int) {
	C.ezpp_set_nmiss(ez, value_1)
}

fn C.ezpp_set_score_version(EZPP_PTR, int)
pub fn set_score_version(ez EZPP_PTR, value_1 int) {
	C.ezpp_set_score_version(ez, value_1)
}

fn C.ezpp_set_accuracy_percent(EZPP_PTR, f32)
pub fn set_accuracy_percent(ez EZPP_PTR, value_1 f32) {
	C.ezpp_set_accuracy_percent(ez, value_1)
}

fn C.ezpp_set_accuracy(EZPP_PTR, int, int)
pub fn set_accuracy(ez EZPP_PTR, value_1 int, value_2 int) {
	C.ezpp_set_accuracy(ez, value_1, value_2)
}

fn C.ezpp_set_end(EZPP_PTR, int)
pub fn set_end(ez EZPP_PTR, value_1 int) {
	C.ezpp_set_end(ez, value_1)
}

fn C.ezpp_set_end_time(EZPP_PTR, f32)
pub fn set_end_time(ez EZPP_PTR, value_1 f32) {
	C.ezpp_set_end_time(ez, value_1)
}
