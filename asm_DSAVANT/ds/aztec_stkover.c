/* Aztec runtime routine: aztec_stkover
 * source: Manx Aztec C86 v340a stkover.c (extracted function)
 * compiled with: Aztec C86 v52a (includes v340a)
 * recovered byte-exact by the C mux (lib/aztec/mux.py);
 * relocations are linked against asm labels (lib/aztec/relink.py);
 * the identifiers below are the asm label names.
 */

aztec_stkover()
{
	aztec_write(2, "STACK OVERFLOW, INCREASE STACK SIZE\n", 36);
	ds_dos_proc_loc_4e7e(100);
}
