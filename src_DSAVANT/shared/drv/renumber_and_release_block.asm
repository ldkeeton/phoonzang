; auto-generated
renumber_and_release_block:
    call decrement_maze_map_slot_ids
    call decrement_picture_slot_ids
    call decrement_screen_slot_ids
    call decrement_maze_slot_ids
    call decrement_sound_slot_ids
    call decrement_score_slot_values
    call release_maze_block
    ret
