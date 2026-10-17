/* auto-generated */
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
static l_t bss_2538, *bss_2536;
static l_t *dseg_244e = &bss_2538, *restart = &bss_2538;
static size_t bss_2534;

#define INUSE	1
#define inuse(p) (*(size_t *)(p)&INUSE)
#define markblk(p) (*(size_t *)(p) |= INUSE)
#define unmark(p) (*(size_t *)(p) &= ~INUSE)
#define chain(p)	((l_t *)(*(size_t *)(p) & ~INUSE))

#define BLOCK	(512*sizeof(l_t))	/* # of bytes to ask sbrk for */

char *
aztec_malloc(size)
unsigned size;
{
	register l_t *ptr, *temp, *lastfree;
	register size_t len;
	int times;
	char *aztec_sbrk();

	size = ((size+sizeof(l_t)*2-1)/sizeof(l_t))*sizeof(l_t);
	if (bss_2536 == 0) {
		bss_2538.next = &bss_2538;
		markblk(&bss_2538);
		bss_2536 = &bss_2538;
	}
	for (times = 0, lastfree = ptr = bss_2536 ; ; ptr = chain(ptr)) {
		if (ptr == dseg_244e) {
			if (++times > 1) {
				len = BLOCK;
				if ((temp = (l_t *)aztec_sbrk((int)len)) == (l_t *)-1)
					return 0;
				if (temp != bump(ptr,sizeof(l_t))) {
					/* non-contiguous allocation */
					ptr->next = temp;
					markblk(ptr);
					len -= sizeof(l_t);
					ptr = temp;
				}
				temp = bump(ptr, len);
				ptr->next = temp;
				temp->next = &bss_2538;	/* new end marker */
				markblk(temp);
				dseg_244e = temp;
				if (chain(lastfree) == ptr)
					ptr = lastfree;
			}
		}
		if (inuse(ptr))
			continue;
		lastfree = ptr;
		while (!inuse(temp = chain(ptr)))
			ptr->next = temp->next;
		len = ptrdiff(temp,ptr);
		if (len >= size) {
			if (len > size) {
				ptr->next = bump(ptr, size);
				bss_2534 = *(size_t *)ptr->next;
				ptr->next->next = temp;
			}
			bss_2536 = ptr->next;
			markblk(ptr);
			return (char *)(ptr+1);
		}
	}
}

