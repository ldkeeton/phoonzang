; auto-generated
bits 16
%include "include/nasm_macros.inc"
%ifndef VBASE
%ifdef ELF_BUILD
VBASE equ 0
%else
VBASE equ -0x0200
%endif
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0200 + VBASE
%endif

%ifndef ELF_BUILD
    ; DOS MZ executable header (512 bytes)
    db "MZ"                                       ; e_magic: DOS MZ signature
    dw (__zimage_end - $$) % 512                  ; 0x0014 ; e_cblp: bytes in final 512-byte page (0 means full)
    dw ((__zimage_end - $$) + 511) // 512         ; 0x0031 ; e_cp: total 512-byte pages in the file
    dw 0x0001                                     ; e_crlc: number of relocation entries
    dw 0x0020                                     ; e_cparhdr: header size in 16-byte paragraphs
    dw ((__zstack_top - __zimage_end) + 15) // 16 ; 0x045d ; e_minalloc: minimum extra memory paragraphs
    dw 0xffff                                     ; e_maxalloc: maximum extra memory paragraphs
    dw __zdseg_para                               ; 0x038e ; e_ss: initial stack segment, relative to load module
    dw __zstack_top - __zdseg_start               ; 0x6afe ; e_sp: initial stack pointer
    dw 0x0000                                     ; e_csum: file checksum (often unused)
    dw aztec_begin - IMAGE_BASE                   ; 0x33d2 ; e_ip: initial instruction pointer
    dw 0x0000                                     ; e_cs: initial code segment, relative to load module
    dw 0x0020                                     ; e_lfarlc: file offset of relocation table
    dw 0x0000                                     ; e_ovno: overlay number (0 for main executable)

    times 4 db 0
    dw __zinsn_aztec_begin + 0x1 - IMAGE_BASE, 0x0000 ; 0x33d3 ; relocation: segment word DOS patches
    times 476 db 0
%endif

graphics_mode_label_table equ __zgraphics_mode_label_table - __zdseg_start
source_drive_types_allowed equ __zsource_drive_types_allowed - __zdseg_start
destination_drive_types_allowed equ __zdestination_drive_types_allowed - __zdseg_start
_lowwater equ __z_lowwater - __zdseg_start
__zbss_size equ __zbss_end - __zimage_end

%include "vinstall/game/drive_is_valid.asm" ; 0x0200

%include "vinstall/game/reverse_text.asm"  ; 0x026d

%include "vinstall/game/int_to_str.asm"    ; 0x02b2

%include "vinstall/game/long_to_str.asm"   ; 0x0315

%include "vinstall/game/put_int_at.asm"    ; 0x03b3

%include "vinstall/game/put_int_at_highlight_attr.asm" ; 0x03e1

%include "vinstall/game/put_text_at.asm"   ; 0x040f

%include "vinstall/game/put_text_at_highlight_attr.asm" ; 0x0429

%include "vinstall/game/clear_screen_home_cursor.asm" ; 0x0443

bell_character_format equ __zbell_character_format - __zdseg_start
%include "vinstall/game/console_bell.asm"  ; 0x0452

%include "vinstall/game/draw_input_cursor_marker.asm" ; 0x0584

%include "vinstall/game/read_text_at.asm"  ; 0x05b6

%include "vinstall/game/normalize_input_key.asm" ; 0x06a6

%include "vinstall/game/set_video_mode.asm" ; 0x06f1

single_space_text equ __zsingle_space_text - __zdseg_start
%include "vinstall/game/put_int_right_aligned.asm" ; 0x0710

long_alignment_space equ __zlong_alignment_space - __zdseg_start
%include "vinstall/game/put_long_right_aligned.asm" ; 0x078a

%include "vinstall/game/parse_int.asm"     ; 0x0807

%include "vinstall/game/parse_long.asm"    ; 0x0815

int_prompt_clear_spaces equ __zint_prompt_clear_spaces - __zdseg_start
%include "vinstall/game/prompt_int_at.asm" ; 0x0823

%include "vinstall/game/prompt_long_at.asm" ; 0x088f

put_text_attribute       equ __zbss_2644 - __zdseg_start
highlight_text_attribute equ __zbss_2645 - __zdseg_start
alt_text_attribute       equ __zbss_2646 - __zdseg_start
clear_attribute          equ __zbss_2647 - __zdseg_start
%include "vinstall/game/set_text_attributes.asm" ; 0x0927

disk_drive_type_table equ __zdisk_drive_type_table - __zdseg_start
%include "vinstall/game/draw_drive_setup_row.asm" ; 0x0944

