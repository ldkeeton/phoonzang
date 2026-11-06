/* Advances the current NPC list selection and wraps it at the visible
   range. */
/* Moves the selection forward, returning to the first choice when needed. */
step_list_selection(selection, choice_count, visible_count)
int selection;
int choice_count;
int visible_count;
{
	if (selection >= choice_count)
		++selection;
	if (selection == -1 || selection < choice_count ||
		selection > choice_count + visible_count - 1)
		selection = choice_count;
	return selection;
}
