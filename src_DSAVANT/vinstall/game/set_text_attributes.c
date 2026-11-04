/* Sets the text attributes used by the vinstall screen. */

extern unsigned char put_text_attribute;
extern unsigned char highlight_text_attribute;
extern unsigned char alt_text_attribute;
extern unsigned char clear_attribute;

set_text_attributes()
{
	put_text_attribute = 31;
	highlight_text_attribute = 46;
	/* The second assignment replaces the earlier highlight value. */
	highlight_text_attribute = 112;
	alt_text_attribute = 78;
	clear_attribute = 31;
	clear_screen_home_cursor();
}