message_line_blank_before equ __zmessage_line_blank_before - __zdseg_start
message_line_blank_after  equ __zmessage_line_blank_after - __zdseg_start
installer_message_buffer  equ __zbss_2648 - __zdseg_start
%include "vinstall/game/show_message_wait_for_enter.asm" ; 0x0992

scenario_header_name           equ __zscenario_header_name - __zdseg_start
header_open_error_prefix       equ __zheader_open_error_prefix - __zdseg_start
header_open_error_suffix       equ __zheader_open_error_suffix - __zdseg_start
install_version_mismatch_error equ __zinstall_version_mismatch_error - __zdseg_start
disk_layout_5_path_separator   equ __zdisk_layout_5_path_separator - __zdseg_start
savegame_filename              equ __zsavegame_filename - __zdseg_start
scenario_header_handle         equ __zbss_2698 - __zdseg_start
scenario_header_record         equ __zbss_269a - __zdseg_start
game_directory_0               equ __zbss_296a - __zdseg_start
disk_layout_5_path             equ __zbss_297e - __zdseg_start
game_directory_1               equ __zbss_2992 - __zdseg_start
savegame_filename_field        equ __zbss_29a6 - __zdseg_start
ems_enabled                    equ __zbss_29ba - __zdseg_start
ramdisk_enabled                equ __zbss_29bb - __zdseg_start
ramdisk_name                   equ __zbss_29bc - __zdseg_start
screen_brightness_level        equ __zbss_29d0 - __zdseg_start
screen_contrast_level          equ __zbss_29d1 - __zdseg_start
install_version                equ __zbss_29d2 - __zdseg_start
sound_volume_0                 equ __zbss_29d4 - __zdseg_start
sound_volume_1                 equ __zbss_29d5 - __zdseg_start
sound_volume_2                 equ __zbss_29d6 - __zdseg_start
sound_volume_3                 equ __zbss_29d7 - __zdseg_start
sound_base_port_0              equ __zbss_29d8 - __zdseg_start
sound_base_port_1              equ __zbss_29da - __zdseg_start
digital_sound_device           equ __zbss_29dc - __zdseg_start
install_music_device           equ __zbss_29dd - __zdseg_start
disk_layout                    equ __zbss_29df - __zdseg_start
mouse_choice_enabled           equ __zbss_29e1 - __zdseg_start
graphics_mode_choice           equ __zbss_29e2 - __zdseg_start
disk_layout_5_flag             equ __zbss_29e3 - __zdseg_start
%include "vinstall/game/update_scenario_header.asm" ; 0x0a0f

vga_available      equ __zbss_29e6 - __zdseg_start
ega_available      equ __zbss_29e8 - __zdseg_start
cga_available      equ __zbss_29ea - __zdseg_start
hercules_available equ __zbss_29ec - __zdseg_start
%include "vinstall/game/advance_graphics_mode_choice.asm" ; 0x0c21

; disk_drive_type_table equ __zdisk_drive_type_table - __zdseg_start
%include "vinstall/game/cycle_drive_type_choice.asm" ; 0x0cd6

sound_device_names equ __zsound_device_names - __zdseg_start
%include "vinstall/game/next_sound_device.asm" ; 0x0d12

no_yes_label_table equ __zno_yes_label_table - __zdseg_start
%include "vinstall/game/toggle_yes_no_choice.asm" ; 0x0d3f

command_line_blank_text equ __zcommand_line_blank_text - __zdseg_start
%include "vinstall/game/display_centered_command_line.asm" ; 0x0d6a

insert_disk_message_prefix equ __zinsert_disk_message_prefix - __zdseg_start
destination_disk_label     equ __zdestination_disk_label - __zdseg_start
source_disk_label          equ __zsource_disk_label - __zdseg_start
disk_number_label_prefix   equ __zdisk_number_label_prefix - __zdseg_start
disk_drive_label_prefix    equ __zdisk_drive_label_prefix - __zdseg_start
press_return_prompt_suffix equ __zpress_return_prompt_suffix - __zdseg_start
%include "vinstall/game/prompt_for_archive_disk.asm" ; 0x0dda

pkunzip_exe_suffix            equ __zpkunzip_exe_suffix - __zdseg_start
pkunzip_argv0                 equ __zpkunzip_argv0 - __zdseg_start
pkunzip_command_prefix        equ __zpkunzip_command_prefix - __zdseg_start
command_argument_separator    equ __zcommand_argument_separator - __zdseg_start
null_device_name              equ __znull_device_name - __zdseg_start
stream_append_mode            equ __zstream_append_mode - __zdseg_start
console_device_name           equ __zconsole_device_name - __zdseg_start
console_stream_append_mode    equ __zconsole_stream_append_mode - __zdseg_start
unzip_failure_prefix          equ __zunzip_failure_prefix - __zdseg_start
unzip_failure_suffix          equ __zunzip_failure_suffix - __zdseg_start
archive_process_stream        equ __zarchive_process_stream - __zdseg_start
archive_process_stream_handle equ __zbss_29ee - __zdseg_start
%include "vinstall/game/run_pkunzip_archive.asm" ; 0x0ed8

