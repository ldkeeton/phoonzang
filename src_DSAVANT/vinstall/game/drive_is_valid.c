/* Checks whether the supplied drive letter is available. */
struct dos_registers {
	int ax;
	int bx;
	int cx;
	int dx;
	int si;
	int di;
	int bp;
	int flags;
};

extern int aztec_toupper();
extern int aztec_sysint();

/* Return zero when the drive letter maps to an available DOS drive. */
drive_is_valid(drive_letter)
char *drive_letter;
{
	struct dos_registers registers;
	int drive_index;

	/* Convert the first character to a zero-based alphabetic drive index. */
	drive_index = aztec_toupper(*drive_letter) - 'A';
	/* Only alphabetic indices map to drive letters. */
	if (drive_index < 0)
		goto invalid_drive;
	if (drive_index > 25)
		goto invalid_drive;

	/* DOS function 0Eh selects DL as the default drive. */
	/* Read back the normalized index for DL. */
	registers.dx = *(volatile int *)&drive_index;
	registers.ax = 3584;
	aztec_sysint(33, &registers, &registers);

	/* DOS function 19h reports the selected default drive in AL. */
	registers.ax = 6400;
	aztec_sysint(33, &registers, &registers);
	if ((registers.ax & 255) != drive_index) {
		return -1;
	} else {
		goto drive_available;
	}

invalid_drive:
	return -1;

drive_available:
	return 0;
}
