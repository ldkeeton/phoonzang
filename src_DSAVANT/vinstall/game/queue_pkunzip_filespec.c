/* Append filespec to the PKUNZIP file list, flushing completed lines. */
extern char pkunzip_filespec_list[];
extern char empty_filespec_list[];
extern char filespec_separator[];
extern int strlen();
extern int strcpy();
extern int strcat();
extern int run_pkunzip_archive();

/* Flushes or separates the pending file list, then appends filespec. */
queue_pkunzip_filespec(source_dir, dest_dir, archive_name,
		       filespec)
char *source_dir;
char *dest_dir;
char *archive_name;
char *filespec;
{
	/* Flush a full line, or a pending line when no new filespec is supplied. */
	/* The existing line buffer is flushed after it passes 80 characters. */
	if (strlen(pkunzip_filespec_list) > 80 ||
	    (strlen(pkunzip_filespec_list) > 0 &&
	     strlen(filespec) == 0)) {
		run_pkunzip_archive(source_dir, dest_dir,
				    archive_name, pkunzip_filespec_list);
		strcpy(pkunzip_filespec_list, empty_filespec_list);
	} else {
		/* Add the one-byte separator only when a line is already pending. */
		if (strlen(pkunzip_filespec_list) > 0)
		strcat(pkunzip_filespec_list, filespec_separator);
	}
	strcat(pkunzip_filespec_list, filespec);
}
