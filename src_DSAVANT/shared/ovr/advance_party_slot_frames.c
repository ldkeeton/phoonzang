/* Party slot animation frame updates. */
extern int party_slot_frame[];
extern int party_slot_glyphs[6][10];

/* Advance selected slot frames and wrap at the glyph terminator. */
advance_party_slot_frames(selected_slot)
int selected_slot;
{
	int slot;

	slot = 0;
	do {
		if (selected_slot < 0 || slot == selected_slot)
			++party_slot_frame[slot];	/* Negative selection advances all slots. */
		if (party_slot_glyphs[slot][party_slot_frame[slot]] == -1)
			party_slot_frame[slot] = 0;	/* Wrap at the glyph terminator. */
	} while (++slot < 6);
}
