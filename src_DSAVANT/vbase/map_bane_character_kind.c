/* Map imported Bane character codes to the DSAVANT character kind. */
int
map_bane_character_kind(glyph_set, gender, profession)
int glyph_set, gender, profession;
{
	/* These six glyph sets have a direct kind mapping with gender variants. */
	switch (glyph_set) {
	case 5: return gender == 0 ? 13 : 12;
	case 6: return 26;
	case 7: return 24;
	case 8: return gender == 0 ? 3 : 8;
	case 9: return gender == 0 ? 5 : 7;
	case 10: return 22;
	}

	/* Profession 13 uses the same kind for all remaining glyph sets. */
	if (profession == 13)
		return 18;

	if (glyph_set == 1) {
		/* Glyph set 1 uses its own profession-to-kind table. */
		switch (profession) {
		case 0:
		case 8:
		case 10: return gender == 0 ? 32 : 10;
		case 1:
		case 2:
		case 5:
		case 7: return gender == 0 ? 28 : 31;
		case 3:
		case 4:
		case 6: return 1;
		case 11: return gender == 0 ? 6 : 27;
		case 9:
		case 12: return gender == 0 ? 28 : 15;
		}
	}

	if (glyph_set == 2 || glyph_set == 4 || glyph_set == 3) {
		/* Glyph sets 2, 3, and 4 share another profession table. */
		switch (profession) {
		case 0:
		case 8:
		case 10: return gender == 0 ? 4 : 29;
		case 1:
		case 2:
		case 5:
		case 7:
		case 9: return gender == 0 ? 11 : 17;
		case 6: return gender == 0 ? 16 : 14;
		case 3:
		case 4:
		case 12: return gender == 0 ? 16 : 29;
		case 11: return gender == 0 ? 6 : 27;
		}
	}

	/* Other glyph sets and out-of-range professions use this table. */
	switch (profession) {
		case 1:
		case 5: return gender == 0 ? 2 : 0;
		case 2:
		case 7: return gender == 0 ? 30 : 0;
		case 3:
		case 6: return gender == 0 ? 21 : 14;
		case 4: return gender == 0 ? 9 : 19;
		case 8:
		case 10: return gender == 0 ? 20 : 10;
		case 9: return gender == 0 ? 25 : 15;
		case 11: return gender == 0 ? 6 : 27;
		case 12: return gender == 0 ? 30 : 15;
	}

	/* Profession zero and values outside the table use its default kind. */
	return gender == 0 ? 23 : 19;
}
