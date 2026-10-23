/* frees the driver's current score and forgets which score is loaded */
extern int gfx_free_score();	/* driver slot thunk */
extern int loaded_score_num;

app_gfx_free_score(score)
int score;
{
	gfx_free_score(score);
	loaded_score_num = -1;	/* -1: no score loaded */
}
