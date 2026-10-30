/* Choose and play one of the maze's ambient sound effects. */

extern int game_state_arg;
extern int party_map_piece;
extern int maze_sound_slot_f;
extern int random_below();
extern int play_sound_effect();

maybe_play_maze_ambient_sound()
{
	int sound_effect;

	/* Skip this sound check at the specified game state and map piece. */
	if (game_state_arg == 23 && party_map_piece == 15)
		return;

	/* Select sound 15 only for one random result when slot F is occupied. */
	sound_effect = (random_below(3) == 2 && maze_sound_slot_f != 0) ? 15 : 14;

	play_sound_effect(sound_effect);
}
