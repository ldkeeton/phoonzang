/* Character profession eligibility checks. */
extern int evaluate_character_profession();

/* Check every profession for a character without allocating stat points. */
evaluate_character_professions(character)
int character;
{
	int profession;

	for (profession = 0; profession <= 13; profession++) { /* Fourteen entries. */
		evaluate_character_profession(character, profession, 0); /* Check only. */
	}
}
