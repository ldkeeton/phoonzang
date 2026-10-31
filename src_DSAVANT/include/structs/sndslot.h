#ifndef SNDSLOT_H
#define SNDSLOT_H

/* Twelve-byte sound slot records. */
struct sound_slot_info_rec {
	int alias_num; /* +0: sound number used when size is zero */
	int pad_0002; /* +2 */
	union sound_size_view {
		long full_size;
		struct sound_size_halves {
			unsigned int low;
			unsigned int high;
		} halves;
	} size; /* +4: zero redirects to alias_num */
	int rate; /* +8: driver sample counter seed is 0xff - rate */
	unsigned char volume; /* +0x0a */
	unsigned char play_flags; /* +0x0b: 1 wait to finish, 2 keep a running sound */
};

#endif
