/* Draws the recessed panel and visible item rows in the NPC item list. */
extern int draw_inset_panel(), draw_npc_item_list_rows();

draw_npc_item_list_panel(member_index, panel_x, panel_y, panel_width,
	panel_height, first_item_index, selected_item_index, visible_rows)
int member_index;
int panel_x;
int panel_y;
int panel_width;
int panel_height;
int first_item_index;
int selected_item_index;
int visible_rows;
{
	draw_inset_panel(panel_x, panel_y,
		panel_x + 6 * panel_width + 2,
		panel_y + 6 * panel_height);
	draw_npc_item_list_rows(member_index, panel_x, panel_y, panel_width,
		visible_rows, first_item_index, selected_item_index);
}