empty_filespec_list   equ __zempty_filespec_list - __zdseg_start
filespec_separator    equ __zfilespec_separator - __zdseg_start
pkunzip_filespec_list equ __zbss_29f0 - __zdseg_start
%include "vinstall/game/queue_pkunzip_filespec.asm" ; 0x102d

default_source_drive_mode_0 equ __zdefault_source_drive_mode_0 - __zdseg_start
default_dest_drive_mode_0   equ __zdefault_dest_drive_mode_0 - __zdseg_start
default_source_drive_mode_1 equ __zdefault_source_drive_mode_1 - __zdseg_start
default_dest_path_mode_1    equ __zdefault_dest_path_mode_1 - __zdseg_start
default_source_drive_mode_2 equ __zdefault_source_drive_mode_2 - __zdseg_start
default_dest_path_mode_2    equ __zdefault_dest_path_mode_2 - __zdseg_start
default_source_drive_mode_3 equ __zdefault_source_drive_mode_3 - __zdseg_start
default_dest_path_mode_3    equ __zdefault_dest_path_mode_3 - __zdseg_start
default_source_drive_mode_4 equ __zdefault_source_drive_mode_4 - __zdseg_start
default_dest_path_mode_4    equ __zdefault_dest_path_mode_4 - __zdseg_start
%include "vinstall/game/set_install_drive_defaults.asm" ; 0x10a4

%include "vinstall/game/install_file_matches_letter.asm" ; 0x1155

invalid_destination_drive      equ __zinvalid_destination_drive - __zdseg_start
invalid_drive_prompt_suffix    equ __zinvalid_drive_prompt_suffix - __zdseg_start
directory_create_error_prefix  equ __zdirectory_create_error_prefix - __zdseg_start
directory_create_prompt_suffix equ __zdirectory_create_prompt_suffix - __zdseg_start
directory_lookup_error_prefix  equ __zdirectory_lookup_error_prefix - __zdseg_start
directory_lookup_prompt_suffix equ __zdirectory_lookup_prompt_suffix - __zdseg_start
%include "vinstall/game/enter_destination_directory.asm" ; 0x11ba

