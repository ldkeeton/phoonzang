/* Apply a signed spell adjustment, using the mode to select its direction. */
adjust_spell_value(amount, value, mode)
int amount, value, mode;
{
	/* Mode 1 subtracts from positive values and bounds the rest at -amount. */
	if (mode == 1) {
		if (value > 0)
			value -= amount;
		else if (0 - amount < value)
			value = 0 - amount;
	} else if (mode == 0) {
		/* Mode 0 adds to negative values and bounds the rest at amount. */
		if (value < 0)
			value += amount;
		else if (value < amount)
			value = amount;
	}
	return value;
}
