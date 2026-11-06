/* Displays the spacebar prompt and waits for input. */
extern int draw_saved_text_area();
extern int poll_fullscreen_hotspot();
extern int call_show_area();
extern char spacebar_prompt_text[];

/* Show the prompt area until the fullscreen hotspot detects input. */
wait_for_spacebar_prompt()
{
	int unused1, unused2;	/* frame words the original never uses */

	draw_saved_text_area(1, 192, 7, 198, 2, 193, 26, 1, 1,
		spacebar_prompt_text);
	while (!poll_fullscreen_hotspot())
		;
	call_show_area(1, 192, 7, 198);
}