graphics_mode_label_vga         equ __zgraphics_mode_label_vga - __zdseg_start
graphics_mode_label_ega         equ __zgraphics_mode_label_ega - __zdseg_start
; sound_device_names              equ __zsound_device_names - __zdseg_start
; no_yes_label_table              equ __zno_yes_label_table - __zdseg_start
; disk_drive_type_table           equ __zdisk_drive_type_table - __zdseg_start
navigation_up_table             equ __znavigation_up_table - __zdseg_start
navigation_down_table           equ __znavigation_down_table - __zdseg_start
navigation_right_table          equ __znavigation_right_table - __zdseg_start
navigation_left_table           equ __znavigation_left_table - __zdseg_start
installer_title_border_top      equ __zinstaller_title_border_top - __zdseg_start
wizardry_title_line             equ __zwizardry_title_line - __zdseg_start
dark_savant_title_line          equ __zdark_savant_title_line - __zdseg_start
installer_version_line          equ __zinstaller_version_line - __zdseg_start
installer_title_border_bottom   equ __zinstaller_title_border_bottom - __zdseg_start
version_separator               equ __zversion_separator - __zdseg_start
copyright_line_0                equ __zcopyright_line_0 - __zdseg_start
copyright_line_1                equ __zcopyright_line_1 - __zdseg_start
copyright_line_2                equ __zcopyright_line_2 - __zdseg_start
copyright_line_3                equ __zcopyright_line_3 - __zdseg_start
copyright_line_4                equ __zcopyright_line_4 - __zdseg_start
copyright_line_5                equ __zcopyright_line_5 - __zdseg_start
copyright_line_6                equ __zcopyright_line_6 - __zdseg_start
copyright_line_7                equ __zcopyright_line_7 - __zdseg_start
copyright_line_8                equ __zcopyright_line_8 - __zdseg_start
copyright_line_9                equ __zcopyright_line_9 - __zdseg_start
empty_message_text              equ __zempty_message_text - __zdseg_start
press_return_to_begin           equ __zpress_return_to_begin - __zdseg_start
setup_screen_border_top         equ __zsetup_screen_border_top - __zdseg_start
setup_screen_title_wizardry     equ __zsetup_screen_title_wizardry - __zdseg_start
setup_screen_title_dark_savant  equ __zsetup_screen_title_dark_savant - __zdseg_start
setup_screen_title_installation equ __zsetup_screen_title_installation - __zdseg_start
setup_screen_border_bottom      equ __zsetup_screen_border_bottom - __zdseg_start
default_source_drive            equ __zdefault_source_drive - __zdseg_start
empty_drive_name                equ __zempty_drive_name - __zdseg_start
drive_table_header              equ __zdrive_table_header - __zdseg_start
drive_table_header_rule         equ __zdrive_table_header_rule - __zdseg_start
source_drive_row_label          equ __zsource_drive_row_label - __zdseg_start
destination_drive_row_label     equ __zdestination_drive_row_label - __zdseg_start
memory_expansion_row            equ __zmemory_expansion_row - __zdseg_start
graphic_mode_row                equ __zgraphic_mode_row - __zdseg_start
video_adjustment_rule           equ __zvideo_adjustment_rule - __zdseg_start
brightness_label                equ __zbrightness_label - __zdseg_start
contrast_label                  equ __zcontrast_label - __zdseg_start
mouse_label                     equ __zmouse_label - __zdseg_start
sound_label                     equ __zsound_label - __zdseg_start
action_row                      equ __zaction_row - __zdseg_start
navigation_help_row             equ __znavigation_help_row - __zdseg_start
no_video_card_error             equ __zno_video_card_error - __zdseg_start
unable_to_complete_error        equ __zunable_to_complete_error - __zdseg_start
navigation_help_message         equ __znavigation_help_message - __zdseg_start
full_install_label              equ __zfull_install_label - __zdseg_start
config_only_label               equ __zconfig_only_label - __zdseg_start
abort_install_label             equ __zabort_install_label - __zdseg_start
full_install_label_highlighted  equ __zfull_install_label_highlighted - __zdseg_start
config_only_label_highlighted   equ __zconfig_only_label_highlighted - __zdseg_start
abort_install_label_highlighted equ __zabort_install_label_highlighted - __zdseg_start
bad_source_drive_error          equ __zbad_source_drive_error - __zdseg_start
source_path_not_allowed_error   equ __zsource_path_not_allowed_error - __zdseg_start
destination_drive_blank         equ __zdestination_drive_blank - __zdseg_start
bad_destination_drive_error     equ __zbad_destination_drive_error - __zdseg_start
drive_conflict_warning          equ __zdrive_conflict_warning - __zdseg_start
bad_destination_path_error      equ __zbad_destination_path_error - __zdseg_start
bad_ram_name_error              equ __zbad_ram_name_error - __zdseg_start
drives_must_differ_error        equ __zdrives_must_differ_error - __zdseg_start
specify_new_drive_prompt        equ __zspecify_new_drive_prompt - __zdseg_start
disk_count_360k                 equ __zdisk_count_360k - __zdseg_start
disk_count_1200k                equ __zdisk_count_1200k - __zdseg_start
disk_count_720k                 equ __zdisk_count_720k - __zdseg_start
disk_count_1440k                equ __zdisk_count_1440k - __zdseg_start
empty_install_message_prefix    equ __zempty_install_message_prefix - __zdseg_start
install_requires_prefix         equ __zinstall_requires_prefix - __zdseg_start
install_requires_suffix         equ __zinstall_requires_suffix - __zdseg_start
formatted_disk_reminder         equ __zformatted_disk_reminder - __zdseg_start
filespec_list_init              equ __zfilespec_list_init - __zdseg_start
message_buffer_init             equ __zmessage_buffer_init - __zdseg_start
source_dir_separator            equ __zsource_dir_separator - __zdseg_start
dest_dir_separator              equ __zdest_dir_separator - __zdseg_start
dest_path_separator             equ __zdest_path_separator - __zdseg_start
full_install_path_separator     equ __zfull_install_path_separator - __zdseg_start
archive_crus01_211c             equ __zarchive_crus01_211c - __zdseg_start
archive_crus01_2127             equ __zarchive_crus01_2127 - __zdseg_start
unzip_all_files_2132            equ __zunzip_all_files_2132 - __zdseg_start
archive_crus02_2133             equ __zarchive_crus02_2133 - __zdseg_start
unzip_all_files_213e            equ __zunzip_all_files_213e - __zdseg_start
archive_crus04_213f             equ __zarchive_crus04_213f - __zdseg_start
unzip_all_files_214a            equ __zunzip_all_files_214a - __zdseg_start
archive_crus06_214b             equ __zarchive_crus06_214b - __zdseg_start
unzip_all_files_2156            equ __zunzip_all_files_2156 - __zdseg_start
archive_crus03_2157             equ __zarchive_crus03_2157 - __zdseg_start
archive_crus03_2162             equ __zarchive_crus03_2162 - __zdseg_start
unzip_all_files_216d            equ __zunzip_all_files_216d - __zdseg_start
archive_crus05_216e             equ __zarchive_crus05_216e - __zdseg_start
unzip_all_files_2179            equ __zunzip_all_files_2179 - __zdseg_start
archive_crus07_217a             equ __zarchive_crus07_217a - __zdseg_start
unzip_all_files_2185            equ __zunzip_all_files_2185 - __zdseg_start
archive_crus08_2186             equ __zarchive_crus08_2186 - __zdseg_start
unzip_all_files_2191            equ __zunzip_all_files_2191 - __zdseg_start
archive_crus07_2192             equ __zarchive_crus07_2192 - __zdseg_start
unzip_all_files_219d            equ __zunzip_all_files_219d - __zdseg_start
archive_crus02_219e             equ __zarchive_crus02_219e - __zdseg_start
archive_crus02_21a9             equ __zarchive_crus02_21a9 - __zdseg_start
unzip_all_files_21b4            equ __zunzip_all_files_21b4 - __zdseg_start
archive_crus04_21b5             equ __zarchive_crus04_21b5 - __zdseg_start
unzip_all_files_21c0            equ __zunzip_all_files_21c0 - __zdseg_start
archive_crus06_21c1             equ __zarchive_crus06_21c1 - __zdseg_start
unzip_all_files_21cc            equ __zunzip_all_files_21cc - __zdseg_start
archive_crus03_21cd             equ __zarchive_crus03_21cd - __zdseg_start
archive_crus03_21d8             equ __zarchive_crus03_21d8 - __zdseg_start
unzip_all_files_21e3            equ __zunzip_all_files_21e3 - __zdseg_start
archive_crus08_21e4             equ __zarchive_crus08_21e4 - __zdseg_start
unzip_all_files_21ef            equ __zunzip_all_files_21ef - __zdseg_start
archive_crus05_21f0             equ __zarchive_crus05_21f0 - __zdseg_start
archive_crus05_21fb             equ __zarchive_crus05_21fb - __zdseg_start
unzip_all_files_2206            equ __zunzip_all_files_2206 - __zdseg_start
archive_crus02_2207             equ __zarchive_crus02_2207 - __zdseg_start
unzip_all_files_2212            equ __zunzip_all_files_2212 - __zdseg_start
archive_crus06_2213             equ __zarchive_crus06_2213 - __zdseg_start
unzip_all_files_221e            equ __zunzip_all_files_221e - __zdseg_start
archive_crus03_221f             equ __zarchive_crus03_221f - __zdseg_start
archive_crus03_222a             equ __zarchive_crus03_222a - __zdseg_start
unzip_all_files_2235            equ __zunzip_all_files_2235 - __zdseg_start
archive_crus04_2236             equ __zarchive_crus04_2236 - __zdseg_start
unzip_all_files_2241            equ __zunzip_all_files_2241 - __zdseg_start
archive_crus07_2242             equ __zarchive_crus07_2242 - __zdseg_start
unzip_all_files_224d            equ __zunzip_all_files_224d - __zdseg_start
archive_crus08_224e             equ __zarchive_crus08_224e - __zdseg_start
unzip_all_files_2259            equ __zunzip_all_files_2259 - __zdseg_start
archive_crus05_225a             equ __zarchive_crus05_225a - __zdseg_start
archive_crus05_2265             equ __zarchive_crus05_2265 - __zdseg_start
unzip_all_files_2270            equ __zunzip_all_files_2270 - __zdseg_start
scenario_header_filename        equ __zscenario_header_filename - __zdseg_start
installation_failure_message    equ __zinstallation_failure_message - __zdseg_start
installation_success_message    equ __zinstallation_success_message - __zdseg_start
game_start_instruction          equ __zgame_start_instruction - __zdseg_start
; installer_message_buffer        equ __zbss_2648 - __zdseg_start
; vga_available                   equ __zbss_29e6 - __zdseg_start
; ega_available                   equ __zbss_29e8 - __zdseg_start
; cga_available                   equ __zbss_29ea - __zdseg_start
; hercules_available              equ __zbss_29ec - __zdseg_start
; pkunzip_filespec_list           equ __zbss_29f0 - __zdseg_start
unused_flag_2af0                equ __zbss_2af0 - __zdseg_start
unused_flag_2af2                equ __zbss_2af2 - __zdseg_start
unused_flag_2af4                equ __zbss_2af4 - __zdseg_start
unused_flag_2af6                equ __zbss_2af6 - __zdseg_start
unused_flag_2af8                equ __zbss_2af8 - __zdseg_start
mouse_detected                  equ __zbss_2afa - __zdseg_start
%include "vinstall/game/main.asm"          ; 0x12b5

