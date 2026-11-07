/* Checks whether the supplied drive letter is available. */
struct dos_registers {
	unsigned ax;
	unsigned bx;
	unsigned cx;
	unsigned dx;
	unsigned si;
	unsigned di;
	unsigned bp;
	unsigned flags;
};

extern int toupper();
extern int sysint();

/* Return zero when the drive letter maps to an available DOS drive. */
drive_is_valid(drive_letter)
char *drive_letter;
{
	struct dos_registers registers;
	int drive_index;

	/* Convert the first character to a zero-based alphabetic drive index. */
	drive_index = toupper(*drive_letter) - 'A';
	/* Only alphabetic indices map to drive letters. */
	if (drive_index >= 0 && drive_index <= 25) {
		/* DOS function 0Eh selects DL as the default drive. */
		registers.dx = drive_index;
		registers.ax = 3584;
		sysint(33, &registers, &registers);
		/* DOS function 19h reports the selected default drive in AL. */
		registers.ax = 6400;
		sysint(33, &registers, &registers);
		if ((registers.ax & 255) != drive_index)
			return -1;
	} else
		return -1;
	return 0;
}
