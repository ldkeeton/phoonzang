/* Game-wide index and code values: skills, professions, conditions, item
   types and glyphs, attack modes and battle actions.  Names come from the
   message each value selects, given by each group's comment. */

#ifndef GAMEDEFS_H
#define GAMEDEFS_H

/* Battle group 0 is the party; the others are monster groups. */
#define PARTY_GROUP		0

/* pc_rec.equipped[] and hand_attack[] index by hand; NO_ITEM is an empty
   equip position. */
#define PRIMARY_HAND		0
#define SECONDARY_HAND		1
#define NO_ITEM			255

/* pc_rec.skills[]: message 5500 + skill. */
#define SKILL_WAND_DAGGER	0
#define SKILL_SWORD		1
#define SKILL_AXE		2
#define SKILL_MACE_FLAIL	3
#define SKILL_POLE_STAFF	4
#define SKILL_THROWING		5
#define SKILL_SLING		6
#define SKILL_BOWS		7
#define SKILL_SHIELD		8
#define SKILL_HANDS_FEET	9
#define SKILL_SWIMMING		10
#define SKILL_CLIMBING		11
#define SKILL_SCOUTING		12
#define SKILL_MUSIC		13
#define SKILL_ORATORY		14
#define SKILL_LEGERDEMAIN	15
#define SKILL_SKULDUGGERY	16
#define SKILL_NINJUTSU		17
#define SKILL_FIREARMS		18
#define SKILL_REFLEXTION	19
#define SKILL_SNAKE_SPEED	20
#define SKILL_EAGLE_EYE		21
#define SKILL_POWER_STRIKE	22
#define SKILL_MIND_CONTROL	23
#define SKILL_ARTIFACTS		24
#define SKILL_MYTHOLOGY		25
#define SKILL_MAPPING		26
#define SKILL_SCRIBE		27
#define SKILL_DIPLOMACY		28
#define SKILL_ALCHEMY		29
#define SKILL_THEOLOGY		30
#define SKILL_THEOSOPHY		31
#define SKILL_THAUMATURGY	32
#define SKILL_KIRIJUTSU		33

/* pc_rec.profession: MSG_CLASS_BASE + profession. */
#define PROF_FIGHTER		0
#define PROF_MAGE		1
#define PROF_PRIEST		2
#define PROF_THIEF		3
#define PROF_RANGER		4
#define PROF_ALCHEMIST		5
#define PROF_BARD		6
#define PROF_PSIONIC		7
#define PROF_VALKYRIE		8
#define PROF_BISHOP		9
#define PROF_LORD		10
#define PROF_SAMURAI		11
#define PROF_MONK		12
#define PROF_NINJA		13

/* status[] timers (pc_rec and combatant), by the message each one's
   apply_resisted_status_timer call shows. */
#define STATUS_SILENCED		0
#define STATUS_FRIGHTENED	1
#define STATUS_ASLEEP		2	/* also unconscious */
#define STATUS_PARALYZED	3
#define STATUS_BLINDED		4
#define STATUS_POISONED		5
#define STATUS_DISEASED		6
#define STATUS_INSANE		7
#define STATUS_NAUSEOUS		8
#define STATUS_IRRITATED	9

/* combatant.state and pc_rec.state. */
#define STATE_OK		0
#define STATE_STONED		2
#define STATE_DEAD		3

/* combatant.phase. */
#define PHASE_VISIBLE		0
#define PHASE_HIDDEN		1
#define PHASE_BACKSTAB		(-1)	/* a hidden attacker's strike landing */

/* Attack modes: the attack verb is MSG_SWINGS + mode, the menu word
   MSG_SWING + mode. */
#define ATTACK_SWING		0
#define ATTACK_THRUST		1
#define ATTACK_BASH		2
#define ATTACK_MELEE		3
#define ATTACK_THROW		4
#define ATTACK_PUNCH		5
#define ATTACK_KICK		6
#define ATTACK_LASH		7
#define ATTACK_SHOOT		8

/* combatant.action_kind: the battle menu, MSG_FIGHT_3000 + kind. */
#define ACTION_FIGHT		0
#define ACTION_PARRY		1
#define ACTION_HIDE		2
#define ACTION_SPELL		3
#define ACTION_USE		4
#define ACTION_BREATH		5
#define ACTION_RUN		6
#define ACTION_MOVE		7
#define ACTION_EQUIP		8

/* combatant.primary_action under ACTION_PARRY: MSG_BLOCK + stance. */
#define PARRY_BLOCK		0
#define PARRY_DODGE		1
#define PARRY_GUARD		2	/* counterattack the attacker */
#define PARRY_REST		3	/* regain stamina, no defense */

/* pc_item_slot.item_type: message 1550 + type. */
#define ITEM_WEAPON_S		0
#define ITEM_WEAPON_E		1
#define ITEM_WEAPON_T		2	/* thrown; level counts them */
#define ITEM_WEAPON_L		3	/* launcher */
#define ITEM_MISSILE		4
#define ITEM_MISC		5
#define ITEM_HELMET		6
#define ITEM_BODY_ARMOR		7
#define ITEM_LEG_ARMOR		8
#define ITEM_GAUNTLETS		9
#define ITEM_BOOTS		10
#define ITEM_SHIELD		11
#define ITEM_MAGICAL_12		12
#define ITEM_MAGICAL_13		13
#define ITEM_SPECIAL_14		14
#define ITEM_SPECIAL_15		15
#define ITEM_MAGICAL_16		16
#define ITEM_UNUSABLE		17

/* pc_item_slot.flags bits. */
#define SLOT_EQUIPPED		1
#define SLOT_LOADS_AMMO		32	/* level is the shots loaded */
#define SLOT_IDENTIFIED		128
#define UNLIMITED_SHOTS		255	/* a SLOT_LOADS_AMMO level never used up */

