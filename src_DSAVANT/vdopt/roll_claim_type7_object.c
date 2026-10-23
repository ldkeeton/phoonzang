struct maze_tables {
	int key[240];
	int party_mask[240];
	int flags[240];
	unsigned char type[240];
	unsigned char x[240];
	unsigned char y[240];
	unsigned char map[240];
	unsigned char f960[240];
	unsigned char sound[240];	/* low 5 bits: type 7 difficulty level */
};

extern struct maze_tables *maze_tables;
extern int party_tag, pending_event, pending_event_hi;

/* roll against the type 7 object in the party's cell: claim it if the roll meets its level,
   then post event 0x841 + outcome; returns -1 if there is none */
roll_claim_type7_object(skill)
int skill;
{
	int tmp, level, key, roll, tagged, result, obj;

	obj = find_party_type7_object();
	if (obj == -1)		/* no type 7 object here */
		return -1;
	key = maze_tables->party_mask[obj];
	tmp = maze_tables->sound[obj];
	level = get_bits(tmp, 0, 5);	/* bits 0-4 */
	tagged = 0;
	tmp = maze_tables->flags[obj];
	if (get_bits(tmp, party_tag << 1, 2) == 2 && level == 0)	/* 2-bit field at bit 2 * party_tag */
		tagged = 1;
	result = 0;		/* 0 claimed, 1 roll below level, 2 already tagged */
	roll = (random_below(skill << 1) + random_below(skill << 1) + random_below(skill << 1) + 3) / 2;	/* three dice 0..2*skill-1 */
	if (roll < level)
		result = 1;
	if (tagged)
		result = 2;
	if (result == 0)
		claim_type7_object(obj);
	pending_event = result + 2113;
	pending_event_hi = result;
	return 0;
}
