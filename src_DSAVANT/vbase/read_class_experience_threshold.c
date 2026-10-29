/* Read the class record and return its experience threshold for levels
   2-15. */
extern int data_record_io();

long read_class_experience_threshold(class_number, level)
int class_number, level;
{
	long experience_thresholds[16];

	data_record_io(0, experience_thresholds, class_number, 0);
	/* The first table entry belongs to level two. */
	if (level > 1 && level < 16)
		return experience_thresholds[level - 2];
	return 0L;
}
