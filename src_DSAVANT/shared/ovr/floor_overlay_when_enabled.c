/* Return the requested floor overlay when the checker parity is enabled. */
extern int floor_checker_parity;

floor_overlay_when_enabled(overlay_index)
int overlay_index;
{
	/* -1 marks that no floor overlay should be drawn. */
	return floor_checker_parity ? overlay_index : -1;
}