%include "vinstall/game/detect_video_and_mouse.asm" ; 0x245e

%include "vinstall/data/saved_video_mode.asm" ; 0x2479

%include "vinstall/library/detect_video_adapter_type.asm" ; 0x247a

%include "vinstall/library/detect_mouse.asm" ; 0x2501

%include "vinstall/library/dos_con_in_noecho.asm" ; 0x2521

; clear_attribute equ __zbss_2647 - __zdseg_start
%include "vinstall/library/bios_clear_screen_home_cursor.asm" ; 0x252e

%include "vinstall/library/bios_set_cursor.asm" ; 0x2551

; clear_attribute equ __zbss_2647 - __zdseg_start
%include "vinstall/library/bios_clear_to_screen_end.asm" ; 0x256a

; clear_attribute equ __zbss_2647 - __zdseg_start
%include "vinstall/library/bios_clear_to_line_end.asm" ; 0x25a6

; highlight_text_attribute equ __zbss_2645 - __zdseg_start
%include "vinstall/library/bios_put_text_highlight_attr.asm" ; 0x25d3

; put_text_attribute equ __zbss_2644 - __zdseg_start
%include "vinstall/library/bios_put_text.asm" ; 0x2621

; alt_text_attribute equ __zbss_2646 - __zdseg_start
%include "vinstall/library/bios_put_text_alt_attr.asm" ; 0x266f

