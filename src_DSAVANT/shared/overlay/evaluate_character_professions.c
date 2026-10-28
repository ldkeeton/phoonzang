/* Character profession eligibility checks. */
extern int check_profession_requirements();

/* Check every profession for a character without allocating stat points. */
evaluate_character_professions(character)
int character;
{
	int profession;

	for (profession = 0; profession <= 13; profession++) { /* Fourteen entries. */
		check_profession_requirements(character, profession, 0); /* Check only. */
	}
}
