/* Combat overlay values: monster weapons, missile animations, creature
   classes, message rows, text colors and sounds. */

#ifndef COMBAT_H
#define COMBAT_H

/* animate_spell_at_target rows: the missile drawn flying at the target,
   named by the weapons that throw or fire it. */
#define MISSILE_NONE		(-1)
#define MISSILE_DAGGER		0
#define MISSILE_ARROW		2
#define MISSILE_QUARREL		4	/* quarrels, bowel raker */
#define MISSILE_DART		6
#define MISSILE_GUNSHOT		8	/* musket, blunderbuss, laser cannon */
#define MISSILE_PLASMA		10
#define MISSILE_WEBBING		12	/* also the spectral ray */
#define MISSILE_ENCHANTMENT	14
#define MISSILE_ENERGY_BOLT	15	/* blasters, phasers, laser bolts */
#define MISSILE_STONE		16	/* sling bullets, stones */
#define MISSILE_STAR		17
#define MISSILE_POTION		18
#define MISSILE_FLASK		19	/* the other potions */
#define MISSILE_WAND		20
#define MISSILE_SPIKES		21
#define MISSILE_POWDER		22

/* member_ext.creature_class values with special handling (for the party,
   creature_class is the profession). */
#define CLASS_PLANT		17	/* hit locations named TRUNK, BRANCH .. */
#define CLASS_STUN_SLAIN	22	/* a weapon that slays it also paralyzes */
#define CLASS_TENTACLED		23	/* hit location TENTACLE_LOCATION from the
					   plant names */
#define CLASS_ROBOT		26	/* hit locations named REAR, MAIN C.P.U. .. */
#define TENTACLE_LOCATION	6

/* Combat message rows. */
#define ROW_ACTION		0	/* who does what with what */
#define ROW_TARGET		2
#define ROW_RESULT		3	/* hit, missed, deflected */
#define ROW_DAMAGE		4

/* Combat text colors. */
#define COLOR_PARTY_NAME	1
#define COLOR_HIT		22
#define COLOR_DAMAGE		65
#define COLOR_COMBAT_TEXT	67
#define COLOR_ALERT		85
#define COLOR_SPELL		164

/* Sound slots (play_sound_effect) and sound files (ensure_sound_loaded,
   which loads one into the replaceable slot 16). */
#define SOUND_HURT_BASE		2	/* + pc_rec.gender */
#define SOUND_GUNSHOT		5
#define SOUND_SWING		6
#define SOUND_HIT		7
#define SOUND_CHROMA_GLOVE	10
#define SOUND_CANNON		11
#define SOUND_ENERGY_BOLT	12
#define SOUND_REPLACEABLE	16
#define SOUND_FILE_RESTORE	44	/* reloaded after the enchantment */
#define SOUND_FILE_ENCHANTMENT	57

/* A spell variable holding no spell. */
#define NO_SPELL		(-1)

/* A monster's attack verb is MSG_MONSTER_ATTACK_VERB + its attack_mode
   (CLAWS, BITES ..), the weapon it attacks with MSG_MONSTER_WEAPON +
   its attack_effect. */
#define MSG_MONSTER_ATTACK_VERB	3371
#define MSG_MONSTER_WEAPON	3799

/* member_ext.attack_effect: the monster's weapon; 0 none.  A name shared
   by two effects ends in its number. */
#define MWEAPON_THORNY_SPIKES	1
#define MWEAPON_POISON_SPIKES	2
#define MWEAPON_SHOCK_ROD	3
#define MWEAPON_STUN_ROD	4
#define MWEAPON_PSI_ROD	5
#define MWEAPON_WALRIBLADE	6
#define MWEAPON_MUSKET	7
#define MWEAPON_LONG_STAFF	8
#define MWEAPON_WILLOW_ARROW	9
#define MWEAPON_SPEAR	10
#define MWEAPON_NAGINATA	11
#define MWEAPON_SPEAR_PLUS_2	12
#define MWEAPON_TRACER_BOLT	13
#define MWEAPON_LASER_BOLT	14
#define MWEAPON_BLASTER_BOLT	15
#define MWEAPON_BITE_DAGGER	16
#define MWEAPON_BASELARD	17
#define MWEAPON_VORPAL_BLADE	18
#define MWEAPON_LASER_SPEAR	19
#define MWEAPON_STUN_LANCE	20
#define MWEAPON_DISRUPTOR	21
#define MWEAPON_PAIN_STICK	22
#define MWEAPON_WEBBING	23
#define MWEAPON_TONGUE	24
#define MWEAPON_BLUNDERBUSS	25
#define MWEAPON_RHINABLADE	26
#define MWEAPON_DAGGER	27
#define MWEAPON_QUARTER_STAFF	28
#define MWEAPON_LANCE_PLUS_2	29
#define MWEAPON_STONE	30
#define MWEAPON_POISON_DART	31
#define MWEAPON_HUNTER_ARROW	32
#define MWEAPON_HV_BLASTER	33
#define MWEAPON_SKULL_DAGGER	34
#define MWEAPON_DONGFU	35
#define MWEAPON_DEATH_STAR	36
#define MWEAPON_BOWEL_RAKER	37
#define MWEAPON_LANCE	38
#define MWEAPON_AWL_PIKE	39
#define MWEAPON_NO_DACHI	40
#define MWEAPON_CLAYMORE	41
#define MWEAPON_MANG_CLUB	42
#define MWEAPON_PHASER_BOLT	43
#define MWEAPON_TENTACLE	44
#define MWEAPON_BARBED_ARROW	45
#define MWEAPON_MYSTIC_ARROW	46
#define MWEAPON_CANE_CORPUS	47
#define MWEAPON_BOULDER	48
#define MWEAPON_PLASMA_CANNON	49
#define MWEAPON_LASER_CANNON	50
#define MWEAPON_LASER_SPEAR_PLUS_3	51
#define MWEAPON_CHROMA_GLOVE_52	52
#define MWEAPON_PHASER_PISTOL	53
#define MWEAPON_POWER_GLOVE	54
#define MWEAPON_WHITE_SWORD	55
#define MWEAPON_SPECTRAL_RAY	56
#define MWEAPON_BUSHIDO_BLADE	57
#define MWEAPON_CROOKED_STAFF	58
#define MWEAPON_CHROMA_GLOVE_59	59
#define MWEAPON_ENCHANTMENT	60

#endif
