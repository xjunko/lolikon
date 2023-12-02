bruh: str = """
void ezpp_set_autocalc(ezpp_t ez, int autocalc);
 int ezpp_autocalc(ezpp_t ez);
 int ezpp_data(ezpp_t ez, char *data, int data_size);
 float ezpp_aim_stars(ezpp_t ez);
 float ezpp_speed_stars(ezpp_t ez);
 float ezpp_aim_pp(ezpp_t ez);
 float ezpp_speed_pp(ezpp_t ez);
 float ezpp_acc_pp(ezpp_t ez);
 float ezpp_accuracy_percent(ezpp_t ez);
 int ezpp_n300(ezpp_t ez);
 int ezpp_n100(ezpp_t ez);
 int ezpp_n50(ezpp_t ez);
 int ezpp_nmiss(ezpp_t ez);
 float ezpp_ar(ezpp_t ez);
 float ezpp_cs(ezpp_t ez);
 float ezpp_od(ezpp_t ez);
 float ezpp_hp(ezpp_t ez);
 char *ezpp_artist(ezpp_t ez);
 char *ezpp_artist_unicode(ezpp_t ez);
 char *ezpp_title(ezpp_t ez);
 char *ezpp_title_unicode(ezpp_t ez);
 char *ezpp_version(ezpp_t ez);
 char *ezpp_creator(ezpp_t ez);
 int ezpp_ncircles(ezpp_t ez);
 int ezpp_nsliders(ezpp_t ez);
 int ezpp_nspinners(ezpp_t ez);
 int ezpp_nobjects(ezpp_t ez);
 float ezpp_odms(ezpp_t ez);
 int ezpp_mode(ezpp_t ez);
 int ezpp_combo(ezpp_t ez);
 int ezpp_max_combo(ezpp_t ez);
 int ezpp_mods(ezpp_t ez);
 int ezpp_score_version(ezpp_t ez);
 float ezpp_time_at(ezpp_t ez, int i); /* milliseconds */
 float ezpp_strain_at(ezpp_t ez, int i, int difficulty_type);
 int ezpp_ntiming_points(ezpp_t ez);
 float ezpp_timing_time(ezpp_t ez, int i); /* milliseconds */
 float ezpp_timing_ms_per_beat(ezpp_t ez, int i);
 int ezpp_timing_change(ezpp_t ez, int i);

 void ezpp_set_aim_stars(ezpp_t ez, float aim_stars);
 void ezpp_set_speed_stars(ezpp_t ez, float speed_stars);
 void ezpp_set_base_ar(ezpp_t ez, float ar);
 void ezpp_set_base_od(ezpp_t ez, float od);
 void ezpp_set_base_cs(ezpp_t ez, float cs);
 void ezpp_set_base_hp(ezpp_t ez, float hp);
 void ezpp_set_mode_override(ezpp_t ez, int mode_override);
 void ezpp_set_mode(ezpp_t ez, int mode);
 void ezpp_set_mods(ezpp_t ez, int mods);
 void ezpp_set_combo(ezpp_t ez, int combo);
 void ezpp_set_nmiss(ezpp_t ez, int nmiss);
 void ezpp_set_score_version(ezpp_t ez, int score_version);
 void ezpp_set_accuracy_percent(ezpp_t ez, float accuracy_percent);
 void ezpp_set_accuracy(ezpp_t ez, int n100, int n50);
 void ezpp_set_end(ezpp_t ez, int end);
 void ezpp_set_end_time(ezpp_t ez, float end);
"""

for line in bruh.split("\n"):
    if not line:
        continue

    items = line.strip().split(" ", 1)

    ret_typ = (
        items[0]
        .replace("void", "")
        .replace("float", "f32")
        .replace("char", "u8")
        .replace("int", "int")
    )

    fn_def = items[1].replace(";", "").split("(", 1)

    fn_name = fn_def[0]
    fn_arg = ""

    ret_ptr = fn_name.strip().startswith("*")

    for argument in fn_def[1:][0].split(","):
        if not fn_arg:
            fn_arg += argument.strip().split(" ", 1)[0]
        else:
            fn_arg += ", " + argument.strip().split(" ", 1)[0]

    if ret_ptr:
        ret_ptr = "&"
        fn_name = fn_name[1:]
    else:
        ret_ptr = ""

    fn_arg = (
        fn_arg.replace("void", "")
        .replace("float", "f32")
        .replace("char", "u8")
        .replace("int", "int")
        .replace("ezpp_t", "EZPP_PTR")
    )

    print("fn C.", fn_name, "(", fn_arg, ") ", ret_ptr, ret_typ, sep="")
