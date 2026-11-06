/* Set the graphics text cursor at a menu row. */
extern int call_set_text_pos();

set_menu_text_position(x, row)
int x;
int row;
{
	call_set_text_pos(x, 156 + row * 7);
}
