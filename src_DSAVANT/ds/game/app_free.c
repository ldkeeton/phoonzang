/* frees a far block from app_malloc */
app_free(p)
long p;
{
    aztec_lfree(p);
}
