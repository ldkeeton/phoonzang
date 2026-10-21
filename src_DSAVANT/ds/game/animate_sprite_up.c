animate_sprite_up(a, n)
{
	if (gfx_entry_52()) {
		while (n > 0 && gfx_entry_52()) {
			gfx_entry_54(a, n = clamp_between(n - 10, 0, n));
			delay_ms(25);
		}
		gfx_entry_53();
	}
}
