/* Draw the member status panel and its optional item page. */
extern int draw_member_summary_panel(), draw_member_armor_class();
extern int draw_member_item_page(), call_show_area();

/* Draw the member summary, armor class, and, when requested, items. */
draw_member_status_panel(member_index, summary_only)
int member_index, summary_only;
{
	draw_member_summary_panel(member_index);
	draw_member_armor_class(member_index);
	if (summary_only == 0) {
		draw_member_item_page(member_index);
		call_show_area(0, 0, 319, 199);
	}
}
