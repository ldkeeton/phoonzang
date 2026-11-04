/* Sets the BIOS video mode through INT 10h. */
struct bios_registers {
	int ax;
	int bx;
	int cx;
	int dx;
	int si;
	int di;
	int bp;
	int flags;
};

extern int aztec_sysint();

/* Pass the requested mode in AX to BIOS interrupt 10h. */
set_video_mode(video_mode)
int video_mode;
{
	struct bios_registers registers;

	registers.ax = video_mode;
	aztec_sysint(16, &registers, &registers);
}
