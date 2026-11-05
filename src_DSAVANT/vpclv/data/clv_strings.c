/* The level-up overlay's initialized strings, in data segment order.
 * One module: ln pads each module to a word, and these follow each other
 * at odd offsets. */

char percent_suffix_text[] = "% ";
char spell_cost_panel_text[] = "***";	/* draw_spell_cost, for no cost */
char screen_save_temp_file[] = "V.$$$";	/* pick_spell_dialog_keep_frames */

/* set_profession_resistances: per profession, base resistance codes and
   their growth digits. */
char fighter_resist_base[] = "ACBCBCCCCHCHBA";
char fighter_resist_growth[] = "02222232112230";
char ranger_valkyrie_resist_base[] = "ACCCCDCCCHHKDA";
char ranger_valkyrie_resist_growth[] = "02222232123230";
char lord_resist_base[] = "ACCCCDCCCIFKEA";
char lord_resist_growth[] = "02222232121230";
char samurai_resist_base[] = "ACHCHDCCCHFIDA";
char samurai_resist_growth[] = "02323232111230";
char ninja_resist_base[] = "ACKCHHGCCIECBA";
char ninja_resist_growth[] = "02322322121220";
char mage_alchemist_resist_base[] = "ACBCCDECCEEEGA";
char mage_alchemist_resist_growth[] = "02121212111330";
char psionic_resist_base[] = "ACICIBHCCFKFFA";
char psionic_resist_growth[] = "02323112113330";
char priest_bishop_resist_base[] = "ACECCEGCCIFKFA";
char priest_bishop_resist_growth[] = "02222222122220";
char monk_resist_base[] = "ACKCGDHCCFKIDA";
char monk_resist_growth[] = "02322212112320";
char thief_bard_resist_base[] = "ACHCHHGCCCECHA";
char thief_bard_resist_growth[] = "02322322112230";

/* prepare_skill_list: which skills of each group a profession may learn. */
char profession_0_skill_group_0[] = "1111111110";
char profession_0_skill_group_1[] = "11100000";
char profession_0_skill_group_2[] = "000000";
char profession_0_skill_group_3[] = "1111000000";
char profession_1_skill_group_0[] = "1000111100";
char profession_1_skill_group_1[] = "11101000";
char profession_1_skill_group_2[] = "000000";
char profession_1_skill_group_3[] = "1111000010";
char profession_2_skill_group_0[] = "0001101010";
char profession_2_skill_group_1[] = "11101000";
char profession_2_skill_group_2[] = "000000";
char profession_2_skill_group_3[] = "1111101000";
char profession_3_skill_group_0[] = "1111111110";
char profession_3_skill_group_1[] = "11101111";
char profession_3_skill_group_2[] = "000000";
char profession_3_skill_group_3[] = "1111000000";
char profession_4_skill_group_0[] = "1111111110";
char profession_4_skill_group_1[] = "11100111";
char profession_4_skill_group_2[] = "000000";
char profession_4_skill_group_3[] = "1111010000";
char profession_5_skill_group_0[] = "1001110000";
char profession_5_skill_group_1[] = "11100000";
char profession_5_skill_group_2[] = "000000";
char profession_5_skill_group_3[] = "1111010000";
char profession_6_skill_group_0[] = "1111111110";
char profession_6_skill_group_1[] = "11111111";
char profession_6_skill_group_2[] = "000000";
char profession_6_skill_group_3[] = "1111000010";
char profession_7_skill_group_0[] = "1001111000";
char profession_7_skill_group_1[] = "11101000";
char profession_7_skill_group_2[] = "000000";
char profession_7_skill_group_3[] = "1111000100";
char profession_8_skill_group_0[] = "1111111110";
char profession_8_skill_group_1[] = "11101000";
char profession_8_skill_group_2[] = "000000";
char profession_8_skill_group_3[] = "1111001000";
char profession_9_skill_group_0[] = "0001101010";
char profession_9_skill_group_1[] = "11101000";
char profession_9_skill_group_2[] = "000000";
char profession_9_skill_group_3[] = "1111101010";
char profession_10_skill_group_0[] = "1111111110";
char profession_10_skill_group_1[] = "11101000";
char profession_10_skill_group_2[] = "000000";
char profession_10_skill_group_3[] = "1111101000";
char profession_11_skill_group_0[] = "1111111110";
char profession_11_skill_group_1[] = "11101000";
char profession_11_skill_group_2[] = "000000";
char profession_11_skill_group_3[] = "1111000011";
char profession_12_skill_group_0[] = "1001111101";
char profession_12_skill_group_1[] = "11101001";
char profession_12_skill_group_2[] = "000000";
char profession_12_skill_group_3[] = "1111000101";
char profession_13_skill_group_0[] = "1111111111";
char profession_13_skill_group_1[] = "11100111";
char profession_13_skill_group_2[] = "000000";
char profession_13_skill_group_3[] = "1111010001";

char stamina_percent_open_text[] = "% (";
char stamina_percent_close_text[] = ")";
char hit_points_separator_text[] = "/";
char empty_vitals_suffix_text[] = "";
char empty_stat_number_separator[] = "";
char empty_stat_number_suffix[] = "";
char level_up_screen_file[] = "PCVWSCRN.VGA";
