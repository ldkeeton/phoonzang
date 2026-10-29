/* turns 3-byte RGB triples into a 6-bit palette, scaling values around the
   0x20 midpoint, then builds a 512-byte colour map and installs the palette */

void
build_palette_map(base, scale, src)
int base;
int scale;
unsigned char *src;
{
	int color, component;
	int delta;
	int red, green, blue;
	unsigned char palette[256][3];
	unsigned char color_map[512];

	for (color = 0; color < 256; color++) {
		for (component = 0; component < 3; component++) {
			palette[color][component] =
			    clamp_between(src[color*3+component] + base, 0, 63);
			if (palette[color][component] > 32) {
				delta = (palette[color][component] - 32)
				    * scale / 32;
				palette[color][component] =
				    clamp_between(palette[color][component] + delta,
						  0, 63);
			} else if (palette[color][component] < 32) {
				delta = (32 - palette[color][component])
				    * scale / 32;
				palette[color][component] =
				    clamp_between(palette[color][component] - delta,
						  0, 63);
			}
		}
	}
	aztec_setmem(color_map, 512, 255);
	for (color = 0; color < 256; color++) {
		red = palette[color][0] / 8;	/* top 3 bits of each component */
		green = palette[color][1] / 8;
		blue = palette[color][2] / 8;
		color_map[(red << 6) + (green << 3) + blue] = color;
	}
	call_set_palette(palette, color_map);
	call_reset_rgb((unsigned)65535, (unsigned)65535, (unsigned)65535);
}