/* Spell ids: MSG_SPELL_NAME_BASE + id.  A cast is SPELL_AT(power, id). */
#define SPELL_AT(power, id)	((power) * 256 + (id))
#define SPELL_PSIONIC_FIRES	2
#define SPELL_FIRE_BOMB		6
#define SPELL_ICEBALL		20
#define SPELL_CONFUSION		65
#define SPELL_HOLD_MONSTERS	67

/* pc_item_slot.glyph: the generic item name, MSG_DAGGER_6000 + glyph.  A
   name shared by several glyphs ends in its number. */
#define GLYPH_DAGGER	0
#define GLYPH_SWORD_1	1
#define GLYPH_AXE_2	2
#define GLYPH_AXE_3	3
#define GLYPH_FLAIL	4
#define GLYPH_MACE	5
#define GLYPH_HAMMER_6	6
#define GLYPH_STAFF_7	7
#define GLYPH_POLE_AXE_8	8
#define GLYPH_SPEAR	9
#define GLYPH_BO	10
#define GLYPH_BOW_11	11
#define GLYPH_CROSSBOW	12
#define GLYPH_SLING	13
#define GLYPH_SWORD_14	14
#define GLYPH_SWORD_15	15
#define GLYPH_SWORD_16	16
#define GLYPH_STAFF_17	17
#define GLYPH_WAND	18
#define GLYPH_STAFF_19	19
#define GLYPH_AXE_20	20
#define GLYPH_STARS	21
#define GLYPH_ARROWS	22
#define GLYPH_BULLETS	23
#define GLYPH_SHIELD_24	24
#define GLYPH_HELMET_25	25
#define GLYPH_ARMOR_U_26	26
#define GLYPH_ARMOR_L_27	27
#define GLYPH_GAUNTLETS_28	28
#define GLYPH_BOOTS_29	29
#define GLYPH_AMULET	30
#define GLYPH_RING_31	31
#define GLYPH_POTION_32	32
#define GLYPH_SCROLL	33
#define GLYPH_POWDER	34
#define GLYPH_KEY	35
#define GLYPH_JEWELRY_36	36
#define GLYPH_BOW_37	37
#define GLYPH_SHIELD_38	38
#define GLYPH_HAT_39	39
#define GLYPH_HELMET_40	40
#define GLYPH_ARMOR_U_41	41
#define GLYPH_ARMOR_U_42	42
#define GLYPH_ARMOR_L_43	43
#define GLYPH_ARMOR_L_44	44
#define GLYPH_GLOVES_45	45
#define GLYPH_SANDALS	46
#define GLYPH_BOOTS_47	47
#define GLYPH_BOOTS_48	48
#define GLYPH_BOOK	49
#define GLYPH_ANKH	50
#define GLYPH_SWORD_51	51
#define GLYPH_HAMMER_52	52
#define GLYPH_SWORD_53	53
#define GLYPH_WHIP	54
#define GLYPH_WEAPON_55	55
#define GLYPH_STICKS	56
#define GLYPH_POLE_AXE_57	57
#define GLYPH_SWORD_58	58
#define GLYPH_SWORD_59	59
#define GLYPH_ROBES_U_60	60
#define GLYPH_ROBES_L_61	61
#define GLYPH_ARMOR_U_62	62
#define GLYPH_ARMOR_L_63	63
#define GLYPH_HAT_64	64
#define GLYPH_HAT_65	65
#define GLYPH_HAT_66	66
#define GLYPH_ARMOR_U_67	67
#define GLYPH_HELMET_68	68
#define GLYPH_ARMOR_U_69	69
#define GLYPH_ARMOR_L_70	70
#define GLYPH_HELMET_71	71
#define GLYPH_ARMOR_L_72	72
#define GLYPH_CLOAK	73
#define GLYPH_GAUNTLETS_74	74
#define GLYPH_BOOTS_75	75
#define GLYPH_BOOTS_76	76
#define GLYPH_SHOES	77
#define GLYPH_CROSS	78
#define GLYPH_JEWELRY_79	79
#define GLYPH_JEWELRY_80	80
#define GLYPH_JEWELRY_81	81
#define GLYPH_JEWELRY_82	82
#define GLYPH_QUARRELS	83
#define GLYPH_FIGURINE	84
#define GLYPH_HOOD_85	85
#define GLYPH_ARMOR_U_86	86
#define GLYPH_ARMOR_L_87	87
#define GLYPH_GLOVES_88	88
#define GLYPH_BOOTS_89	89
#define GLYPH_LANCE	90
#define GLYPH_HELMET_91	91
#define GLYPH_HOOD_92	92
#define GLYPH_ROBES_U_93	93
#define GLYPH_ROBES_L_94	94
#define GLYPH_BOOTS_95	95
#define GLYPH_HELMET_96	96
#define GLYPH_HELMET_97	97
#define GLYPH_RING_98	98
#define GLYPH_BAG	99
#define GLYPH_POTION_100	100
#define GLYPH_POTION_101	101
#define GLYPH_POTION_102	102
#define GLYPH_POTION_103	103
#define GLYPH_GLOVE	104
#define GLYPH_POLEARM_105	105
#define GLYPH_POLEARM_106	106
#define GLYPH_DEVICE	107
#define GLYPH_SWORD_108	108
#define GLYPH_REAGENT	109
#define GLYPH_WEAPON_110	110
#define GLYPH_CARD	111
#define GLYPH_DARTS	112
#define GLYPH_HORN_BALLS	113
#define GLYPH_WEAPON_114	114
#define GLYPH_COIN	115
#define GLYPH_STONE	116
#define GLYPH_PYRAMID	118
#define GLYPH_GLOBE	119
#define GLYPH_PIPES	120

#endif
