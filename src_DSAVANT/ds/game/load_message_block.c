/* loads message block into the working buffer, reusing one of four cached
   slots when the block is already there */

extern int msg_dbs_fd;
extern char message_block_buffer[];
extern int message_cache_ids[];
extern int message_block_current;
extern int message_cache_next;

load_message_block(block)
{
	int cache_slot;

	for (cache_slot = 0; cache_slot < 4; cache_slot++) {	/* four cache slots */
		if (message_cache_ids[cache_slot] == block) {
			/* 0x400-byte blocks, cache slots stride 0x400 from 0x4212 */
			aztec_movmem(16914 + (cache_slot << 10), message_block_buffer, 1024);
			message_block_current = block;
			return;
		}
	}
	call_wait_sound(0);
	aztec_lseek(msg_dbs_fd, (long)block * 1024, 0);	/* block offset in MSG.DBS */
	aztec_read(msg_dbs_fd, message_block_buffer, 1024);
	message_block_current = block;
	aztec_movmem(message_block_buffer, 16914 + (message_cache_next << 10),
		1024);	/* save in round-robin slot */
	message_cache_ids[message_cache_next] = block;
	message_cache_next = (message_cache_next + 1) % 4;	/* round robin */
}
