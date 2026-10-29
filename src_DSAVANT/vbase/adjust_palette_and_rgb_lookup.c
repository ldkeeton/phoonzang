/* Adjust palette components and rebuild the quantized RGB lookup. */
extern unsigned char base_palette_rgb[256][3], adjusted_palette_rgb[256][3];
extern unsigned char quantized_rgb_lookup[8][8][8];
extern int clamp_between(), aztec_setmem(), call_set_palette(),
	call_reset_rgb();

adjust_palette_and_rgb_lookup(brightness, contrast)
int brightness, contrast;
{
	int color, component, adjustment, red, green, blue;

	for (color = 0; color < 256; color++) { /* all palette entries */
		for (component = 0; component < 3; component++) {
			if ((adjusted_palette_rgb[color][component] = clamp_between(
				base_palette_rgb[color][component] + brightness, 0, 63)) > 32) {
				/* scale about the component midpoint */
				adjustment = (adjusted_palette_rgb[color][component] - 32) * contrast / 32;
				adjusted_palette_rgb[color][component] = clamp_between(
					adjusted_palette_rgb[color][component] + adjustment, 0, 63);
			} else if (adjusted_palette_rgb[color][component] < 32) {
				adjustment = (32 - adjusted_palette_rgb[color][component]) * contrast / 32;
				adjusted_palette_rgb[color][component] = clamp_between(
					adjusted_palette_rgb[color][component] - adjustment, 0, 63);
			}
		}
	}
	aztec_setmem(quantized_rgb_lookup, 512, 255); /* mark unfilled RGB cells */
	for (color = 0; color < 256; color++) {
		red = adjusted_palette_rgb[color][0] / 8;
		green = adjusted_palette_rgb[color][1] / 8;
		blue = adjusted_palette_rgb[color][2] / 8;
		quantized_rgb_lookup[red][green][blue] = color;
	}
	call_set_palette(adjusted_palette_rgb, quantized_rgb_lookup);
	call_reset_rgb(-1, -1, -1);
}
