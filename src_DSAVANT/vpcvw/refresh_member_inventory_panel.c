/* Refresh a party member inventory panel. */
extern int draw_member_summary_panel();
extern int draw_member_armor_class();
extern int draw_member_item_page();
extern int draw_selected_item_list_entry();
extern int call_show_area();

/* Draw member details and refresh the item area when requested. */
refresh_member_inventory_panel(member_index, show_item_page)
int member_index;
int show_item_page;
{
	draw_member_summary_panel(member_index);
	draw_member_armor_class(member_index);
	if (!show_item_page) {
		draw_member_item_page(member_index);
		draw_selected_item_list_entry();
		call_show_area(0, 0, 319, 199);
	}
}
