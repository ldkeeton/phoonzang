/* The character-making overlay's initialized strings, in data segment
 * order.  One module: ln pads each module to a word, and these follow
 * each other at odd offsets. */

char pc_file_name[] = "PCFILE.DBS";
char title_panel_screen_file[] = "V.$$$";	/* select_grid_text_option */
char choice_grid_screen_file[] = "V.$$$";	/* select_grid_text_option */
char list_dialog_temp_file[] = "V.$$$";		/* pick_list_entry_dialog */
char screen_save_temp_file[] = "V.$$$";		/* prompt_character_name */
char stamina_percent_suffix[] = "% ";

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

char spell_cost_panel_text[] = "***";		/* draw_spell_cost, for no cost */
char spell_dialog_save_file[] = "V.$$$";	/* pick_spell_dialog_keep_frames */

/* Per profession, eight stat minima, each 'A' plus the value. */
char fighter_stat_requirements[] = "MAAAAAAA";
char mage_stat_requirements[] = "AMAAAAAA";
char priest_stat_requirements[] = "AAMAAAIA";
char thief_stat_requirements[] = "AAAAMIAA";
char ranger_stat_requirements[] = "KIILKIIA";
char alchemist_stat_requirements[] = "ANAANAAA";
char bard_stat_requirements[] = "AKAAMIMA";
char psionic_stat_requirements[] = "KOAOAAKA";
char valkyrie_stat_requirements[] = "KALLKLIA";
char bishop_stat_requirements[] = "APPAAAIA";
char lord_stat_requirements[] = "MJMMJJOA";
char samurai_stat_requirements[] = "MLAJMOIA";
char monk_stat_requirements[] = "NINAKNIA";
char ninja_stat_requirements[] = "MKKMMMAA";

/* Per race, eight stat minima, each 'A' plus the value. */
char race_0_stat_minimums[] = "JIIJJIIA";
char race_1_stat_minimums[] = "HKKHJJIA";
char race_2_stat_minimums[] = "LGKMHHHA";
char race_3_stat_minimums[] = "KHNKIGGA";
char race_4_stat_minimums[] = "IHGJKHNA";
char race_5_stat_minimums[] = "FLGGKOMA";
char race_6_stat_minimums[] = "MFFOIKDA";
char race_7_stat_minimums[] = "KHGMKIGA";
char race_8_stat_minimums[] = "HKHHKMKA";
char race_9_stat_minimums[] = "IGMKIIKA";
char race_10_stat_minimums[] = "KKGKHHJA";

/* set_profession_resistances: per profession, base resistance codes and
   their growth digits. */
char fighter_base_resist[] = "ACBCBCCCCHCHBA";
char fighter_resist_mod[] = "02222232112230";
char ranger_base_resist[] = "ACCCCDCCCHHKDA";
char ranger_resist_mod[] = "02222232123230";
char lord_base_resist[] = "ACCCCDCCCIFKEA";
char lord_resist_mod[] = "02222232121230";
char samurai_base_resist[] = "ACHCHDCCCHFIDA";
char samurai_resist_mod[] = "02323232111230";
char ninja_base_resist[] = "ACKCHHGCCIECBA";
char ninja_resist_mod[] = "02322322121220";
char mage_base_resist[] = "ACBCCDECCEEEGA";
char mage_resist_mod[] = "02121212111330";
char psionic_base_resist[] = "ACICIBHCCFKFFA";
char psionic_resist_mod[] = "02323112113330";
char priest_base_resist[] = "ACECCEGCCIFKFA";
char priest_resist_mod[] = "02222222122220";
char monk_base_resist[] = "ACKCGDHCCFKIDA";
char monk_resist_mod[] = "02322212112320";
char thief_base_resist[] = "ACHCHHGCCCECHA";
char thief_resist_mod[] = "02322322112230";

char portrait_data_filename[] = "PORTDATA.VGA";	/* load_member_icon */
char pc_file_database_filename[] = "PCFILE.DBS";
char saved_character_file_name[] = "PCFILE.DBS";
char pc_view_screen_file[] = "PCVWSCRN.VGA";
