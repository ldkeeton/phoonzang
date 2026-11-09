/* The level-up overlay's initialized strings, in data segment order.
 * One module: ln pads each module to a word, and these follow each other
 * at odd offsets. */

char percent_suffix_text[] = "% ";
char spell_cost_panel_text[] = "***";		/* draw_spell_cost, for no cost */
char spell_dialog_save_file[] = "V.$$$";	/* pick_spell_dialog_keep_frames */

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

/* prepare_skill_list: which Weaponry, Physical, Personal and Academia
   skills each profession may learn. */
char fighter_weaponry_skills[] = "1111111110";
char fighter_physical_skills[] = "11100000";
char fighter_personal_skills[] = "000000";
char fighter_academia_skills[] = "1111000000";
char mage_weaponry_skills[] = "1000111100";
char mage_physical_skills[] = "11101000";
char mage_personal_skills[] = "000000";
char mage_academia_skills[] = "1111000010";
char priest_weaponry_skills[] = "0001101010";
char priest_physical_skills[] = "11101000";
char priest_personal_skills[] = "000000";
char priest_academia_skills[] = "1111101000";
char thief_weaponry_skills[] = "1111111110";
char thief_physical_skills[] = "11101111";
char thief_personal_skills[] = "000000";
char thief_academia_skills[] = "1111000000";
char ranger_weaponry_skills[] = "1111111110";
char ranger_physical_skills[] = "11100111";
char ranger_personal_skills[] = "000000";
char ranger_academia_skills[] = "1111010000";
char alchemist_weaponry_skills[] = "1001110000";
char alchemist_physical_skills[] = "11100000";
char alchemist_personal_skills[] = "000000";
char alchemist_academia_skills[] = "1111010000";
char bard_weaponry_skills[] = "1111111110";
char bard_physical_skills[] = "11111111";
char bard_personal_skills[] = "000000";
char bard_academia_skills[] = "1111000010";
char psionic_weaponry_skills[] = "1001111000";
char psionic_physical_skills[] = "11101000";
char psionic_personal_skills[] = "000000";
char psionic_academia_skills[] = "1111000100";
char valkyrie_weaponry_skills[] = "1111111110";
char valkyrie_physical_skills[] = "11101000";
char valkyrie_personal_skills[] = "000000";
char valkyrie_academia_skills[] = "1111001000";
char bishop_weaponry_skills[] = "0001101010";
char bishop_physical_skills[] = "11101000";
char bishop_personal_skills[] = "000000";
char bishop_academia_skills[] = "1111101010";
char lord_weaponry_skills[] = "1111111110";
char lord_physical_skills[] = "11101000";
char lord_personal_skills[] = "000000";
char lord_academia_skills[] = "1111101000";
char samurai_weaponry_skills[] = "1111111110";
char samurai_physical_skills[] = "11101000";
char samurai_personal_skills[] = "000000";
char samurai_academia_skills[] = "1111000011";
char monk_weaponry_skills[] = "1001111101";
char monk_physical_skills[] = "11101001";
char monk_personal_skills[] = "000000";
char monk_academia_skills[] = "1111000101";
char ninja_weaponry_skills[] = "1111111111";
char ninja_physical_skills[] = "11100111";
char ninja_personal_skills[] = "000000";
char ninja_academia_skills[] = "1111010001";

char stamina_percent_open_text[] = "% (";
char stamina_percent_close_text[] = ")";
char hit_points_separator_text[] = "/";
char empty_vitals_suffix_text[] = "";
char empty_stat_number_separator[] = "";
char empty_stat_number_suffix[] = "";
char level_up_screen_file[] = "PCVWSCRN.VGA";
