/*
 * Translate an imported Bane item number to this game's item number.
 * Returns 0 for an item that is dropped, the negated number for items in the
 * ranges the import flags, and otherwise the item's (possibly remapped)
 * number.
 */
int
map_bane_item_number(bane_item)
int bane_item;
{
	/* These Bane items have no counterpart and are dropped. */
	switch (bane_item) {
	case 28:
	case 38:
	case 54:
	case 56:
	case 57:
	case 61:
	case 66:
	case 67:
	case 70:
	case 71:
	case 72:
	case 73:
	case 74:
	case 78:
	case 79:
	case 82:
	case 84:
	case 90:
	case 92:
	case 98:
	case 100:
	case 101:
	case 117:
	case 118:
	case 119:
	case 151:
	case 174:
	case 178:
	case 181:
	case 189:
	case 194:
	case 197:
	case 202:
	case 203:
	case 210:
	case 211:
	case 331:
		return 0;
	}
	/* Items 60-119 and 184-226 are returned negated. */
	if (bane_item >= 60 && bane_item < 120)
		return 0 - bane_item;
	if (bane_item >= 184 && bane_item < 227)
		return 0 - bane_item;
	/* Any other item below 227 keeps its number. */
	if (bane_item < 227)
		return bane_item;
	/* Individually remapped items. */
	if (bane_item == 325)
		return 314;
	if (bane_item == 326)
		return 331;
	if (bane_item >= 316 && bane_item <= 332)
		return bane_item;
	if (bane_item == 427)
		return -82;
	if (bane_item == 472)
		return 245;
	if (bane_item == 473)
		return 244;
	/*
	 * Only these remaining items are kept, those below 254 negated;
	 * everything else is dropped.
	 */
	switch (bane_item) {
	case 234:
	case 236:
	case 241:
	case 245:
	case 252:
	case 253:
	case 260:
	case 261:
	case 262:
	case 263:
	case 278:
	case 284:
	case 301:
	case 305:
	case 306:
	case 307:
	case 308:
	case 309:
	case 313:
		if (bane_item >= 227 && bane_item < 254)
			return 0 - bane_item;
		return bane_item;
	}
	return 0;
}