%include "vinstall/library/bios_fill_pixel_rect.asm" ; 0x26bd

%include "vinstall/library/bios_printer_lpt2.asm" ; 0x26f6

%include "vinstall/library/bios_key_available.asm" ; 0x2709

%include "vinstall/library/bios_get_cursor_packed.asm" ; 0x2720

%include "vinstall/library/bios_set_cursor_packed.asm" ; 0x2733

%include "vinstall/library/bios_save_text_rect.asm" ; 0x2747

%include "vinstall/library/bios_restore_text_rect.asm" ; 0x27a9

ctp_ equ __zctp_ - __zdseg_start
%include "vinstall/aztec/aztec_atoi.asm"   ; 0x2806

; ctp_ equ __zctp_ - __zdseg_start
%include "vinstall/aztec/aztec_atol.asm"   ; 0x2877

%include "vinstall/aztec/aztec_fexecl.asm" ; 0x2908

%include "vinstall/aztec/aztec_fexecv.asm" ; 0x291c

%include "vinstall/aztec/aztec_fcbinit.asm" ; 0x29d9

errno equ __zerrno - __zdseg_start
%include "vinstall/aztec/aztec_mkdir.asm"  ; 0x29fe

%include "vinstall/data/aztec_fexec_save_ss.asm" ; 0x2a23

%include "vinstall/data/aztec_fexec_save_sp.asm" ; 0x2a25

dseg_002e equ __zstr_0025 - __zdseg_start + 0x0009
dseg_0030 equ __zstr_0025 - __zdseg_start + 0x000b
env       equ __zenv - __zdseg_start
cline     equ __zcline - __zdseg_start
dseg_2312 equ __zdseg_2312 - __zdseg_start
fcb1      equ __zfcb1 - __zdseg_start
dseg_2316 equ __zdseg_2316 - __zdseg_start
fcb2      equ __zfcb2 - __zdseg_start
dseg_231a equ __zdseg_231a - __zdseg_start
; errno     equ __zerrno - __zdseg_start
%include "vinstall/aztec/aztec_fexec.asm"  ; 0x2a27

%include "vinstall/aztec/aztec_wait.asm"   ; 0x2a9d

%include "shared/aztec/aztec_strcat.asm" ; 0x2aa6

%include "shared/aztec/aztec_strcpy.asm" ; 0x2add

%include "shared/aztec/aztec_strncpy.asm" ; 0x2b09

%include "vinstall/aztec/aztec_sysint.asm" ; 0x2b31

%include "vinstall/aztec/aztec_toupper.asm" ; 0x2bb2

%include "vinstall/aztec/aztec_tolower.asm" ; 0x2bc6

%include "vinstall/aztec/aztec_fopen.asm"  ; 0x2bda

modes equ __zmodes - __zdseg_start
; errno equ __zerrno - __zdseg_start
%include "vinstall/aztec/aztec_freopen.asm" ; 0x2bfe

%include "vinstall/aztec/aztec_printf.asm" ; 0x2c62

