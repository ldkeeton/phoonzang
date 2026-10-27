; auto-generated
aztec_dbgentry:
    pop word [cs:aztec_dbgentry_retip - IMAGE_BASE]
    pop word [cs:aztec_dbgentry_retcs - IMAGE_BASE]
    pop ds
    call aztec_dbgcaller
    jmp far [cs:aztec_dbgentry_retip - IMAGE_BASE]
