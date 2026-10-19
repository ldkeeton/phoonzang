clamp_between(v, lo, hi)
{
	return lo > v ? lo : v > hi ? hi : v;
}
