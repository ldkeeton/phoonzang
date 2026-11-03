; auto-generated
__z_ioflg:
    db 0x00
__zioflg_stdout:
    db 0x00
__zioflg_stderr:

    times 18 db 0

__z_ttrd:
    dw aztec_impl_tty_rd - IMAGE_BASE
__z_ttwr:
    dw aztec_impl_tty_wr - IMAGE_BASE
