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
static l_t bss_0d02, *bss_0d00;
static l_t *dseg_0c6c = &bss_0d02, *restart = &bss_0d02;
static size_t bss_0cfe;

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
	if (bss_0d00 == 0) {
		bss_0d02.next = &bss_0d02;
		markblk(&bss_0d02);
		bss_0d00 = &bss_0d02;
	}
	for (times = 0, lastfree = ptr = bss_0d00 ; ; ptr = chain(ptr)) {
		if (ptr == dseg_0c6c) {
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
				temp->next = &bss_0d02;	/* new end marker */
				markblk(temp);
				dseg_0c6c = temp;
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
				bss_0cfe = *(size_t *)ptr->next;
				ptr->next->next = temp;
			}
			bss_0d00 = ptr->next;
			markblk(ptr);
			return (char *)(ptr+1);
		}
	}
}

