/* Display a party member overview and pause briefly. */
extern int draw_party_member_overview();
extern int delay_ms();

/* Draw the overview for the selected party member. */
show_party_member_overview(member_index)
int member_index;
{
	draw_party_member_overview(member_index, 1, 1);
	delay_ms(1000);
}
