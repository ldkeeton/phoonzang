; data.asm — resident data (variables and strings only)

ov3:  dd 0
ov1:  dd 0
ov2f: dd 0
ov4:  dd 0
com:  dw COM1

bp_n: db 0
bp_a: times MAX_BP dd -1
bp_o: times MAX_BP db 0
bp_cur: dw -1
st_pi: dw -1
st_cont: db 0
st_run:  db 0
st_usr:  db 0
st_int_mode: db 0
st_int_bp: dw -1
st_int_addr: dd 0
in_dbg:  db 0
st_phys: db 0
st_async: db 0
st_gate: db 0
gate_ip: dw 0
gate_cs: dw 0
gate_opcode: db 0
st_entry_stop: db 0
rx_pending: db 0
rx_byte: db 0
pic_mask: db 0

ind_rx_orig: dw 0
ind_tx_orig: dw 0
ind_act: db 0

hk_ss: dw 0
hk_sp: dw 0

sreg: times RSP_REG_SIZE db 0
rbuf: times BUF_SZ db 0
stk:  times STK_SZ db 0
stk_t:

s_trap: db "S05",0
s_intr: db "S02",0
s_exit: db "W00",0
s_ok:   db "OK",0
s_emp:  db 0
s_err:  db "E22",0
s_qsp:  db "PacketSize=400",0
s_qc:   db "QC-1",0
s_qa:   db "0",0
s_tln:  db "l",0
s_vC:   db "vCont;",0
entry_ready_file: db "C:\GDBENTRY.OK",0
entry_ready_data: db "1"
