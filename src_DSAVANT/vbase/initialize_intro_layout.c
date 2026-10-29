/* Store ten intro-layout bytes in their scalar and spaced copies. */
extern unsigned char intro_layout_value_1, intro_layout_value_2;
extern unsigned char intro_layout_value_3, intro_layout_value_4;
extern unsigned char intro_layout_value_5, intro_layout_value_6;
extern unsigned char intro_layout_value_7, intro_layout_value_8;
extern unsigned char intro_layout_value_9, intro_layout_value_10;
extern unsigned char intro_layout_copy_1, intro_layout_copy_2;
extern unsigned char intro_layout_copy_3, intro_layout_copy_4;
extern unsigned char intro_layout_copy_5, intro_layout_copy_6;
extern unsigned char intro_layout_copy_7, intro_layout_copy_8;
extern unsigned char intro_layout_copy_9, intro_layout_copy_10;

initialize_intro_layout(value_1, value_2, value_3, value_4, value_5, value_6,
	value_7, value_8, value_9, value_10)
int value_1, value_2, value_3, value_4, value_5, value_6, value_7, value_8,
	value_9, value_10;
{
	/* Each supplied byte is mirrored into a spaced layout slot. */
	intro_layout_value_1 = value_1;
	intro_layout_copy_1 = value_1;
	intro_layout_value_2 = value_2;
	intro_layout_copy_2 = value_2;
	intro_layout_value_3 = value_3;
	intro_layout_copy_3 = value_3;
	intro_layout_value_4 = value_4;
	intro_layout_copy_4 = value_4;
	intro_layout_value_5 = value_5;
	intro_layout_copy_5 = value_5;
	intro_layout_value_6 = value_6;
	intro_layout_copy_6 = value_6;
	intro_layout_value_7 = value_7;
	intro_layout_copy_7 = value_7;
	intro_layout_value_8 = value_8;
	intro_layout_copy_8 = value_8;
	intro_layout_value_9 = value_9;
	intro_layout_copy_9 = value_9;
	intro_layout_value_10 = value_10;
	intro_layout_copy_10 = value_10;
}
