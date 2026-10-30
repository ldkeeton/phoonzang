/* Dissolve or show the scene message strip. */
extern int dissolve_or_show_area();

dissolve_scene_message_area()
{
	/* The effect covers the message strip at x=12..318, y=146..198. */
	dissolve_or_show_area(12, 146, 318, 198);
}
