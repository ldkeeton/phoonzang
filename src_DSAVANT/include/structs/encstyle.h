/* Return value of select_encumbrance_style. */
#ifndef ENCSTYLE_H
#define ENCSTYLE_H

struct encumbrance_style {
	int tier;             /* +0x00: adjustment used by the armor class display */
	int penalty_a;        /* +0x02 */
	int penalty_b;        /* +0x04 */
	int stat4_cap;        /* +0x06 */
	int stat5_cap;        /* +0x08 */
	int stamina_drain;    /* +0x0a */
	int text_color;       /* +0x0c */
};

#endif