%include "vinstall/aztec/aztec_putchar.asm" ; 0x2c7a

%include "vinstall/aztec/aztec_aputc.asm"  ; 0x2c8e

%include "vinstall/aztec/aztec_putc.asm"   ; 0x2cc1

%include "vinstall/aztec/aztec_closall.asm" ; 0x2cf5

%include "vinstall/aztec/aztec_fclose.asm" ; 0x2d0b

cls_ equ __zcls_ - __zdseg_start
%include "vinstall/aztec/aztec_flsh_.asm"  ; 0x2d86

Cbuffs equ __zCbuffs - __zdseg_start
%include "vinstall/aztec/aztec_newstream.asm" ; 0x2e45

%include "vinstall/aztec/aztec_getbuff.asm" ; 0x2e63

endmarker equ __zendmarker - __zdseg_start
keep      equ __zkeep - __zdseg_start
current   equ __zcurrent - __zdseg_start
first     equ __zfirst - __zdseg_start
%include "shared/aztec/aztec_malloc.asm" ; 0x2eac

aztec_format_conversions equ 0x303e + VBASE
; first                    equ __zfirst - __zdseg_start
%include "shared/aztec/aztec_format.asm" ; 0x303e

%include "shared/aztec/aztec_format_get_pointer.asm" ; 0x331e

%include "shared/aztec/aztec_format_do_width.asm" ; 0x3338

; errno  equ __zerrno - __zdseg_start
_ioflg equ __z_ioflg - __zdseg_start
%include "shared/aztec/aztec_open.asm"   ; 0x336a

%include "shared/aztec/aztec_lsubs.asm"  ; 0x3417

%include "shared/aztec/aztec_strcmp.asm" ; 0x3508

%include "shared/aztec/aztec_strlen.asm" ; 0x356f

; errno equ __zerrno - __zdseg_start
%include "shared/aztec/aztec_impl_sys.asm" ; 0x358c

%include "shared/data/aztec_begin_exitad.asm" ; 0x35ce

%include "shared/data/aztec_begin_exitcs.asm" ; 0x35d0

psp_top_of_memory equ 0x0002
psp_env_segment   equ 0x002c
psp_cmd_tail_len  equ 0x0080
aztec_MEMRY       equ __zaztec_MEMRY - __zdseg_start
_dsval            equ __z_dsval - __zdseg_start
_csval            equ __z_csval - __zdseg_start
_mbot             equ __z_mbot - __zdseg_start
_sbot             equ __z_sbot - __zdseg_start
_mtop             equ __z_mtop - __zdseg_start
_PSP              equ __z_PSP - __zdseg_start
bad8087           equ __zbad8087 - __zdseg_start
_STKSIZ           equ __z_STKSIZ - __zdseg_start
_STKRED           equ __z_STKRED - __zdseg_start
_HEAPSIZ          equ __z_HEAPSIZ - __zdseg_start
_STKLOW           equ __z_STKLOW - __zdseg_start
_Uorg             equ __zkeep - __zdseg_start
__zdseg_end       equ (__zimage_end - __zdseg_start) + __zbss_size
%include "shared/aztec/aztec_begin.asm"  ; 0x35d2

; cls_                      equ __zcls_ - __zdseg_start
aztec_croot_empty_str     equ __zaztec_croot_empty_str - __zdseg_start
aztec_croot_too_many_args equ __zaztec_croot_too_many_args - __zdseg_start
; _ioflg                    equ __z_ioflg - __zdseg_start
ioflg_stdout              equ __zioflg_stdout - __zdseg_start
ioflg_stderr              equ __zioflg_stderr - __zdseg_start
Argc                      equ __zArgc - __zdseg_start
Argv                      equ __zArgv - __zdseg_start
%include "shared/aztec/aztec_Croot.asm"  ; 0x373b

%include "shared/aztec/aztec_fltinit.asm" ; 0x381d

; errno  equ __zerrno - __zdseg_start
; _ioflg equ __z_ioflg - __zdseg_start
_ttrd  equ __z_ttrd - __zdseg_start
_ttwr  equ __z_ttwr - __zdseg_start
%include "shared/aztec/aztec_io.asm"     ; 0x381f

_Eol                equ __z_Eol - __zdseg_start
aztec_tty_wr_crbuf  equ __zaztec_tty_wr_crbuf - __zdseg_start
; Argv                equ __zArgv - __zdseg_start
aztec_tty_rd_buffer equ __zaztec_tty_rd_buffer - __zdseg_start
aztec_tty_rd_bp     equ __zaztec_tty_rd_bp - __zdseg_start
_TTrem              equ __zbss_2afc - __zdseg_start
%include "shared/aztec/aztec_ttyio.asm"  ; 0x38d9

