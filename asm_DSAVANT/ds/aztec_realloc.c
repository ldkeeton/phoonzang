/* Aztec runtime routine: aztec_realloc
 * source: Manx Aztec C86 v340a malloc.c (extracted function)
 * compiled with: Aztec C86 v52a (includes v340a)
 * recovered byte-exact by the C mux (lib/aztec/mux.py);
 * relocations are linked against asm labels (lib/aztec/relink.py);
 * the identifiers below are the asm label names.
 */
/* Copyright (C) 1985 by Manx Software Systems, Inc. */

#ifdef __LDATA
typedef long size_t;
char *_ptradd();
long _ptrdiff();
#define bump(p,i) ((l_t *)_ptradd((p),(long)(i)))
#define ptrdiff(p1,p2) _ptrdiff(p1,p2)
#else
typedef unsigned size_t;
#define bump(p,i) ((l_t *)((char *)(p)+(i)))
#define ptrdiff(p1,p2) (unsigned)((char *)(p1)-(char *)(p2))
#endif

typedef struct list {
	struct list *next;
} l_t;
static l_t first, *bss_0d00;
static l_t *endmarker = &first, *restart = &first;
static size_t bss_0cfe;

#define INUSE	1
#define inuse(p) (*(size_t *)(p)&INUSE)
#define markblk(p) (*(size_t *)(p) |= INUSE)
#define unmark(p) (*(size_t *)(p) &= ~INUSE)
#define chain(p)	((l_t *)(*(size_t *)(p) & ~INUSE))

#define BLOCK	(512*sizeof(l_t))	/* # of bytes to ask sbrk for */

char *
aztec_realloc(area, size)
register char *area; unsigned size;
{
	register char *cp, *end;
	size_t osize;
	char *aztec_malloc();

	end = (char *)chain((l_t *)area-1);
	if ((osize = ptrdiff(end, area)) > size) {
		osize = size;
		end = (char *)bump(area, osize);
	}
	aztec_free(area);
	if ((cp = aztec_malloc(size)) != 0 && cp != area) {
		aztec_movmem(area, cp, osize);
		if ((char *)bss_0d00 >= area && (char *)bss_0d00 < end)
			*(size_t *)bump(cp, ptrdiff(bss_0d00,area)) = bss_0cfe;
	}
	return cp;
}

