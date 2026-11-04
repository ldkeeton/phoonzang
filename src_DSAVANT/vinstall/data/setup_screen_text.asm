; auto-generated
__zpress_return_to_begin:

    db 'Press <RETURN> to begin INSTALLATION PROCEDURE', 0

__zsetup_screen_border_top:

    db '****************************************************', 0

__zsetup_screen_title_wizardry:

    db '*                 W I Z A R D R Y                  *', 0

__zsetup_screen_title_dark_savant:

    db '*           CRUSADERS OF THE DARK SAVANT           *', 0

__zsetup_screen_title_installation:

    db '*               INSTALLATION PROGRAM               *', 0

__zsetup_screen_border_bottom:

    db '****************************************************', 0

__zdefault_source_drive:
    db 0x41, 0x3a, 0x00
__zempty_drive_name:
    db 0x00
__zdrive_table_header:

    db '                       Disk Drive Type      Drive Name  Path or Drive #2    ', 0

__zdrive_table_header_rule:

    db '                    ----------------------  ----------  --------------------', 0

__zsource_drive_row_label:

    db '     SOURCE DRIVE:', 0

__zdestination_drive_row_label:

    db 'DESTINATION DRIVE:', 0

__zmemory_expansion_row:

    db ' MEMORY EXPANSION>  EMS:      RamDisk:        RAM Name: ', 0

__zgraphic_mode_row:

    db 'GRAPHIC MODE:                                     VIDEO ADJUSTMENT', 0

__zvideo_adjustment_rule:

    db '                                                  ================', 0

__zbrightness_label:
    db '  Bright: ', 0
__zcontrast_label:
    db 'Contrast: ', 0
__zmouse_label:
    db 'MOUSE: ', 0
__zsound_label:
    db 'SOUND: ', 0
__zaction_row:

    db 'FULL INSTALL   CONFIG ONLY    ABORT INSTALL', 0

__znavigation_help_row:

    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0

__zno_video_card_error:

    db '*ERROR* NO VIDEO CARD DETECTED - Press <RETURN>', 0

__zunable_to_complete_error:

    db 'UNABLE TO COMPLETE INSTALLATION - Press <RETURN>', 0

__znavigation_help_message:

    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0

__zfull_install_label:
    db 'FULL INSTALL', 0
__zconfig_only_label:
    db 'CONFIG ONLY', 0
__zabort_install_label:
    db 'ABORT INSTALL', 0
__zfull_install_label_highlighted:
    db 'FULL INSTALL', 0
__zconfig_only_label_highlighted:
    db 'CONFIG ONLY', 0
__zabort_install_label_highlighted:
    db 'ABORT INSTALL', 0
