; data.asm — resident data (variables and strings only)

ov3:  dd 0
ov1:  dd 0
ov2f: dd 0
com:  dw COM1

bp_n: db 0
bp_a: times MAX_BP dd -1
bp_o: times MAX_BP db 0
bp_cur: dw -1
st_pi: dw -1
st_cont: db 0
st_usr:  db 0
in_dbg:  db 0
st_phys: db 0

ind_rx_orig: dw 0
ind_tx_orig: dw 0
ind_act: db 0

hk_ss: dw 0
hk_sp: dw 0

sreg: times SAVE_L db 0
rbuf: times BUF_SZ db 0
stk:  times STK_SZ db 0
stk_t:

s_trap: db "S05",0
s_ok:   db "OK",0
s_emp:  db 0
s_err:  db "E22",0
s_qsp:  db "PacketSize=400",0
s_qc:   db "QC-1",0
s_qa:   db "0",0
s_tln:  db "l",0
s_vC:   db "vCont;",0
