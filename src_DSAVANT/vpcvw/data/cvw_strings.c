/* The character view overlay's initialized strings, in data segment
 * order.  One module: ln pads each module to a word, and these follow
 * each other at odd offsets. */

char percent_suffix_text[] = "% ";
char title_panel_screen_file[] = "V.$$$";	/* select_grid_text_option */
char choice_grid_screen_file[] = "V.$$$";	/* select_grid_text_option */
char spell_cost_panel_text[] = "***";		/* draw_spell_cost, for no cost */
char spell_dialog_save_file[] = "V.$$$";	/* pick_spell_dialog_keep_frames */
char scene_message_separator[] = " ";		/* append_scene_message_fragment */
char character_view_screen_filename[] = "PCVWSCRN.VGA";

/* identify_and_show_item_details. */
char open_parenthesis[] = "(";
char plus_sign[] = "+";
char close_parenthesis[] = ")";
char positive_sign[] = "+";
char spell_separator[] = "/";
char space_separator[] = " ";
char percent_sign[] = "%";

/* set_character_skill_flags: which Weaponry, Physical, Personal and
   Academia skills each profession may learn. */
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
char screen_save_temp_file[] = "V.$$$";	/* prompt_character_name */

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

/* apply_race_stat_limits: per race, eight stat caps, each 'A' plus
   the value. */
char race_0_stat_caps[] = "JIIJJIIA";
char race_1_stat_caps[] = "HKKHJJIA";
char race_2_stat_caps[] = "LGKMHHHA";
char race_3_stat_caps[] = "KHNKIGGA";
char race_4_stat_caps[] = "IHGJKHNA";
char race_5_stat_caps[] = "FLGGKOMA";
char race_6_stat_caps[] = "MFFOIKDA";
char race_7_stat_caps[] = "KHGMKIGA";
char race_8_stat_caps[] = "HKHHKMKA";
char race_9_stat_caps[] = "IGMKIIKA";
char race_10_stat_caps[] = "KKGKHHJA";
char portrait_data_filename[] = "PORTDATA.VGA";	/* load_member_icon */
