/* Combat overlay entry: in combat (game_state 13) glide the pointer to the
   panel, run one combat round, then glide it back. */
extern int combat_overlay_entry_flag;
extern int game_state;
extern int mouse_pointer_shape, mouse_pointer_shape_seg;
extern int set_mouse_pointer_shape();
extern int call_mouse_glide_to(), call_mouse_glide_back();
extern int run_combat_round();

ovmain()
{
	combat_overlay_entry_flag = 0;
	if (game_state == 13) {
		set_mouse_pointer_shape(mouse_pointer_shape, mouse_pointer_shape_seg);
		call_mouse_glide_to(302, 164, 0);
		run_combat_round();
		call_mouse_glide_back(302, 164, 0);
		set_mouse_pointer_shape(0L);
	}
	return 0;
}
