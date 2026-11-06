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
	char text[18];
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

#endif
