/* Aztec runtime routine: aztec_stkover
 * source: Manx Aztec C86 v340a stkover.c
 * compiled with: Aztec C86 v52a (includes v340a)
 * recovered byte-exact by the C mux (lib/aztec/mux.py);
 * relocation bytes are supplied by the original image.
 */

_stkover()
{
	write(2, "STACK OVERFLOW, INCREASE STACK SIZE\n", 36);
	_exit(100);
}
