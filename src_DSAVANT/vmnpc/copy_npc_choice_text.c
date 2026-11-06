/* Copy the plain or expanded form of a dialog choice text. */
extern int copy_npc_choice_text_prefix();
extern int copy_npc_choice_text_expanded();

copy_npc_choice_text(record_index, include_suffix, destination)
int record_index;
int include_suffix;
char *destination;
{
	if (include_suffix == 0)
		copy_npc_choice_text_prefix(record_index, destination);
	else
		copy_npc_choice_text_expanded(record_index, destination);
}
