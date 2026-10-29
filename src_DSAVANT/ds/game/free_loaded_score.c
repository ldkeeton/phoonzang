/* frees driver score n and forgets which score is loaded; undoes
   load_score_files */
extern int call_free_score();	/* driver slot thunk */
extern int loaded_score_num;

free_loaded_score(score)
int score;
{
	call_free_score(score);
	loaded_score_num = -1;	/* -1: no score loaded */
}
