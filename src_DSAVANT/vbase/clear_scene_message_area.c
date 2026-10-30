/* Clear the scene message strip by filling its screen rectangle with color
   zero. */
extern int call_fill_area();

clear_scene_message_area()
{
	/* The scene message strip spans x=0..319 and y=146..198. */
	call_fill_area(0, 146, 319, 198, 0);
}
