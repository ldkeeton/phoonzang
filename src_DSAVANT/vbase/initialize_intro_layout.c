/* Set faction 0's attitude to factions 1-10, both ways round: row 0 and
   column 0 of the faction attitude matrix. */
extern char faction_attitudes[12][12];

initialize_intro_layout(value_1, value_2, value_3, value_4, value_5, value_6,
	value_7, value_8, value_9, value_10)
int value_1, value_2, value_3, value_4, value_5, value_6, value_7, value_8,
	value_9, value_10;
{
	faction_attitudes[0][1] = value_1;
	faction_attitudes[1][0] = value_1;
	faction_attitudes[0][2] = value_2;
	faction_attitudes[2][0] = value_2;
	faction_attitudes[0][3] = value_3;
	faction_attitudes[3][0] = value_3;
	faction_attitudes[0][4] = value_4;
	faction_attitudes[4][0] = value_4;
	faction_attitudes[0][5] = value_5;
	faction_attitudes[5][0] = value_5;
	faction_attitudes[0][6] = value_6;
	faction_attitudes[6][0] = value_6;
	faction_attitudes[0][7] = value_7;
	faction_attitudes[7][0] = value_7;
	faction_attitudes[0][8] = value_8;
	faction_attitudes[8][0] = value_8;
	faction_attitudes[0][9] = value_9;
	faction_attitudes[9][0] = value_9;
	faction_attitudes[0][10] = value_10;
	faction_attitudes[10][0] = value_10;
}
