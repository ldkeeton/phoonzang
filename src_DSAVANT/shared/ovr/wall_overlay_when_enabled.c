/* Return the requested wall overlay when its animation phase is enabled. */
extern int side_wall_animation_phase;

wall_overlay_when_enabled(overlay_index)
int overlay_index;
{
	/* -1 marks that no wall overlay should be drawn. */
	return side_wall_animation_phase ? overlay_index : -1;
}
