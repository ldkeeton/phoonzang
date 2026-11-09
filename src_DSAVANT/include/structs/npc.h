/* NPC dialog, event trigger, action and shop stock records. */
#ifndef NPC_H
#define NPC_H

/* A pronoun and the word it is swapped to in NPC replies (YOU -> ME). */
struct npc_pronoun_swap {
	char from[10];
	char to[10];
};

/* A message code and its 18-character text used by NPC dialog choices. */
struct npc_message_option {
	int message_code;
	unsigned char text[18];
};

/* One six-byte NPC event trigger: when an event (give, gold paid, sell,
 * buy, use, ...) matches match_id and the match bytes, handler_code runs. */
struct npc_event_trigger {
	int match_id;
	unsigned char match_byte_1;
	unsigned char match_byte_2;
	unsigned char event;
	unsigned char handler_code;
};

/* One four-byte action row read from an NPC action record. */
struct npc_action_entry {
	int value;
	unsigned char parameter;
	unsigned char action;
};

/* One six-byte row in the NPC stock data record (type 7): a run of
 * consecutive item ids, each offered with a chance set by state/time_code. */
struct npc_shop_stock_entry {
	int first_item_id;
	int item_id_count;
	unsigned char state;
	unsigned char time_code;
};

/* The 148-byte NPC record (SCENARIO.DBS type 5) that data_record_io reads
 * in one call when an encounter starts. */
struct npc_record {
	char name[16];
	struct npc_event_trigger event_triggers[8];
	int action_record_lookup[20];
	int dialog_first_choice_msg_id;
	int greeting_msg_id;
	int dialog_response_name_msg_id;
	int dialog_response_wait_msg_id;
	int phrase_msg_id;
	int shop_price_markup;
	int sell_price_percent;
	int requested_item_id;
	char unused_78[6];
	long gold;
	unsigned char action_enabled[8];
	unsigned char attack_encounter_id;
	unsigned char monster_picture_id;
	char unused_8c;
	unsigned char level;
	char slot_index;
	unsigned char faction_index;
	char unused_90;
	unsigned char shop_stock_record_index;
	char encounter_intro_sound_id;
	unsigned char effect_flags;
};

/* The dialog state that run_npc_member_dialog clears in one call when a
 * conversation starts. */
struct npc_dialog_state {
	int choice_index;
	int choice_auxiliary;
	int primary_choice;
	int choice_code;
	int default_choice_index;
	int default_choice_value;
	int choice_backup;
	int response_value;
	int topic_0_enabled;
	int topic_1_enabled;
	int topic_2_enabled;
	int topic_3_enabled;
	int topic_4_enabled;
	int topic_5_enabled;
	int topic_6_enabled;
	int empty_choice_seen;
	int response_active;
	int mode7_seen;
	int prefix_matched;
	int response_flag_2;
	int response_flag_3;
	int response_flag_4;
	int response_flag_0;
	int response_flag_1;
	int response_state_extra;
	int response_flag_5;
	int response_flag_6;
	int choice_value_a;
	int choice_value_b;
	int latest_choice;
	int alt_choice_index;
	int alt_choice_value;
	int secondary_choice;
};

#endif
