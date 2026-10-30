/* auto headers */
#ifndef MSG_H
#define MSG_H

#define MSG_CLASS_BASE 120            /* "class names, MSG_CLASS_BASE + class" */
#define MSG_ORDINAL_BASE 1059         /* "ordinals, MSG_ORDINAL_BASE + n" */
#define MSG_SLOT_NAME_BASE 1700       /* "NPC slot names, MSG_SLOT_NAME_BASE + slot" */
#define MSG_FACTION_NAME_BASE 1750    /* "Faction names, MSG_FACTION_NAME_BASE + slot_record.faction" */
#define MSG_LOCATION_NAME_BASE 1770   /* "Location names, MSG_LOCATION_NAME_BASE + location" */
#define MSG_MAP_NAME_BASE 1800        /* "Quest map names, MSG_MAP_NAME_BASE + map" */
#define MSG_CODE_CHAR_BASE 2500       /* "code-character words, MSG_CODE_CHAR_BASE + index" */
#define MSG_SPELL_NAME_BASE 4000      /* "spell names, MSG_SPELL_NAME_BASE + spell" */
#define MSG_HUMAN 100                 /* "HUMAN" */
#define MSG_MALE 140                  /* "MALE" */
#define MSG_LVL 200                   /* "LVL" */
#define MSG_RNK 201                   /* "RNK" */
#define MSG_EXP 202                   /* "EXP" */
#define MSG_MKS 203                   /* "MKS" */
#define MSG_STR 204                   /* "STR" */
#define MSG_HP 212                    /* "HP" */
#define MSG_ST 213                    /* "ST" */
#define MSG_GP_214 214                /* "GP" */
#define MSG_CC 215                    /* "CC" */
#define MSG_AC_216 216                /* "AC" */
#define MSG_AGE_217 217               /* "AGE  " */
#define MSG_LIFE 218                  /* "LIFE " */
#define MSG_NEXT_LVL 219              /* "NEXT LVL" */
#define MSG_USE_300 300               /* "USE" */
#define MSG_SELECT_WEAPON_PRIORITY 350/* "SELECT WEAPON PRIORITY" */
#define MSG_INVOKE_ITS_SPECIAL_POWER 353/* "INVOKE ITS SPECIAL POWER?" */
#define MSG_CURSED_356 356            /* "* CURSED *" */
#define MSG_400 400
#define MSG_SKILL_450 450             /* " SKILL" */
#define MSG_PS 451                    /* "PS" */
#define MSG_AC_452 452                /* "AC" */
#define MSG_LB 453                    /* "LB" */
#define MSG_HEDGHFLDFRM 454           /* "HEDGHFLDFRM" */
#define MSG_MF 455                    /* "MF" */
#define MSG_FMPTRABPVBLSMN 456        /* "FMPTRABPVBLSMN" */
#define MSG_1HAND 457                 /* "1HAND" */
#define MSG_2HAND 458                 /* "2HAND" */
#define MSG_FAILURE_465 465           /* "* FAILURE *" */
#define MSG_DAMAGE_466 466            /* "DAMAGE " */
#define MSG_TO_467 467                /* " TO " */
#define MSG_REGEN 468                 /* "REGEN " */
#define MSG_CURSED_469 469            /* "CURSED" */
#define MSG_SPECIAL_POWER 470         /* "SPECIAL POWER " */
#define MSG_471 471                   /* "!@#$%^&*?:" */
#define MSG_SPECIAL_ATTACKS 472       /* "SPECIAL ATTACKS" */
#define MSG_SPECIAL_RESISTANCES 473   /* "SPECIAL RESISTANCES" */
#define MSG_MAX 474                   /* "MAX" */
#define MSG_SLEEP_475 475             /* "SLEEP" */
#define MSG_NONE_483 483              /* "(NONE)" */
#define MSG_UNKNOWN_484 484           /* "(UNKNOWN)" */
#define MSG_AT 485                    /* " At " */
#define MSG_FAILURE_486 486           /* "Failure" */
#define MSG_IS_DEAD 487               /* " Is Dead" */
#define MSG_WEAPONRY 600              /* "WEAPONRY" */
#define MSG_YOU_EARNED_A_SKILL_BONUS 605/* "YOU EARNED A SKILL BONUS!" */
#define MSG_YOU_GET_A_SKILL_BONUS 606 /* "YOU GET A SKILL BONUS!" */
#define MSG_YOU_LEARNED_A_NEW_SPELL 702/* "YOU LEARNED A NEW $ SPELL!" */
#define MSG_SELECT_A_NEW_SPELL_FOR_703 703/* "SELECT A NEW SPELL FOR YOUR SPELLBOOK" */
#define MSG_THE_SPELL_HAS_BEEN_SCRI_720 720/* "THE SPELL HAS BEEN SCRIBED INTO YOUR SPELLBOOK" */
#define MSG_YOU_ARE_NOT_ADVANCED_EN_721 721/* "YOU ARE NOT ADVANCED ENOUGH TO LEARN THIS SPELL" */
#define MSG_YOU_ARE_NOT_ELIGIBLE_TO_722 722/* "YOU ARE NOT ELIGIBLE TO LEARN THIS SPELL" */
#define MSG_NONE_800 800              /* "NONE" */
#define MSG_CHARACTER_MENU 1000       /* "CHARACTER MENU" */
#define MSG_SECURITY_CLEARANCE 1050   /* "SECURITY CLEARANCE" */
#define MSG_PLEASE_TURN_TO_PAGE_OF_YOUR 1051/* "PLEASE TURN TO PAGE $ OF YOUR" */
#define MSG_MANUAL_AND_ENTER_THE_WORD 1052/* "MANUAL AND ENTER THE $ WORD" */
#define MSG_LOCATED_IN_PARAGRAPH_LINE 1053/* "LOCATED IN PARAGRAPH ^  LINE %" */
#define MSG_CASTING_KARMA 1100        /* "CASTING KARMA" */
#define MSG_ABILITY_BONUS_POINTS 1102 /* "ABILITY BONUS POINTS" */
#define MSG_SELECT_CHARACTER_RACE 1104/* "SELECT CHARACTER RACE" */
#define MSG_SELECT_CHARACTER_SEX 1105 /* "SELECT CHARACTER SEX" */
#define MSG_SELECT_CHARACTER_PROFESSION 1106/* "SELECT CHARACTER PROFESSION" */
#define MSG_BONUS 1107                /* "BONUS" */
#define MSG_SELECT_PORTRAIT 1108      /* "SELECT PORTRAIT" */
#define MSG_DELETE_THIS_CHARACTER 1124/* "DELETE THIS CHARACTER?" */
#define MSG_SAVE_THIS_CHARACTER 1127  /* "SAVE THIS CHARACTER?" */
#define MSG_CREATE_NEW_CHARACTER 1150 /* "CREATE NEW CHARACTER" */
#define MSG_DELETE_WHO 1154           /* "DELETE WHO?" */
#define MSG_REVIEW_WHO 1157           /* "REVIEW WHO?" */
#define MSG_RENAME_WHO 1160           /* "RENAME WHO?" */
#define MSG_CHANGE_WHO 1163           /* "CHANGE WHO?" */
#define MSG_RENAME_CHARACTER_1166 1166/* "RENAME CHARACTER" */
#define MSG_ADD_CHARACTER_1200 1200   /* "ADD CHARACTER" */
#define MSG_LOAD_SAVEGAME_1400 1400   /* "LOAD SAVEGAME" */
#define MSG_IMPORT_BANE_1415 1415     /* "IMPORT (BANE)" */
#define MSG_DISK_ERROR 1420           /* "DISK ERROR" */
#define MSG_LOADING 1421              /* "LOADING..." */
#define MSG_SAVING 1422               /* "SAVING..." */
#define MSG_DIRECTORY 1450            /* "DIRECTORY" */
#define MSG_FILENAME 1451             /* "FILENAME" */
#define MSG_EQUIPPED 1500             /* "(EQUIPPED)" */
#define MSG_YOU_NEED_IT 1501          /* "YOU NEED IT!" */
#define MSG_NO_THANKS 1502            /* "NO THANKS" */
#define MSG_SHORT_GP 1503             /* "(SHORT GP)" */
#define MSG_THANKS 1504               /* "* THANKS *" */
#define MSG_FULL 1505                 /* "  (FULL)  " */
#define MSG_UNUSABLE_1506 1506        /* "(UNUSABLE)" */
#define MSG_SOLD_1507 1507            /* " * SOLD * " */
#define MSG_GP_1508 1508              /* "GP" */
#define MSG_1509 1509                 /* "                              " */
#define MSG_THE_PARTY 1510            /* "THE PARTY" */
#define MSG_VS_1511 1511              /* "-VS-" */
#define MSG_GP_1512 1512              /* " GP" */
#define MSG_1513 1513                 /* "(^):" */
#define MSG_USE_1514 1514             /* "USE" */
#define MSG_TALK 1530                 /* "TALK" */
#define MSG_NOT_WITH_YOU 1540         /* "NOT WITH YOU!" */
#define MSG_ATTACKS 1541              /* "^ ATTACKS!" */
#define MSG_LEAVES 1542               /* "^ LEAVES..." */
#define MSG_IS_CHARMED 1543           /* "^ IS CHARMED!" */
#define MSG_IS_UNAFFECTED 1544        /* "^ IS UNAFFECTED!" */
#define MSG_NOTHING_1545 1545         /* "(NOTHING)" */
#define MSG_1546 1546                 /* "'^'" */
#define MSG_GOT_AN_ITEM 1547          /* "(^ GOT AN ITEM)" */
#define MSG_WEAPON_S 1550             /* "WEAPON (S)" */
#define MSG_UNUSABLE_1567 1567        /* "UNUSABLE" */
#define MSG_MAKES_HIS_MOVE 1570       /* "^ MAKES HIS MOVE..." */
#define MSG_PILFER_FAILED_1572 1572   /* "PILFER FAILED" */
#define MSG_STOLE_AN_ITEM 1573        /* "^ STOLE AN ITEM!" */
#define MSG_STOLE_SOME_GOLD 1574      /* "^ STOLE SOME GOLD!" */
#define MSG_GOT_CAUGHT 1576           /* "^ GOT CAUGHT!" */
#define MSG_GP_1577 1577              /* " GP" */
#define MSG_1580 1580
#define MSG_1583 1583
#define MSG_ACCEPT_GP_FOR 1587        /* "ACCEPT $ GP FOR" */
#define MSG_YOUR 1588                 /* "YOUR $?" */
#define MSG_ENTERS_NEGOTIATIONS 1591  /* "^ ENTERS NEGOTIATIONS..." */
#define MSG_LOOKS_PLEASED 1592        /* "^ LOOKS PLEASED!" */
#define MSG_APPEARS_RESERVED 1593     /* "^ APPEARS RESERVED..." */
#define MSG_BECOMES_ANGRY 1594        /* "^ BECOMES ANGRY!!" */
#define MSG_ARE_YOU_SPEAKING_OF 1600  /* "Are you speaking of ^" */
#define MSG_OR 1601                   /* "or ^?" */
#define MSG_WHAT_1602 1602            /* "^ what?" */
#define MSG_I_DON_T_KNOW_ABOUT_THAT 1603/* "I don't know about that..." */
#define MSG_I_DON_T_UNDERSTAND 1604   /* "I don't understand..." */
#define MSG_ARE_YOU_ASKING_ABOUT 1605 /* "Are you asking about ^?" */
#define MSG_YOUR_WORDS_ARE_CONFUSING 1606/* "Your words are confusing..." */
#define MSG_HUH_1607 1607             /* "Huh?" */
#define MSG_VERY_WELL_THEN 1608       /* "Very well then..." */
#define MSG_SO_BE_IT_1609 1609        /* "So be it..." */
#define MSG_I_AM_WAITING 1610         /* "I am waiting..." */
#define MSG_DON_T_MENTION_IT 1611     /* "Don't mention it..." */
#define MSG_SAME_TO_YOU 1612          /* "Same to you!" */
#define MSG_CONSIDER_IT_FORGOTTEN 1613/* "Consider it forgotten..." */
#define MSG_HELP_WITH_WHAT 1614       /* "Help with what?" */
#define MSG_HA_HA_HA_1615 1615        /* "Ha ha ha!" */
#define MSG_I_DON_T_KNOW_1616 1616    /* "I Don't know ^..." */
#define MSG_I_HEARD_A_RUMOR_ABOUT 1617/* "I heard a rumor about ^..." */
#define MSG_I_DON_T_KNOW_ANYONE_NAMED 1618/* "I don't know anyone named ^..." */
#define MSG_WHO_1619 1619             /* "who" */
#define MSG_WHAT_1620 1620            /* "what" */
#define MSG_I_DON_T_KNOW_WHEN 1621    /* "I don't know when..." */
#define MSG_WHERE_1622 1622           /* "where" */
#define MSG_I_DON_T_KNOW_WHICH 1623   /* "I don't know which..." */
#define MSG_WHY_1624 1624             /* "why" */
#define MSG_HOW_1625 1625             /* "how" */
#define MSG_I_AM_ALIVE 1626           /* "I am alive..." */
#define MSG_I_WOULDN_T_KNOW 1627      /* "I wouldn't know..." */
#define MSG_THAT_S_YOUR_OPINION 1628  /* "That's your opinion..." */
#define MSG_I_DON_T_KNOW_1630 1630    /* "I don't know..." */
#define MSG_POSSIBLY 1631             /* "Possibly..." */
#define MSG_THAT_S_WHAT_YOU_THINK 1632/* "That's what you think..." */
#define MSG_PLEASE_CONTINUE 1633      /* "Please continue..." */
#define MSG_TRY_AND_SEE 1634          /* "Try and see!" */
#define MSG_THAT_S_VERY_INTERESTING 1635/* "That's very interesting..." */
#define MSG_THAT_S_GOOD_TO_KNOW 1636  /* "That's good to know..." */
#define MSG_I_WILL_CONSIDER_IT 1637   /* "I will consider it..." */
#define MSG_WHAT_ARE_YOU_LOOKING_FOR 1639/* "What are you looking for?" */
#define MSG_WHAT_DO_YOU_HAVE_TO_OFFER 1640/* "What do you have to offer?" */
#define MSG_HEH_HEH_WHY_I_HAVEN_T_1641 1641/* "Heh-heh... Why, I haven't heard a thing..." */
#define MSG_OUR_PARTY 1642            /* "Our party" */
#define MSG_I_CAN_T_SAY 1643          /* "I can't say..." */
#define MSG_YOU_DON_T_HAVE_ENOUGH_GOLD 1644/* "You don't have enough gold..." */
#define MSG_PERHAPS_YOU_D_LIKE_TO_1645 1645/* "Perhaps you'd like to hear some interesting rumors..." */
#define MSG_NO_YES_YEA_YEP_SURE_OK_1690 1690/* "?NO/?YES/?YEA/?YEP/?SURE/?OK/" */
#define MSG_HAS_BEEN_FIGHTING_AT 1850 /* "^ has been fighting # at $" */
#define MSG_HAS_POSSESSION_OF_THE_MAP 1880/* "$ has possession of the # Map" */
#define MSG_IT_IS_RUMORED_THAT_POS_1881 1881/* "It is rumored that $ possesses the # Map" */
#define MSG_IT_IS_RUMORED_THAT_POS_1882 1882/* "It is rumored that $ possess the # Map" */
#define MSG_THE_MAP_IS_RUMORED_TO_1883 1883/* "The # Map is rumored to be hidden near $" */
#define MSG_WE_SHALL_BE_VICTORIOUS 1936/* "We shall be victorious!" */
#define MSG_YOU_1950 1950             /* "You" */
#define MSG_LOCKED 2021               /* "LOCKED!" */
#define MSG_YOU_ARE_IN_ROCK 2022      /* "YOU ARE IN ROCK!" */
#define MSG_AN_ENCOUNTER 2025         /* "AN ENCOUNTER!" */
#define MSG_CAST 2026                 /* "CAST" */
#define MSG_LEARN 2028                /* "LEARN" */
#define MSG_USE_2030 2030             /* "USE" */
#define MSG_SPELLS_2033 2033          /* "SPELLS" */
#define MSG_RESTING 2036              /* "...RESTING..." */
#define MSG_PARTY_OPTIONS_2038 2038   /* "PARTY OPTIONS" */
#define MSG_DETECTS_SOMETHING 2040    /* "^ DETECTS SOMETHING!" */
#define MSG_RUNNING 2041              /* "RUNNING!" */
#define MSG_SEARCHING 2043            /* "...SEARCHING..." */
#define MSG_PRESS_BUTTON 2044         /* "(PRESS BUTTON)" */
#define MSG_NOTHING_2045 2045         /* "...NOTHING..." */
#define MSG_A_CHUTE 2052              /* "A CHUTE!" */
#define MSG_PROTECTED_BY_LEVITATION 2056/* "PROTECTED BY LEVITATION!" */
#define MSG_YOU_FELL_TO_YOUR_DEATH 2057/* "YOU FELL TO YOUR DEATH!" */
#define MSG_PULL_LEVER 2058           /* "(PULL LEVER)" */
#define MSG_WILD_ORCHIDS 2059         /* "WILD ORCHIDS!" */
#define MSG_SWIMMING_2060 2060        /* "...SWIMMING..." */
#define MSG_DROWNED 2061              /* "^ DROWNED" */
#define MSG_ABOARD_WIKUM_BOAT 2062    /* "(ABOARD WIKUM-BOAT)" */
#define MSG_PICK 2100                 /* "PICK" */
#define MSG_FORCE_DOOR 2103           /* "FORCE DOOR" */
#define MSG_PICK_LOCK 2108            /* "PICK LOCK" */
#define MSG_SUCCESS 2113              /* "SUCCESS" */
#define MSG_FORCE_GATE 2116           /* "FORCE GATE" */
#define MSG_RESUME_PLAY 2200          /* "RESUME PLAY" */
#define MSG_CRUSADERS_OF_THE_DARK_2300 2300/* "CRUSADERS OF THE DARK SAVANT" */
#define MSG_V 2301                    /* "V" */
#define MSG_GAME_CONFIGURATION 2302   /* "GAME CONFIGURATION" */
#define MSG_INPUT_DEVICE 2303         /* "INPUT DEVICE" */
#define MSG_DELAY 2304                /* "DELAY" */
#define MSG_PATH 2305                 /* "PATH" */
#define MSG_FILE 2306                 /* "FILE" */
#define MSG_EFFECTS 2307              /* "EFFECTS" */
#define MSG_EFFECTS_VOL 2308          /* "EFFECTS VOL" */
#define MSG_MONSTER_VOL 2309          /* "MONSTER VOL" */
#define MSG_BACKGND_VOL 2310          /* "BACKGND VOL" */
#define MSG_MUSIC_2311 2311           /* "MUSIC" */
#define MSG_MUSIC_VOL 2312            /* "MUSIC VOL" */
#define MSG_PLAY_LEVEL 2313           /* "PLAY LEVEL" */
#define MSG_FADE 2314                 /* "FADE" */
#define MSG_MEMORY 2315               /* "MEMORY" */
#define MSG_RAMNAME 2316              /* "RAMNAME" */
#define MSG_GRAPHICS 2317             /* "GRAPHICS" */
#define MSG_BRIGHT 2318               /* "BRIGHT" */
#define MSG_CONTRAST 2319             /* "CONTRAST" */
#define MSG_SAVE_2320 2320            /* "SAVE" */
#define MSG_CANCEL_2321 2321          /* "CANCEL" */
#define MSG_KEYBOARD 2350             /* "KEYBOARD" */
#define MSG_PC_SPEAKER 2353           /* "PC SPEAKER" */
#define MSG_NORMAL 2360               /* "NORMAL" */
#define MSG_ON_2363 2363              /* "ON" */
#define MSG_RAMDISK 2367              /* "RAMDISK" */
#define MSG_NONE_2374 2374            /* "(NONE)" */
#define MSG_3030 3030                 /* "$" */
#define MSG_SWING 3050                /* "SWING" */
#define MSG_SHOOT 3058                /* "SHOOT" */
#define MSG_REVIVED 3150              /* "REVIVED!" */
#define MSG_LIVES 3151                /* "LIVES!" */
#define MSG_HEALED 3152               /* "HEALED" */
#define MSG_TURNS_INVISIBLE 3153      /* "TURNS INVISIBLE!" */
#define MSG_REPLENISHED 3154          /* "REPLENISHED" */
#define MSG_PROTECTED 3155            /* "PROTECTED" */
#define MSG_RECEIVES_THE_BLESSING 3156/* "RECEIVES THE BLESSING!" */
#define MSG_SILENCED_3200 3200        /* "SILENCED!" */
#define MSG_FIZZLE_3201 3201          /* "FIZZLE!" */
#define MSG_BACKFIRE 3202             /* "BACKFIRE!" */
#define MSG_GAGS_HELPLESSLY 3203      /* "GAGS HELPLESSLY!" */
#define MSG_STUMBLES_BLINDLY 3204     /* "STUMBLES BLINDLY!" */
#define MSG_BABBLES_AND_FOAMS 3205    /* "BABBLES AND FOAMS!" */
#define MSG_RUNS_AMOK 3208            /* "RUNS AMOK!" */
#define MSG_COWERS_IN_FEAR 3209       /* "COWERS IN FEAR!" */
#define MSG_TURNS_ON_COMRADES 3211    /* "TURNS ON COMRADES!" */
#define MSG_SPELL_DEFLECTED 3212      /* "SPELL DEFLECTED!" */
#define MSG_SPELL_REDUCED 3213        /* "SPELL REDUCED!" */
#define MSG_DEFLECTED 3214            /* "DEFLECTED!" */
#define MSG_APPEARS 3215              /* "APPEARS!" */
#define MSG_APPEAR 3216               /* "APPEAR!" */
#define MSG_NOTHING_APPEARS 3217      /* "NOTHING APPEARS" */
#define MSG_VANISHES_3218 3218        /* "VANISHES!" */
#define MSG_NOT_LOADED 3219           /* "NOT LOADED" */
#define MSG_FIRESTORM_3220 3220       /* "FIRESTORM" */
#define MSG_POISON_GAS_3221 3221      /* "POISON GAS" */
#define MSG_TOXIC_VAPORS_3222 3222    /* "TOXIC VAPORS" */
#define MSG_ACID_CLOUD 3223           /* "ACID CLOUD" */
#define MSG_LETHAL_CLOUDS_REDUCED 3224/* "LETHAL CLOUDS REDUCED!" */
#define MSG_AIR_BUBBLE_DESTROYED 3225 /* "AIR BUBBLE DESTROYED!" */
#define MSG_AIR_BUBBLE_REDUCED 3226   /* "AIR BUBBLE REDUCED!" */
#define MSG_DRAINING_CLOUD_3227 3227  /* "DRAINING CLOUD" */
#define MSG_DEATH_CLOUD_3228 3228     /* "DEATH CLOUD" */
#define MSG_MISSED 3301               /* "MISSED!" */
#define MSG_HIT 3302                  /* "HIT!" */
#define MSG_NO_PENETRATION 3303       /* "NO PENETRATION" */
#define MSG_PLAYS 3304                /* "PLAYS" */
#define MSG_ABUSES 3305               /* "ABUSES" */
#define MSG_DAMAGE_3306 3306          /* "DAMAGE" */
#define MSG_CASTS_3308 3308           /* "CASTS" */
#define MSG_DAMAGE_3309 3309          /* "DAMAGE" */
#define MSG_UNAFFECTED_3310 3310      /* "UNAFFECTED!" */
#define MSG_CHANGES_EQUIPMENT 3311    /* "CHANGES EQUIPMENT" */
#define MSG_INVOKES_3312 3312         /* "INVOKES" */
#define MSG_USES 3313                 /* "USES" */
#define MSG_INCANTS 3314              /* "INCANTS" */
#define MSG_TOSSES 3315               /* "TOSSES" */
#define MSG_FUMBLES_3316 3316         /* "FUMBLES" */
#define MSG_FUMBLES_3317 3317         /* "FUMBLES" */
#define MSG_CONSUMES 3318             /* "CONSUMES" */
#define MSG_BACK 3320                 /* "BACK" */
#define MSG_TRUNK_3330 3330           /* "TRUNK" */
#define MSG_BREATHES 3340             /* "BREATHES" */
#define MSG_SCREAMS 3342              /* "SCREAMS!" */
#define MSG_INVOKES_3343 3343         /* "INVOKES" */
#define MSG_SPITS 3344                /* "SPITS" */
#define MSG_VOMITS 3345               /* "VOMITS" */
#define MSG_EMITS 3346                /* "EMITS" */
#define MSG_CRIES 3347                /* "CRIES!" */
#define MSG_SQUIRTS 3348              /* "SQUIRTS" */
#define MSG_SWINGS 3350               /* "SWINGS" */
#define MSG_FIRES 3359                /* "FIRES" */
#define MSG_THROWS_3384 3384          /* "THROWS" */
#define MSG_BACKSTAB 3385             /* "BACKSTAB" */
#define MSG_CASTS_3388 3388           /* "CASTS" */
#define MSG_REAR 3390                 /* "REAR" */
#define MSG_BEWILDERED 3469           /* "BEWILDERED!" */
#define MSG_UNAFFECTED_3471 3471      /* "UNAFFECTED!" */
#define MSG_SILENCED_3472 3472        /* "SILENCED" */
#define MSG_FRIGHTENED_3473 3473      /* "FRIGHTENED" */
#define MSG_FALLS_ASLEEP_3474 3474    /* "FALLS ASLEEP" */
#define MSG_PARALYZED_3475 3475       /* "PARALYZED" */
#define MSG_BLINDED_3476 3476         /* "BLINDED" */
#define MSG_POISONED_3477 3477        /* "POISONED" */
#define MSG_GOES_INSANE 3479          /* "GOES INSANE!" */
#define MSG_NAUSEOUS_3480 3480        /* "NAUSEOUS" */
#define MSG_SLAIN_3482 3482           /* "SLAIN!" */
#define MSG_FALLS_UNCONSCIOUS_3484 3484/* "FALLS UNCONSCIOUS!" */
#define MSG_TURNS_TO_STONE_3485 3485  /* "TURNS TO STONE!" */
#define MSG_DIES_3486 3486            /* "DIES!" */
#define MSG_IRRITATED 3487            /* "IRRITATED" */
#define MSG_CAPTURED 3488             /* "CAPTURED!" */
#define MSG_WHITHERS_AND_DIES 3489    /* "WHITHERS AND DIES!" */
#define MSG_HELD 3492                 /* "HELD!" */
#define MSG_DISPELLED 3493            /* "DISPELLED!" */
#define MSG_CRITICAL_3495 3495        /* "CRITICAL!" */
#define MSG_BEHOLDEN 3496             /* "BEHOLDEN!" */
#define MSG_VANISHES_3497 3497        /* "VANISHES!" */
#define MSG_DISEASED_3498 3498        /* "DISEASED!" */
#define MSG_VS_3503 3503              /* "-VS-" */
#define MSG_FINAL_ORDERS 3506         /* "FINAL ORDERS" */
#define MSG_ADVANCES_3510 3510        /* "advances!" */
#define MSG_ADVANCE 3511              /* "advance!" */
#define MSG_CALLS_FOR_HELP 3512       /* " calls for help!" */
#define MSG_ADVANCES_3513 3513        /* "ADVANCES" */
#define MSG_RETREATS 3514             /* "RETREATS" */
#define MSG_HIDES 3515                /* "HIDES" */
#define MSG_RUNS 3517                 /* "RUNS" */
#define MSG_BLINKS_OUT 3518           /* "BLINKS OUT!" */
#define MSG_BLINKS_IN 3519            /* "BLINKS IN!" */
#define MSG_SHADOWS_3520 3520         /* "SHADOWS!" */
#define MSG_FAILED 3521               /* "FAILED!" */
#define MSG_AWAY 3522                 /* "AWAY!" */
#define MSG_BLOCKED 3523              /* "BLOCKED!" */
#define MSG_DIED 3524                 /* "Died!" */
#define MSG_FLIES 3525                /* "FLIES" */
#define MSG_BLESSED_AGAIN 3526        /* "blessed again!" */
#define MSG_FIRE_3700 3700            /* "FIRE!" */
#define MSG_BURNING_POLLEN 3701       /* "BURNING POLLEN!" */
#define MSG_ICY_FROST 3702            /* "ICY FROST!" */
#define MSG_ACID_SPRAY 3703           /* "ACID SPRAY!" */
#define MSG_DEMON_POWER 3704          /* "DEMON POWER!" */
#define MSG_HORRID_BILE 3705          /* "HORRID BILE!" */
#define MSG_POISON_3706 3706          /* "POISON!" */
#define MSG_PUTRID_BILE 3707          /* "PUTRID BILE!" */
#define MSG_GLOWING_AURA 3708         /* "GLOWING AURA!" */
#define MSG_DRAINED 3750              /* "DRAINED" */
#define MSG_STAMINA_3751 3751         /* "$ STAMINA" */
#define MSG_HIT_POINTS_3752 3752      /* "$ HIT POINTS" */
#define MSG_YOU_DEFEATED_THE_MONSTERS 5000/* "YOU DEFEATED THE MONSTERS!" */
#define MSG_EVERY_SURVIVOR_EARNS_EXP 5001/* "EVERY SURVIVOR EARNS $ EXP" */
#define MSG_EACH_SHARE_OF_LOOT_WOR_5002 5002/* "EACH SHARE OF LOOT WORTH $ GOLD" */
#define MSG_EVERYONE_RECEIVES_A_EX_5003 5003/* "EVERYONE RECEIVES A $ EXP BONUS" */
#define MSG_A_CHEST 5004              /* "A CHEST!" */
#define MSG_YOU_FOUND 5005            /* "YOU FOUND % $" */
#define MSG_LOCKED_DOOR 5006          /* "(LOCKED DOOR)" */
#define MSG_LOCKED_GATE 5007          /* "(LOCKED GATE)" */
#define MSG_YOU_MADE_A_LEVEL 5010     /* "^, YOU MADE A $ LEVEL!" */
#define MSG_YOU_GAINED_HIT_POINT 5011 /* "YOU GAINED $ HIT POINT!" */
#define MSG_YOU_GAINED_HIT_POINTS 5012/* "YOU GAINED $ HIT POINTS!" */
#define MSG_YOU_INCREASED_STAMINA 5013/* "YOU INCREASED STAMINA!" */
#define MSG_YOU_INCREASED 5014        /* "YOU INCREASED $!" */
#define MSG_INCREASED 5015            /* "^ INCREASED $!" */
#define MSG_POTION_5016 5016          /* " POTION" */
#define MSG_SCROLL_5017 5017          /* " SCROLL" */
#define MSG_POWDER_5018 5018          /* " POWDER" */
#define MSG_STRENGTH_5050 5050        /* "STRENGTH" */
#define MSG_DIVVY_LOOT 5100           /* "DIVVY LOOT" */
#define MSG_DISARM 5200               /* "DISARM" */
#define MSG_INSPECT 5210              /* "INSPECT" */
#define MSG_OOPS_5227 5227            /* "OOPS!" */
#define MSG_THE_CHEST_WAS_NOT_TRAPPED 5228/* "THE CHEST WAS NOT TRAPPED" */
#define MSG_YOU_DISARMED_THE_TRAP 5229/* "YOU DISARMED THE TRAP!" */
#define MSG_TAKES 5231                /* "TAKES" */
#define MSG_DAMAGE_5232 5232          /* "DAMAGE" */
#define MSG_THE_CHEST_OPENS 5234      /* "THE CHEST OPENS!" */
#define MSG_THE_CHEST_DID_NOT_OPEN 5235/* "THE CHEST DID NOT OPEN" */
#define MSG_FALLS_ASLEEP_5252 5252    /* "FALLS ASLEEP" */
#define MSG_PARALYZED_5253 5253       /* "PARALYZED" */
#define MSG_BLINDED_5254 5254         /* "BLINDED" */
#define MSG_POISONED_5255 5255        /* "POISONED" */
#define MSG_VEGGIFIED 5257            /* "VEGGIFIED!" */
#define MSG_SLAIN_5260 5260           /* "SLAIN" */
#define MSG_CRITICAL_5261 5261        /* "CRITICAL" */
#define MSG_TURNS_TO_STONE_5263 5263  /* "TURNS TO STONE!" */
#define MSG_DIES_5264 5264            /* "DIES!" */
#define MSG_LOST 5266                 /* "LOST" */
#define MSG_VITALITY_5268 5268        /* "VITALITY" */
#define MSG_HIT_POINTS_5269 5269      /* "HIT POINTS" */
#define MSG_A_DEMONIC_FORCE_APPEARS 5270/* "A DEMONIC FORCE APPEARS!" */
#define MSG_IS_ATTACKED 5271          /* "IS ATTACKED!" */
#define MSG_IS_BATTERED_ABOUT 5272    /* "IS BATTERED ABOUT!" */
#define MSG_IS_RIPPED_TO_SHREADS 5273 /* "IS RIPPED TO SHREADS!!" */
#define MSG_THE_DEMONIC_FORCE_SMILES 5274/* "THE DEMONIC FORCE SMILES..." */
#define MSG_NAUSEATED 5275            /* "NAUSEATED" */
#define MSG_MAGIC_POWER 5276          /* "MAGIC POWER" */
#define MSG_NO_TRAP 5300              /* "NO TRAP" */
#define MSG_WAND_DAGGER 5500          /* "WAND&DAGGER" */
#define MSG_SKILL_POINTS 5534         /* "SKILL POINTS" */
#define MSG_DAGGER_6000 6000          /* "?DAGGER" */
#define MSG_NOT 7040                  /* "NOT " */
#define MSG_TO_7041 7041              /* "TO " */
#define MSG_PASSING_THE_DEVICE_OV_19480 19480/* "Passing the device over the pages of the book, you read the" */
#define MSG_THERE_IS_DARKNESS_ALL_28230 28230/* "There is darkness all around, and you feel nothing, nothing at all..." */
#define MSG_THERE_IS_MUCH_TO_LEAR_28310 28310/* "There is much to learn upon your journey through the stars, and" */
#define MSG_UPON_A_GREAT_METAL_VE_28610 28610/* "Upon a great metal vessel bearing the insignia of the Umpani" */
#define MSG_WITHIN_THE_CONFINES_O_28670 28670/* "Within the confines of your somber quarters inside the bulkhead of a" */
#define MSG_YOU_CONFRONT_A_GIANT_31100 31100/* "You confront a giant slumbering beast, so huge that it fills the" */
#define MSG_AND_THEN_THERE_WERE_S_31110 31110/* "...And then there were stars... &%?]" */
#define MSG_AN_EVIL_PRESENCE_APPE_31120 31120/* "An evil presence appears against the darkness around you... &%?]" */
#define MSG_YOU_EMERGE_FROM_YOUR_31130 31130/* "You emerge from your metal beast into a long narrow corridor... &%?]" */
#define MSG_I_AM_HE_THAT_IS_CALLE_31150 31150/* "I am he that is called Dark Savant... &%?]" */
#define MSG_WE_TRAVEL_TO_A_DISTAN_31160 31160/* "We travel to a distant world, vanished for many millenia, the" */
#define MSG_WITH_IT_I_SHALL_AQUIR_31170 31170/* "With it, I shall aquire the knowledge of the gods! &%?]" */
#define MSG_I_SHALL_COMMAND_THE_T_31190 31190/* "I shall command the T'Rang to offer you assistance... &%?]" */
#define MSG_UNTIL_WE_ARRIVE_YOU_W_31200 31200/* "Until we arrive, you will remain aboard my Black Ship... &%?]" */
#define MSG_A_YOUNG_GIRL_APPROACH_31210 31210/* "A young girl approaches and escorts you through the" */
#define MSG_SEVERAL_DAYS_LATER_YO_31220 31220/* "Several days later you are placed aboard another metal space-bird," */
#define MSG_THE_PLANET_GUARDIA_31230 31230/* "The planet Guardia... &%?]" */
#define MSG_HSSST_WE_HAVE_ARRIVED_31240 31240/* "'Hssst, we have arrived!' hisses one of the T'Rang," */
#define MSG_BEHOLD_THE_COSMIC_FOR_31500 31500/* "!Behold the Cosmic Forge! &%?]" */
#define MSG_IN_THE_DEEP_REGIONS_O_31520 31520/* "In the deep regions of space, a tiny planet by name of Guardia" */
#define MSG_EVEN_AS_I_SPEAK_AN_EV_31530 31530/* "Even as I speak, an evil presence draws closer to the lost planet" */
#define MSG_WITHIN_THE_BLACK_SHIP_31535 31535/* "Within the Black Ship comes the Harbinger of Doom, challenger to the" */
#define MSG_ABOARD_THE_SHIP_OF_TH_31550 31550/* "Aboard the ship of the Dark Savant is a young girl, by name of" */
#define MSG_THE_T_RANG_31560 31560    /* "The T'Rang... &%?]" */
#define MSG_THE_UMPANI_31565 31565    /* "The Umpani... &%?]" */
#define MSG_THERE_IS_NO_MORE_TIME_31570 31570/* "There is no more time to lose... &%?]" */
#define MSG_INSIDE_A_TINY_BIRD_OF_31580 31580/* "...Inside a tiny bird of steel, you have traveled far into the" */
#define MSG_THE_PLANET_GUARDIA_31590 31590/* "The planet Guardia... &%?]" */
#define MSG_WE_HAVE_ARRIVED_EXCLA_31600 31600/* "'We have arrived!' exclaims Aletheides, and everyone scrambles as he" */
#define MSG_INSIDE_THE_RUINS_OF_A_31650 31650/* "Inside the ruins of an abandoned temple, you have come in search" */
#define MSG_PERCHED_UPON_HIS_THRO_31700 31700/* "Perched upon his throne, a great black dragon sits pondering the" */
#define MSG_THEY_CALL_THEMSELVES_31715 31715/* "They call themselves the Umpani, and I listened as they talked of" */
#define MSG_SOMEWHERE_AMONG_THE_S_31720 31720/* "Somewhere among the stars is a place they call Lost Guardia... &%?]" */
#define MSG_THEY_ALSO_SPOKE_OF_TE_31730 31730/* "They also spoke of terrible creatures called" */
#define MSG_AND_OF_A_BLACK_SHIP_A_31735 31735/* "And of a Black Ship approaching the lost world... &%?]" */
#define MSG_AND_WITHIN_THE_BLACK_31740 31740/* "And within the Black Ship, a god they call the Dark Savant... &%?]" */
#define MSG_A_YOUNG_GIRL_VI_DOMIN_31750 31750/* "A young girl, Vi Domina, who possesses a special power over the" */
#define MSG_AFTER_THE_VOICES_CEAS_31755 31755/* "After the voices ceased, I devised a plan... &%?]" */
#define MSG_CONCEALED_NEAR_THE_CH_31760 31760/* "...Concealed near the chamber of the Cosmic Forge, you wait" */
#define MSG_THERE_HE_IS_WHISPERS_31770 31770/* "'There he is!' whispers Bela... &%?]" */
#define MSG_INSIDE_A_TINY_BIRD_OF_31780 31780/* "...Inside a tiny bird of steel, you have traveled far into the" */
#define MSG_THE_STRANGE_WORLD_LOS_31800 31800/* "The strange world, Lost Guardia... &%?]" */
#define MSG_HERE_AT_LAST_BELA_YEL_31810 31810/* "'Here at last!' Bela yelps, 'But the Cosmic Lord" */

#endif
