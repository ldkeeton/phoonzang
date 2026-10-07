; data.asm — resident data (variables and strings only)

ov3:  dd 0                               ; original INT 3 vector (offset:segment)
ov1:  dd 0                               ; original single-step INT 1 vector
ov2f: dd 0                               ; original DOS multiplex INT 2Fh vector
ov4:  dd 0                               ; original COM1 receive IRQ4 vector
com:  dw COM1                            ; UART I/O base, normally COM1 at 03F8h

bp_n: db 0                               ; number of currently allocated breakpoint slots
bp_a: times MAX_BP dd -1                 ; linear address for each breakpoint slot
bp_o: times MAX_BP db 0                  ; original instruction byte saved per slot
bp_cur: dw -1                            ; slot index whose INT3 was just hit, or -1
st_pi: dw -1                             ; breakpoint slot temporarily omitted during step
st_cont: db 0                            ; continue silently after stepping over a breakpoint
st_run:  db 0                            ; target has resumed; next stop is asynchronous
st_usr:  db 0                            ; next INT1 is a user-requested single-step stop
st_rep: db 0                             ; single-step is still inside a REP instruction
st_rep_ip: dw 0                          ; starting IP of the in-progress REP instruction
st_rep_cs: dw 0                          ; starting CS of the in-progress REP instruction
st_int_mode: db 0                        ; stepping over a software INT via fall-through trap
st_int_bp: dw -1                         ; internal breakpoint slot used for INT-step
st_int_addr: dd 0                        ; linear instruction address after software INT
in_dbg:  db 0                            ; nonzero while CPU is inside the GDB command loop
st_phys: db 0                            ; translate GDB offsets into target physical addresses
st_async: db 0                           ; command arrived asynchronously over serial IRQ4
st_gate: db 0                            ; launcher planted a temporary program-entry trap
gate_ip: dw 0                            ; offset of launcher-installed entry trap
gate_cs: dw 0                            ; segment of launcher-installed entry trap
target_cs: dw 0                          ; current runtime CS belonging to the debugged program
gate_opcode: db 0                        ; original instruction byte saved at entry trap
st_entry_stop: db 0                      ; current stop is the initial program-entry stop
rx_pending: db 0                         ; IRQ handler already consumed a packet's leading '$'
rx_byte: db 0                            ; buffered first byte for packet reader
pic_mask: db 0                           ; original master PIC mask to restore on detach

ind_rx_orig: dw 0                        ; text-screen cell saved before receive marker
ind_tx_orig: dw 0                        ; text-screen cell saved before transmit marker
ind_act: db 0                            ; bit 0/1: TX/RX screen indicators are active

hk_ss: dw 0                              ; interrupted target's SS saved at debugger entry
hk_sp: dw 0                              ; interrupted target's SP saved at debugger entry

sreg: times RSP_REG_SIZE db 0            ; full GDB register packet, including padded slots
rbuf: times BUF_SZ db 0                  ; received RSP command and generated response text
stk:  times STK_SZ db 0                  ; scratch bytes for memory reads/unknown registers
stk_t:                                    ; top of shared scratch/debugger stack storage

s_trap: db "S05",0                      ; RSP stop reply for trap or single-step
s_intr: db "S02",0                      ; RSP stop reply for user interrupt (Ctrl-C)
s_exit: db "W00",0                      ; RSP process-exit reply with status zero
s_ok:   db "OK",0                       ; RSP acknowledgement for successful requests
s_emp:  db 0                             ; empty RSP response for unsupported queries
s_err:  db "E22",0                      ; RSP error response for failed breakpoint request
s_qsp:  db "PacketSize=400;swbreak+",0    ; packet capacity and software-breakpoint stop reports
s_qc:   db "QC1",0                       ; report synthetic thread 1 as the current thread
s_qa:   db "0",0                         ; qAttached reply: target is not newly attached
s_tln:  db "l",0                         ; qfThreadInfo reply: no more thread IDs
s_tids: db "m1",0                        ; qfThreadInfo reply: the one synthetic thread
s_vC:   db "vCont;",0                    ; advertise continue action in vCont query
s_swbr: db "T05thread:1;swbreak:;",0      ; managed INT3 stop with thread and breakpoint cause
entry_ready_file: db "C:\GDBENTRY.OK",0   ; DOS marker polled by host launch automation
entry_ready_data: db "1"                  ; marker content signals that entry stop was reached