%include "shared/aztec/aztec_movmem.asm" ; 0x39a0

%include "shared/aztec/aztec_isatty.asm" ; 0x39e5

; aztec_MEMRY equ __zaztec_MEMRY - __zdseg_start
; errno       equ __zerrno - __zdseg_start
%include "shared/aztec/aztec_sbrk.asm"   ; 0x3a05

; aztec_MEMRY equ __zaztec_MEMRY - __zdseg_start
; errno       equ __zerrno - __zdseg_start
; _mbot       equ __z_mbot - __zdseg_start
; _sbot       equ __z_sbot - __zdseg_start
; _mtop       equ __z_mtop - __zdseg_start
; _PSP        equ __z_PSP - __zdseg_start
; _STKRED     equ __z_STKRED - __zdseg_start
; _STKLOW     equ __z_STKLOW - __zdseg_start
%include "shared/aztec/aztec_brk.asm"    ; 0x3a39

; _STKRED equ __z_STKRED - __zdseg_start
%include "shared/aztec/aztec_rsvstk.asm" ; 0x3ac5


; End of host resident code
; address, o_corg in an overlay header).
__zres_end equ ($ - $$) + VBASE
%if ($ - $$) > 0x3ae0
    align 16, db 0
    __zdseg_para equ ($ - $$ - 0x200) / 16
%else
    times (0x3ae0 - ($ - $$)) db 0 ; 0xe
    __zdseg_para equ (0x3ae0 - 0x200) / 16
%endif
__zdseg_start:
ln_ds_zero                                 ; 0x3ae0

dseg_000e equ __zdseg_000e - __zdseg_start
dseg_0025 equ __zdseg_0025 - __zdseg_start
dseg_003c equ __zdseg_003c - __zdseg_start
dseg_0053 equ __zdseg_0053 - __zdseg_start
dseg_006a equ __zdseg_006a - __zdseg_start
dseg_0081 equ __zdseg_0081 - __zdseg_start
dseg_009c equ __zdseg_009c - __zdseg_start
dseg_00a0 equ __zdseg_00a0 - __zdseg_start
dseg_00b4 equ __zdseg_00b4 - __zdseg_start
dseg_00c8 equ __zdseg_00c8 - __zdseg_start
dseg_00dc equ __zdseg_00dc - __zdseg_start
dseg_00f0 equ __zdseg_00f0 - __zdseg_start
dseg_0104 equ __zdseg_0104 - __zdseg_start
dseg_0118 equ __zdseg_0118 - __zdseg_start
dseg_012c equ __zdseg_012c - __zdseg_start
dseg_0140 equ __zdseg_0140 - __zdseg_start
dseg_0158 equ __zdseg_0158 - __zdseg_start
dseg_015c equ __zdseg_015c - __zdseg_start
dseg_016a equ __zdseg_016a - __zdseg_start
dseg_0181 equ __zdseg_0181 - __zdseg_start
dseg_0198 equ __zdseg_0198 - __zdseg_start
dseg_01af equ __zdseg_01af - __zdseg_start
dseg_01c6 equ __zdseg_01c6 - __zdseg_start
%include "vinstall/data/vinstall_data.asm" ; 0x3ae2

%include "vinstall/aztec/aztec_fexecv.data.asm" ; 0x5dea

%include "vinstall/aztec/aztec_fexec.data.asm" ; 0x5dee

%include "vinstall/aztec/aztec_freopen.data.asm" ; 0x5dfc

%include "vinstall/aztec/aztec_newstream.data.asm" ; 0x5e2a

; first equ __zfirst - __zdseg_start
%include "shared/aztec/aztec_malloc.data.asm" ; 0x5f2e

%include "vinstall/data/ctp_.asm"          ; 0x5f32

aztec_Uend equ __zbss_2afe - __zdseg_start
%include "shared/aztec/aztec_begin.data.asm" ; 0x5fb4

%include "shared/aztec/aztec_Croot.data.asm" ; 0x5fe0

%include "shared/data/STKSIZ.asm"        ; 0x5ff2

%include "shared/aztec/aztec_io.data.asm" ; 0x5ffa

%include "shared/aztec/aztec_ttyio.data.asm" ; 0x6012


__zimage_end:
absolute __zimage_end
%include "shared/aztec/aztec_malloc.bss.asm"
%include "shared/aztec/aztec_Croot.bss.asm"
%include "shared/aztec/aztec_ttyio.bss.asm"
%include "vinstall/data/globals.asm"
__zbss_2afc:
    resb 0x0002
__zbss_2afe:
__zbss_end:
    resb 0x4000
__zstack_top:
