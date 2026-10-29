/* Map a selector index to the corresponding party option code. */
map_bane_party_selector(selector_index)
int selector_index;
{
	/* These values are the sparse party option codes for selector slots 0-78. */
	switch (selector_index) {
	case 0: return 0;
	case 1: return 1;
	case 2: return 3;
	case 3: return 4;
	case 4: return 6;
	case 5: return 7;
	case 6: return 8;
	case 7: return 9;
	case 8: return 10;
	case 9: return 11;
	case 10: return 12;
	case 11: return 13;
	case 12: return 14;
	case 13: return 15;
	case 14: return 16;
	case 15: return 17;
	case 16: return 18;
	case 17: return 20;
	case 18: return 21;
	case 19: return 23;
	case 20: return 26;
	case 21: return 27;
	case 22: return 29;
	case 23: return 30;
	case 24: return 31;
	case 25: return 32;
	case 26: return 33;
	case 27: return 34;
	case 28: return 35;
	case 29: return 36;
	case 30: return 37;
	case 31: return 38;
	case 32: return 39;
	case 33: return 40;
	case 34: return 41;
	case 35: return 43;
	case 36: return 44;
	case 37: return 45;
	case 38: return 46;
	case 39: return 47;
	case 40: return 48;
	case 41: return 49;
	case 42: return 50;
	case 43: return 52;
	case 44: return 53;
	case 45: return 55;
	case 46: return 56;
	case 47: return 57;
	case 48: return 58;
	case 49: return 59;
	case 50: return 60;
	case 51: return 61;
	case 52: return 62;
	case 53: return 63;
	case 54: return 64;
	case 55: return 67;
	case 56: return 68;
	case 57: return 69;
	case 58: return 70;
	case 59: return 71;
	case 60: return 72;
	case 61: return 74;
	case 62: return 75;
	case 63: return 76;
	case 64: return 78;
	case 65: return 79;
	case 66: return 80;
	case 67: return 81;
	case 68: return 82;
	case 69: return 83;
	case 70: return 84;
	case 71: return 85;
	case 72: return 86;
	case 73: return 87;
	case 74: return 89;
	case 75: return 90;
	case 76: return 93;
	case 77: return 94;
	case 78: return 95;
	}
	/* Values outside the selector table return the all-ones sentinel. */
	return -1;
}
