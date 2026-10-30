/* huffman.c: how a packed text record is read and written.

   The tree is 16-bit words, a pair per node: the word for a 0 bit, then the
   word for a 1 bit.  A word with the top bit set links to the node numbered
   by its negation; any other word is the character at that leaf.  Node 0 is
   the root.

   A record is [length][count][bits]: length counts the bytes after it, count
   the characters, and the bits run most significant first, the last byte
   padded with zeros.  After #pragma huffman "tree.c", make data's compiler
   packs each string literal this way. */

/* Unpack a record's count characters into out. */
void huffman_decode(const unsigned short *tree, const unsigned char *record,
                    char *out)
{
    const unsigned char *bits = record + 2;
    int count = record[1], node = 0, bit = 0;
    unsigned short word;

    while (count > 0) {
        word = tree[node * 2 + (bits[bit >> 3] >> (7 - (bit & 7)) & 1)];
        bit++;
        if (word & 0x8000) {
            node = (unsigned short)-word;
        } else {
            *out++ = (char)word;
            node = 0;
            count--;
        }
    }
    *out = '\0';
}

/* The code for c, one bit per byte of path, found by searching the tree
   from node; returns its length, 0 when c is not below node. */
static int code_for(const unsigned short *tree, int node, unsigned char c,
                    unsigned char *path)
{
    unsigned short word;
    int b, n;

    for (b = 0; b < 2; b++) {
        word = tree[node * 2 + b];
        path[0] = (unsigned char)b;
        if (word & 0x8000) {
            n = code_for(tree, (unsigned short)-word, c, path + 1);
            if (n)
                return n + 1;
        } else if (word == c) {
            return 1;
        }
    }
    return 0;
}

/* Pack text into record; returns the record's size. */
int huffman_encode(const unsigned short *tree, const char *text,
                   unsigned char *record)
{
    unsigned char path[256];
    int count = 0, bit = 0, i, n;

    for (; *text; text++, count++) {
        n = code_for(tree, 0, (unsigned char)*text, path);
        for (i = 0; i < n; i++, bit++) {
            if ((bit & 7) == 0)
                record[2 + (bit >> 3)] = 0;
            record[2 + (bit >> 3)] |= path[i] << (7 - (bit & 7));
        }
    }
    record[0] = (unsigned char)(1 + (bit + 7) / 8);
    record[1] = (unsigned char)count;
    return 2 + (bit + 7) / 8;
}
