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
static l_t first, *current;
static l_t *endmarker = &first, *restart = &first;
static size_t keep;

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
	if (current == 0) {
		first.next = &first;
		markblk(&first);
		current = &first;
	}
	for (times = 0, lastfree = ptr = current ; ; ptr = chain(ptr)) {
		if (ptr == endmarker) {
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
				temp->next = &first;	/* new end marker */
				markblk(temp);
				endmarker = temp;
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
				keep = *(size_t *)ptr->next;
				ptr->next->next = temp;
			}
			current = ptr->next;
			markblk(ptr);
			return (char *)(ptr+1);
		}
	}
}

