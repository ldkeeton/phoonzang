/* Auto-generated from NASM disassembly. */
#include <stdint.h>

typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef int8_t   s8;
typedef int16_t  s16;
typedef int32_t  s32;

/* GCC: compile with -m16 for 16-bit x86 real mode */
#define INLINE_ASM __asm__ __volatile__


/* Decompiled from: vga.asm */

/* ── Global data ── */
u16 g_data_01e1;
u16 g_data_01e5;
u16 g_data_01e9;
u16 g_data_01f7;
u16 g_data_01fb;
u16 g_data_01ff;
u16 g_data_0201;
u16 g_data_0203;
u16 g_data_0205;
u16 g_data_0206;
u16 g_data_020e;
u16 g_data_0212;
u16 g_data_0216;
u16 g_data_021a;
u16 g_data_021e;
u16 g_data_0222;
u16 g_data_0226;
u16 g_data_0227;
u16 g_data_0228;
u16 g_data_027b;
u16 g_data_0291;
u16 g_data_0293;
u16 g_data_0295;
u16 g_data_0297;
u16 g_data_0299;
u16 g_data_038f;
u16 g_data_0391;
u16 g_data_0615;
u16 g_data_0caa;
u16 g_data_0cac;
u16 g_data_0f6d;
u16 g_data_0f6f;
u16 g_data_15ac;
u16 g_data_15ae;
u16 g_data_15b0;
u16 g_data_15b2;
u16 g_data_15b4;
u16 g_data_15b6;
u16 g_data_15b8;
u16 g_data_15ba;
u16 g_data_15bc;
u16 g_data_15be;
u16 g_data_15c0;
u16 g_data_15c2;
u16 g_data_1e5c;
u16 g_data_1e5e;
u16 g_data_1e64;
u16 g_data_1e66;
u16 g_data_1e68;
u16 g_data_1ecd;
u16 g_data_1ecf;
u16 g_data_1ed1;
u16 g_data_1ed3;
u16 g_data_3c8e;


/* loc_0000 (0x0000-0x0293) */
void loc_0000(void)
{

}

/* math_loc_0293 (0x0293-0x0439) — inline asm */
void math_loc_0293(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 0293: 55
    "mov bp, sp\n"  // 0294: 8bec
    "sub sp, 0xc\n"  // 0296: 83ec0c
    "push ds\n"  // 0299: 1e
    "push es\n"  // 029a: 06
    "push si\n"  // 029b: 56
    "push di\n"  // 029c: 57
    "mov es, ax\n"  // 029d: 8ec0
    "mov ds, ax\n"  // 029f: 8ed8
    "xor bx, bx\n"  // 02a1: 33db
    "mov ax, [cs:0x297]\n"  // 02a3: 2ea19702
    "mov cx, 0x140\n"  // 02a7: b94001
    "mul cx\n"  // 02aa: f7e1
    "add ax, [cs:0x295]\n"  // 02ac: 2e03069502
    "mov di, ax\n"  // 02b1: 8bf8
    "mov [bp - 0x6], ax\n"  // 02b3: 8946fa
    "xor ax, ax\n"  // 02b6: 33c0
    "mov al, [bx]\n"  // 02b8: 8a07
    "mov [bp - 0x2], ax\n"  // 02ba: 8946fe
    "mov al, [bx + 0x1]\n"  // 02bd: 8a4701
    "mov [bp - 0x4], ax\n"  // 02c0: 8946fc
    "mov cx, [bx + 0xa]\n"  // 02c3: 8b4f0a
    "add bx, 0x10\n"  // 02c6: 83c310
    "mov ax, [bp + 0xc]\n"  // 02c9: 8b460c
    "shl ax, 0x1\n"  // 02cc: d1e0
    "add bx, ax\n"  // 02ce: 03d8
    "mov al, [bx]\n"  // 02d0: 8a07
    "xor ah, ah\n"  // 02d2: 32e4
    "mov [bp - 0xa], ax\n"  // 02d4: 8946f6
    "mul cx\n"  // 02d7: f7e1
    "add ax, 0x110\n"  // 02d9: 051001
    "mov si, ax\n"  // 02dc: 8bf0
    "xor ah, ah\n"  // 02de: 32e4
    "mov al, [bx + 0x1]\n"  // 02e0: 8a4701
    "add [cs:0x295], ax\n"  // 02e3: 2e01069502
    "mov [bp - 0xc], ax\n"  // 02e8: 8946f4
    "xor bx, bx\n"  // 02eb: 33db
    "mov al, [bx + 0x7]\n"  // 02ed: 8a4707
    "cwde \n"  // 02f0: 98
    "add [cs:0x295], ax\n"  // 02f1: 2e01069502
    "mov al, [bx + 0x2]\n"  // 02f6: 8a4702
    "test al, 0x1\n"  // 02f9: a801
    "je 0x300\n"  // 02fb: 7403
    "jmp 0x3d4\n"  // 02fd: e9d400
    "mov ax, [cs:0x299]\n"  // 0300: 2ea19902
    "or ax, ax\n"  // 0304: 0bc0
    "jne 0x30f\n"  // 0306: 7507
    "mov al, [bx + 0x6]\n"  // 0308: 8a4706
    "test al, 0x2\n"  // 030b: a802
    "jne 0x371\n"  // 030d: 7562
    "xor ax, ax\n"  // 030f: 33c0
    "mov al, [bx + 0x3]\n"  // 0311: 8a4703
    "mov bx, [bp - 0xc]\n"  // 0314: 8b5ef4
    "add bx, 0x7\n"  // 0317: 83c307
    "mov cl, 0x3\n"  // 031a: b103
    "shr bx, cl\n"  // 031c: d3eb
    "sub ax, bx\n"  // 031e: 2bc3
    "mov [bp - 0xa], ax\n"  // 0320: 8946f6
    "mov bx, [cs:0x291]\n"  // 0323: 2e8b1e9102
    "mov dx, [cs:0x293]\n"  // 0328: 2e8b169302
    "mov dh, bl\n"  // 032d: 8af3
    "mov ax, [cs:0x1e5]\n"  // 032f: 2ea1e501
    "mov es, ax\n"  // 0333: 8ec0
    "mov cx, [bp - 0xc]\n"  // 0335: 8b4ef4
    "mov [bp - 0x8], cx\n"  // 0338: 894ef8
    "lodsb al, [si]\n"  // 033b: ac
    "cmp cx, 0x9\n"  // 033c: 83f909
    "jb 0x344\n"  // 033f: 7203
    "mov cx, 0x8\n"  // 0341: b90800
    "sub [bp - 0x8], cx\n"  // 0344: 294ef8
    "shl al, 0x1\n"  // 0347: d0e0
    "jb 0x351\n"  // 0349: 7206
    "mov [es:di], dh\n"  // 034b: 268835
    "inc di\n"  // 034e: 47
    "jmp 0x355\n"  // 034f: eb04
    "mov [es:di], dl\n"  // 0351: 268815
    "inc di\n"  // 0354: 47
    "loop 0x347\n"  // 0355: e2f0
    "mov cx, [bp - 0x8]\n"  // 0357: 8b4ef8
    "or cx, cx\n"  // 035a: 0bc9
    "jne 0x338\n"  // 035c: 75da
    "add si, [bp - 0xa]\n"  // 035e: 0376f6
    "add [bp - 0x6], 0x140\n"  // 0361: 8146fa4001
    "mov di, [bp - 0x6]\n"  // 0366: 8b7efa
    "dec [bp - 0x4]\n"  // 0369: ff4efc
    "jne 0x335\n"  // 036c: 75c7
    "jmp 0x431\n"  // 036e: e9c000
    "mov ax, [bp - 0xa]\n"  // 0371: 8b46f6
    "mov cx, [bx + 0xe]\n"  // 0374: 8b4f0e
    "mul cx\n"  // 0377: f7e1
    "add ax, [bx + 0xc]\n"  // 0379: 03470c
    "mov bx, ax\n"  // 037c: 8bd8
    "mov ax, [cs:0x291]\n"  // 037e: 2ea19102
    "mov dx, [cs:0x293]\n"  // 0382: 2e8b169302
    "mov dh, al\n"  // 0387: 8af0
    "mov ax, [cs:0x1e5]\n"  // 0389: 2ea1e501
    "mov es, ax\n"  // 038d: 8ec0
    "mov cx, [bp - 0x2]\n"  // 038f: 8b4efe
    "mov [bp - 0x8], cx\n"  // 0392: 894ef8
    "lodsb al, [si]\n"  // 0395: ac
    "mov ah, [bx]\n"  // 0396: 8a27
    "inc bx\n"  // 0398: 43
    "cmp cx, 0x9\n"  // 0399: 83f909
    "jb 0x3a1\n"  // 039c: 7203
    "mov cx, 0x8\n"  // 039e: b90800
    "sub [bp - 0x8], cx\n"  // 03a1: 294ef8
    "shl ah, 0x1\n"  // 03a4: d0e4
    "jae 0x3b8\n"  // 03a6: 7310
    "shl al, 0x1\n"  // 03a8: d0e0
    "jb 0x3b2\n"  // 03aa: 7206
    "mov [es:di], dh\n"  // 03ac: 268835
    "inc di\n"  // 03af: 47
    "jmp 0x3bb\n"  // 03b0: eb09
    "mov [es:di], dl\n"  // 03b2: 268815
    "inc di\n"  // 03b5: 47
    "jmp 0x3bb\n"  // 03b6: eb03
    "shl al, 0x1\n"  // 03b8: d0e0
    "inc di\n"  // 03ba: 47
    "loop 0x3a4\n"  // 03bb: e2e7
    "mov cx, [bp - 0x8]\n"  // 03bd: 8b4ef8
    "or cx, cx\n"  // 03c0: 0bc9
    "jne 0x392\n"  // 03c2: 75ce
    "add [bp - 0x6], 0x140\n"  // 03c4: 8146fa4001
    "mov di, [bp - 0x6]\n"  // 03c9: 8b7efa
    "dec [bp - 0x4]\n"  // 03cc: ff4efc
    "jne 0x38f\n"  // 03cf: 75be
    "jmp 0x431\n"  // 03d1: e95d00
    "mov al, [bx + 0x6]\n"  // 03d4: 8a4706
    "test al, 0x2\n"  // 03d7: a802
    "jne 0x402\n"  // 03d9: 7527
    "mov ax, [bp - 0x2]\n"  // 03db: 8b46fe
    "sub ax, [bp - 0xc]\n"  // 03de: 2b46f4
    "mov [bp - 0xa], ax\n"  // 03e1: 8946f6
    "mov ax, [cs:0x1e5]\n"  // 03e4: 2ea1e501
    "mov es, ax\n"  // 03e8: 8ec0
    "mov cx, [bp - 0xc]\n"  // 03ea: 8b4ef4
    "rep movsb [es:di], [si]\n"  // 03ed: f3a4
    "add si, [bp - 0xa]\n"  // 03ef: 0376f6
    "add [bp - 0x6], 0x140\n"  // 03f2: 8146fa4001
    "mov di, [bp - 0x6]\n"  // 03f7: 8b7efa
    "dec [bp - 0x4]\n"  // 03fa: ff4efc
    "jne 0x3ea\n"  // 03fd: 75eb
    "jmp 0x431\n"  // 03ff: e92f00
    "mov ax, [bp - 0x2]\n"  // 0402: 8b46fe
    "sub ax, [bp - 0xc]\n"  // 0405: 2b46f4
    "mov [bp - 0xa], ax\n"  // 0408: 8946f6
    "mov ax, [cs:0x1e5]\n"  // 040b: 2ea1e501
    "mov es, ax\n"  // 040f: 8ec0
    "mov cx, [bp - 0xc]\n"  // 0411: 8b4ef4
    "mov al, [si]\n"  // 0414: 8a04
    "cmp al, 0xff\n"  // 0416: 3cff
    "je 0x41d\n"  // 0418: 7403
    "mov [es:di], al\n"  // 041a: 268805
    "inc si\n"  // 041d: 46
    "inc di\n"  // 041e: 47
    "loop 0x414\n"  // 041f: e2f3
    "add si, [bp - 0xa]\n"  // 0421: 0376f6
    "add [bp - 0x6], 0x140\n"  // 0424: 8146fa4001
    "mov di, [bp - 0x6]\n"  // 0429: 8b7efa
    "dec [bp - 0x4]\n"  // 042c: ff4efc
    "jne 0x411\n"  // 042f: 75e0
    "pop di\n"  // 0431: 5f
    "pop si\n"  // 0432: 5e
    "pop es\n"  // 0433: 07
    "pop ds\n"  // 0434: 1f
    "mov sp, bp\n"  // 0435: 8be5
    "pop bp\n"  // 0437: 5d
    "ret \n"  // 0438: c3
        ".att_syntax");
}

/* leaf_loc_0439 (0x0439-0x0447) */
void leaf_loc_0439(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    u16 ax;

    ax = arg4;
    g_data_0299 = ax;
}

/* loc_0447 (0x0447-0x045c) */
void loc_0447(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    u16 ax;

    ax = arg4;
    g_data_0293 = ax;
    ax = arg5;
    g_data_0291 = ax;
}

/* math_loc_045c (0x045c-0x0477) — inline asm */
void math_loc_045c(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 045c: 55
    "mov bp, sp\n"  // 045d: 8bec
    "push es\n"  // 045f: 06
    "mov ax, ds\n"  // 0460: 8cd8
    "mov es, ax\n"  // 0462: 8ec0
    "mov ax, [bp + 0xc]\n"  // 0464: 8b460c
    "mov [cs:0x295], ax\n"  // 0467: 2ea39502
    "mov ax, [bp + 0xe]\n"  // 046b: 8b460e
    "mov [cs:0x297], ax\n"  // 046e: 2ea39702
    "pop es\n"  // 0472: 07
    "mov sp, bp\n"  // 0473: 8be5
    "pop bp\n"  // 0475: 5d
    "ret \n"  // 0476: c3
        ".att_syntax");
}

/* math_loc_0477 (0x0477-0x0496) — inline asm */
void math_loc_0477(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 0477: 55
    "mov bp, sp\n"  // 0478: 8bec
    "push es\n"  // 047a: 06
    "mov ax, ds\n"  // 047b: 8cd8
    "mov es, ax\n"  // 047d: 8ec0
    "mov ax, [cs:0x295]\n"  // 047f: 2ea19502
    "mov bx, [bp + 0xc]\n"  // 0483: 8b5e0c
    "mov [bx], ax\n"  // 0486: 8907
    "mov ax, [cs:0x297]\n"  // 0488: 2ea19702
    "mov bx, [bp + 0xe]\n"  // 048c: 8b5e0e
    "mov [bx], ax\n"  // 048f: 8907
    "pop es\n"  // 0491: 07
    "mov sp, bp\n"  // 0492: 8be5
    "pop bp\n"  // 0494: 5d
    "ret \n"  // 0495: c3
        ".att_syntax");
}

/* math_loc_0496 (0x0496-0x04b5) — inline asm */
void math_loc_0496(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 0496: 55
    "mov bp, sp\n"  // 0497: 8bec
    "push es\n"  // 0499: 06
    "push di\n"  // 049a: 57
    "mov ax, ds\n"  // 049b: 8cd8
    "mov es, ax\n"  // 049d: 8ec0
    "mov ax, [cs:0x1e5]\n"  // 049f: 2ea1e501
    "mov es, ax\n"  // 04a3: 8ec0
    "xor di, di\n"  // 04a5: 33ff
    "mov ax, [bp + 0xc]\n"  // 04a7: 8b460c
    "mov cx, 0xfa00\n"  // 04aa: b900fa
    "rep stosb [es:di], al\n"  // 04ad: f3aa
    "pop di\n"  // 04af: 5f
    "pop es\n"  // 04b0: 07
    "mov sp, bp\n"  // 04b1: 8be5
    "pop bp\n"  // 04b3: 5d
    "ret \n"  // 04b4: c3
        ".att_syntax");
}

/* math_loc_04b5 (0x04b5-0x0516) — inline asm */
void math_loc_04b5(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 04b5: 55
    "mov bp, sp\n"  // 04b6: 8bec
    "sub sp, 0x10\n"  // 04b8: 83ec10
    "push ds\n"  // 04bb: 1e
    "push es\n"  // 04bc: 06
    "push di\n"  // 04bd: 57
    "push si\n"  // 04be: 56
    "mov ax, ds\n"  // 04bf: 8cd8
    "mov es, ax\n"  // 04c1: 8ec0
    "call 0x1308\n"  // 04c3: e8420e
    "call 0x516\n"  // 04c6: e84d00
    "mov ax, [cs:0x1e5]\n"  // 04c9: 2ea1e501
    "mov ds, ax\n"  // 04cd: 8ed8
    "mov ax, 0xa000\n"  // 04cf: b800a0
    "mov es, ax\n"  // 04d2: 8ec0
    "mov ax, [bp + 0xe]\n"  // 04d4: 8b460e
    "mov bx, 0x140\n"  // 04d7: bb4001
    "mul bx\n"  // 04da: f7e3
    "add ax, [bp + 0xc]\n"  // 04dc: 03460c
    "mov [bp - 0x2], ax\n"  // 04df: 8946fe
    "mov ax, [bp + 0x10]\n"  // 04e2: 8b4610
    "sub ax, [bp + 0xc]\n"  // 04e5: 2b460c
    "inc ax\n"  // 04e8: 40
    "mov [bp - 0x4], ax\n"  // 04e9: 8946fc
    "mov ax, [bp + 0x12]\n"  // 04ec: 8b4612
    "sub ax, [bp + 0xe]\n"  // 04ef: 2b460e
    "inc ax\n"  // 04f2: 40
    "mov dx, ax\n"  // 04f3: 8bd0
    "mov di, [bp - 0x2]\n"  // 04f5: 8b7efe
    "add [bp - 0x2], 0x140\n"  // 04f8: 8146fe4001
    "mov si, di\n"  // 04fd: 8bf7
    "mov cx, [bp - 0x4]\n"  // 04ff: 8b4efc
    "rep movsb [es:di], [si]\n"  // 0502: f3a4
    "dec dx\n"  // 0504: 4a
    "jne 0x4f5\n"  // 0505: 75ee
    "call 0x67f\n"  // 0507: e87501
    "call 0x12c9\n"  // 050a: e8bc0d
    "pop si\n"  // 050d: 5e
    "pop di\n"  // 050e: 5f
    "pop es\n"  // 050f: 07
    "pop ds\n"  // 0510: 1f
    "mov sp, bp\n"  // 0511: 8be5
    "pop bp\n"  // 0513: 5d
    "ret \n"  // 0514: c3
        ".att_syntax");
}

/* leaf_loc_0516 (0x0516-0x067f) — inline asm */
void leaf_loc_0516(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "cmp [cs:0x228], 0x1\n"  // 0516: 2e803e280201
    "jne 0x548\n"  // 051c: 752a
    "mov cx, [cs:0x15ac]\n"  // 051e: 2e8b0eac15
    "mov dx, [cs:0x15ae]\n"  // 0523: 2e8b16ae15
    "cmp [bp + 0x10], cx\n"  // 0528: 394e10
    "jb 0x548\n"  // 052b: 721b
    "cmp [bp + 0x12], dx\n"  // 052d: 395612
    "jb 0x548\n"  // 0530: 7216
    "add cx, [cs:0x15b8]\n"  // 0532: 2e030eb815
    "dec cx\n"  // 0537: 49
    "add dx, [cs:0x15ba]\n"  // 0538: 2e0316ba15
    "dec dx\n"  // 053d: 4a
    "cmp cx, [bp + 0xc]\n"  // 053e: 3b4e0c
    "jb 0x548\n"  // 0541: 7205
    "cmp dx, [bp + 0xe]\n"  // 0543: 3b560e
    "jae 0x551\n"  // 0546: 7309
    "mov [cs:0x615], 0x0\n"  // 0548: 2ec606150600
    "jmp 0x67e\n"  // 054e: e92d01
    "mov [cs:0x615], 0x1\n"  // 0551: 2ec606150601
    "mov cx, [cs:0x15ac]\n"  // 0557: 2e8b0eac15
    "mov ax, cx\n"  // 055c: 8bc1
    "cmp [bp + 0xc], cx\n"  // 055e: 394e0c
    "jb 0x566\n"  // 0561: 7203
    "mov ax, [bp + 0xc]\n"  // 0563: 8b460c
    "mov [bp - 0x6], ax\n"  // 0566: 8946fa
    "mov dx, [cs:0x15ae]\n"  // 0569: 2e8b16ae15
    "mov bx, dx\n"  // 056e: 8bda
    "cmp [bp + 0xe], dx\n"  // 0570: 39560e
    "jb 0x578\n"  // 0573: 7203
    "mov bx, [bp + 0xe]\n"  // 0575: 8b5e0e
    "mov [bp - 0x8], bx\n"  // 0578: 895ef8
    "sub ax, cx\n"  // 057b: 2bc1
    "sub bx, dx\n"  // 057d: 2bda
    "mov [bp - 0xa], ax\n"  // 057f: 8946f6
    "mov [bp - 0xc], bx\n"  // 0582: 895ef4
    "mov cx, [cs:0x15b8]\n"  // 0585: 2e8b0eb815
    "mov dx, [cs:0x15ba]\n"  // 058a: 2e8b16ba15
    "sub cx, ax\n"  // 058f: 2bc8
    "mov [bp - 0xe], cx\n"  // 0591: 894ef2
    "sub dx, bx\n"  // 0594: 2bd3
    "mov [bp - 0x10], dx\n"  // 0596: 8956f0
    "mov ax, [bp - 0x6]\n"  // 0599: 8b46fa
    "add ax, [bp - 0xe]\n"  // 059c: 0346f2
    "dec ax\n"  // 059f: 48
    "cmp ax, [bp + 0x10]\n"  // 05a0: 3b4610
    "jb 0x5af\n"  // 05a3: 720a
    "mov ax, [bp + 0x10]\n"  // 05a5: 8b4610
    "sub ax, [bp - 0x6]\n"  // 05a8: 2b46fa
    "inc ax\n"  // 05ab: 40
    "mov [bp - 0xe], ax\n"  // 05ac: 8946f2
    "mov ax, [bp - 0x8]\n"  // 05af: 8b46f8
    "add ax, [bp - 0x10]\n"  // 05b2: 0346f0
    "dec ax\n"  // 05b5: 48
    "cmp ax, [bp + 0x12]\n"  // 05b6: 3b4612
    "jb 0x5c5\n"  // 05b9: 720a
    "mov ax, [bp + 0x12]\n"  // 05bb: 8b4612
    "sub ax, [bp - 0x8]\n"  // 05be: 2b46f8
    "inc ax\n"  // 05c1: 40
    "mov [bp - 0x10], ax\n"  // 05c2: 8946f0
    "mov ax, [bp - 0x8]\n"  // 05c5: 8b46f8
    "mov bx, 0x140\n"  // 05c8: bb4001
    "mul bx\n"  // 05cb: f7e3
    "add ax, [bp - 0x6]\n"  // 05cd: 0346fa
    "mov si, ax\n"  // 05d0: 8bf0
    "mov ax, [bp - 0xc]\n"  // 05d2: 8b46f4
    "mov bx, [cs:0x15b8]\n"  // 05d5: 2e8b1eb815
    "mul bx\n"  // 05da: f7e3
    "add ax, [bp - 0xa]\n"  // 05dc: 0346f6
    "add ax, [cs:0x15b4]\n"  // 05df: 2e0306b415
    "mov di, ax\n"  // 05e4: 8bf8
    "mov ax, [cs:0x1e5]\n"  // 05e6: 2ea1e501
    "mov ds, ax\n"  // 05ea: 8ed8
    "mov ax, cs\n"  // 05ec: 8cc8
    "mov es, ax\n"  // 05ee: 8ec0
    "mov cx, [bp - 0x10]\n"  // 05f0: 8b4ef0
    "push cx\n"  // 05f3: 51
    "push si\n"  // 05f4: 56
    "push di\n"  // 05f5: 57
    "mov cx, [bp - 0xe]\n"  // 05f6: 8b4ef2
    "rep movsb [es:di], [si]\n"  // 05f9: f3a4
    "pop di\n"  // 05fb: 5f
    "add di, [cs:0x15b8]\n"  // 05fc: 2e033eb815
    "pop si\n"  // 0601: 5e
    "add si, 0x140\n"  // 0602: 81c64001
    "pop cx\n"  // 0606: 59
    "loop 0x5f3\n"  // 0607: e2ea
    "mov ax, cs\n"  // 0609: 8cc8
    "mov es, ax\n"  // 060b: 8ec0
    "mov ax, [cs:0x1e5]\n"  // 060d: 2ea1e501
    "mov ds, ax\n"  // 0611: 8ed8
    "mov si, [cs:0x15bc]\n"  // 0613: 2e8b36bc15
    "mov di, [cs:0x15b6]\n"  // 0618: 2e8b3eb615
    "mov cx, [cs:0x15ba]\n"  // 061d: 2e8b0eba15
    "push cx\n"  // 0622: 51
    "push si\n"  // 0623: 56
    "mov cx, [cs:0x15b8]\n"  // 0624: 2e8b0eb815
    "rep movsb [es:di], [si]\n"  // 0629: f3a4
    "pop si\n"  // 062b: 5e
    "add si, 0x140\n"  // 062c: 81c64001
    "pop cx\n"  // 0630: 59
    "loop 0x622\n"  // 0631: e2ef
    "mov ax, [cs:0x1e5]\n"  // 0633: 2ea1e501
    "mov es, ax\n"  // 0637: 8ec0
    "mov di, [cs:0x15bc]\n"  // 0639: 2e8b3ebc15
    "mov ax, [cs:0x1e66]\n"  // 063e: 2ea1661e
    "mov ds, ax\n"  // 0642: 8ed8
    "mov si, [cs:0x1e64]\n"  // 0644: 2e8b36641e
    "mov cx, [cs:0x15ba]\n"  // 0649: 2e8b0eba15
    "mov ax, ds\n"  // 064e: 8cd8
    "or ax, si\n"  // 0650: 0bc6
    "jne 0x65b\n"  // 0652: 7507
    "mov si, 0x1e69\n"  // 0654: be691e
    "mov ax, cs\n"  // 0657: 8cc8
    "mov ds, ax\n"  // 0659: 8ed8
    "push cx\n"  // 065b: 51
    "push di\n"  // 065c: 57
    "push si\n"  // 065d: 56
    "mov cx, [cs:0x15b8]\n"  // 065e: 2e8b0eb815
    "mov al, [si]\n"  // 0663: 8a04
    "cmp al, 0xff\n"  // 0665: 3cff
    "je 0x66c\n"  // 0667: 7403
    "mov [es:di], al\n"  // 0669: 268805
    "inc si\n"  // 066c: 46
    "inc di\n"  // 066d: 47
    "loop 0x663\n"  // 066e: e2f3
    "pop si\n"  // 0670: 5e
    "add si, [cs:0x1e5c]\n"  // 0671: 2e03365c1e
    "pop di\n"  // 0676: 5f
    "add di, 0x140\n"  // 0677: 81c74001
    "pop cx\n"  // 067b: 59
    "loop 0x65b\n"  // 067c: e2dd
    "ret \n"  // 067e: c3
        ".att_syntax");
}

/* math_loc_067f (0x067f-0x06b2) — inline asm */
void math_loc_067f(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "cmp [cs:0x615], 0x0\n"  // 067f: 2e803e150600
    "je 0x6b1\n"  // 0685: 742a
    "mov ax, [cs:0x1e5]\n"  // 0687: 2ea1e501
    "mov es, ax\n"  // 068b: 8ec0
    "mov ax, cs\n"  // 068d: 8cc8
    "mov ds, ax\n"  // 068f: 8ed8
    "mov di, [cs:0x15bc]\n"  // 0691: 2e8b3ebc15
    "mov si, [cs:0x15b6]\n"  // 0696: 2e8b36b615
    "mov cx, [cs:0x15ba]\n"  // 069b: 2e8b0eba15
    "push cx\n"  // 06a0: 51
    "push di\n"  // 06a1: 57
    "mov cx, [cs:0x15b8]\n"  // 06a2: 2e8b0eb815
    "rep movsb [es:di], [si]\n"  // 06a7: f3a4
    "pop di\n"  // 06a9: 5f
    "add di, 0x140\n"  // 06aa: 81c74001
    "pop cx\n"  // 06ae: 59
    "loop 0x6a0\n"  // 06af: e2ef
    "ret \n"  // 06b1: c3
        ".att_syntax");
}

/* math_loc_06b2 (0x06b2-0x06d9) — inline asm */
void math_loc_06b2(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 06b2: 55
    "mov bp, sp\n"  // 06b3: 8bec
    "push ds\n"  // 06b5: 1e
    "push es\n"  // 06b6: 06
    "mov ax, ds\n"  // 06b7: 8cd8
    "mov es, ax\n"  // 06b9: 8ec0
    "mov ax, [cs:0x1e5]\n"  // 06bb: 2ea1e501
    "mov ds, ax\n"  // 06bf: 8ed8
    "mov ax, [bp + 0xe]\n"  // 06c1: 8b460e
    "mov bx, 0x140\n"  // 06c4: bb4001
    "mul bx\n"  // 06c7: f7e3
    "add ax, [bp + 0xc]\n"  // 06c9: 03460c
    "mov bx, ax\n"  // 06cc: 8bd8
    "mov ax, [bp + 0x10]\n"  // 06ce: 8b4610
    "mov [bx], al\n"  // 06d1: 8807
    "pop es\n"  // 06d3: 07
    "pop ds\n"  // 06d4: 1f
    "mov sp, bp\n"  // 06d5: 8be5
    "pop bp\n"  // 06d7: 5d
    "ret \n"  // 06d8: c3
        ".att_syntax");
}

/* math_loc_06d9 (0x06d9-0x0728) — inline asm */
void math_loc_06d9(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 06d9: 55
    "mov bp, sp\n"  // 06da: 8bec
    "sub sp, 0x8\n"  // 06dc: 83ec08
    "push es\n"  // 06df: 06
    "push di\n"  // 06e0: 57
    "mov ax, ds\n"  // 06e1: 8cd8
    "mov es, ax\n"  // 06e3: 8ec0
    "mov ax, [cs:0x1e5]\n"  // 06e5: 2ea1e501
    "mov es, ax\n"  // 06e9: 8ec0
    "mov ax, [bp + 0xe]\n"  // 06eb: 8b460e
    "mov bx, 0x140\n"  // 06ee: bb4001
    "mul bx\n"  // 06f1: f7e3
    "add ax, [bp + 0xc]\n"  // 06f3: 03460c
    "mov [bp - 0x2], ax\n"  // 06f6: 8946fe
    "mov ax, [bp + 0x12]\n"  // 06f9: 8b4612
    "sub ax, [bp + 0xe]\n"  // 06fc: 2b460e
    "inc ax\n"  // 06ff: 40
    "mov [bp - 0x4], ax\n"  // 0700: 8946fc
    "mov ax, [bp + 0x10]\n"  // 0703: 8b4610
    "sub ax, [bp + 0xc]\n"  // 0706: 2b460c
    "inc ax\n"  // 0709: 40
    "mov [bp - 0x6], ax\n"  // 070a: 8946fa
    "mov ax, [bp + 0x14]\n"  // 070d: 8b4614
    "mov di, [bp - 0x2]\n"  // 0710: 8b7efe
    "add [bp - 0x2], 0x140\n"  // 0713: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 0718: 8b4efa
    "rep stosb [es:di], al\n"  // 071b: f3aa
    "dec [bp - 0x4]\n"  // 071d: ff4efc
    "jne 0x710\n"  // 0720: 75ee
    "pop di\n"  // 0722: 5f
    "pop es\n"  // 0723: 07
    "mov sp, bp\n"  // 0724: 8be5
    "pop bp\n"  // 0726: 5d
    "ret \n"  // 0727: c3
        ".att_syntax");
}

/* string_loc_0728 (0x0728-0x077a) — inline asm */
void string_loc_0728(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 0728: 55
    "mov bp, sp\n"  // 0729: 8bec
    "sub sp, 0x8\n"  // 072b: 83ec08
    "push es\n"  // 072e: 06
    "push ds\n"  // 072f: 1e
    "push di\n"  // 0730: 57
    "mov ax, [cs:0x1e5]\n"  // 0731: 2ea1e501
    "mov es, ax\n"  // 0735: 8ec0
    "mov ds, ax\n"  // 0737: 8ed8
    "mov ax, [bp + 0xe]\n"  // 0739: 8b460e
    "mov bx, 0x140\n"  // 073c: bb4001
    "mul bx\n"  // 073f: f7e3
    "add ax, [bp + 0xc]\n"  // 0741: 03460c
    "mov [bp - 0x2], ax\n"  // 0744: 8946fe
    "mov ax, [bp + 0x12]\n"  // 0747: 8b4612
    "sub ax, [bp + 0xe]\n"  // 074a: 2b460e
    "inc ax\n"  // 074d: 40
    "mov [bp - 0x4], ax\n"  // 074e: 8946fc
    "mov ax, [bp + 0x10]\n"  // 0751: 8b4610
    "sub ax, [bp + 0xc]\n"  // 0754: 2b460c
    "inc ax\n"  // 0757: 40
    "mov [bp - 0x6], ax\n"  // 0758: 8946fa
    "mov di, [bp - 0x2]\n"  // 075b: 8b7efe
    "mov si, di\n"  // 075e: 8bf7
    "add [bp - 0x2], 0x140\n"  // 0760: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 0765: 8b4efa
    "lodsb al, [si]\n"  // 0768: ac
    "not al\n"  // 0769: f6d0
    "stosb [es:di], al\n"  // 076b: aa
    "loop 0x768\n"  // 076c: e2fa
    "dec [bp - 0x4]\n"  // 076e: ff4efc
    "jne 0x75b\n"  // 0771: 75e8
    "pop di\n"  // 0773: 5f
    "pop ds\n"  // 0774: 1f
    "pop es\n"  // 0775: 07
    "mov sp, bp\n"  // 0776: 8be5
    "pop bp\n"  // 0778: 5d
    "ret \n"  // 0779: c3
        ".att_syntax");
}

/* dos_alloc_mem (0x077a-0x07fd) — inline asm */
void dos_alloc_mem(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 077a: 55
    "mov bp, sp\n"  // 077b: 8bec
    "sub sp, 0xa\n"  // 077d: 83ec0a
    "push es\n"  // 0780: 06
    "push ds\n"  // 0781: 1e
    "push di\n"  // 0782: 57
    "push si\n"  // 0783: 56
    "mov ax, ds\n"  // 0784: 8cd8
    "mov es, ax\n"  // 0786: 8ec0
    "mov ax, [bp + 0x10]\n"  // 0788: 8b4610
    "sub ax, [bp + 0xc]\n"  // 078b: 2b460c
    "inc ax\n"  // 078e: 40
    "mov [bp - 0x6], ax\n"  // 078f: 8946fa
    "mov bx, [bp + 0x12]\n"  // 0792: 8b5e12
    "sub bx, [bp + 0xe]\n"  // 0795: 2b5e0e
    "inc bx\n"  // 0798: 43
    "mov [bp - 0x4], bx\n"  // 0799: 895efc
    "mul bx\n"  // 079c: f7e3
    "mov [bp - 0x8], ax\n"  // 079e: 8946f8
    "mov [bp - 0xa], dx\n"  // 07a1: 8956f6
    "add ax, 0xc\n"  // 07a4: 050c00
    "add ax, 0xf\n"  // 07a7: 050f00
    "mov cl, 0x4\n"  // 07aa: b104
    "shr ax, cl\n"  // 07ac: d3e8
    "mov bx, ax\n"  // 07ae: 8bd8
    "mov ah, 0x48\n"  // 07b0: b448
    "int 0x21\n"  // 07b2: cd21
    "jae 0x7b9\n"  // 07b4: 7303
    "jmp 0x7fd\n"  // 07b6: e94400
    "mov es, ax\n"  // 07b9: 8ec0
    "xor di, di\n"  // 07bb: 33ff
    "mov ax, [cs:0x1e5]\n"  // 07bd: 2ea1e501
    "mov ds, ax\n"  // 07c1: 8ed8
    "mov ax, [bp + 0xe]\n"  // 07c3: 8b460e
    "mov bx, 0x140\n"  // 07c6: bb4001
    "mul bx\n"  // 07c9: f7e3
    "add ax, [bp + 0xc]\n"  // 07cb: 03460c
    "mov [bp - 0x2], ax\n"  // 07ce: 8946fe
    "stosw [es:di], ax\n"  // 07d1: ab
    "xor ax, ax\n"  // 07d2: 33c0
    "stosw [es:di], ax\n"  // 07d4: ab
    "mov ax, [bp - 0x4]\n"  // 07d5: 8b46fc
    "stosw [es:di], ax\n"  // 07d8: ab
    "mov ax, [bp - 0x6]\n"  // 07d9: 8b46fa
    "stosw [es:di], ax\n"  // 07dc: ab
    "mov ax, [bp - 0x8]\n"  // 07dd: 8b46f8
    "stosw [es:di], ax\n"  // 07e0: ab
    "mov ax, [bp - 0xa]\n"  // 07e1: 8b46f6
    "stosw [es:di], ax\n"  // 07e4: ab
    "mov si, [bp - 0x2]\n"  // 07e5: 8b76fe
    "add [bp - 0x2], 0x140\n"  // 07e8: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 07ed: 8b4efa
    "rep movsb [es:di], [si]\n"  // 07f0: f3a4
    "dec [bp - 0x4]\n"  // 07f2: ff4efc
    "jne 0x7e5\n"  // 07f5: 75ee
    "mov dx, es\n"  // 07f7: 8cc2
    "xor ax, ax\n"  // 07f9: 33c0
    "jmp 0x82e\n"  // 07fb: eb31
        ".att_syntax");
}

/* dos_con_loc_07fd (0x07fd-0x0836) — inline asm */
void dos_con_loc_07fd(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov ax, cs\n"  // 07fd: 8cc8
    "mov ds, ax\n"  // 07ff: 8ed8
    "mov dx, 0x90d\n"  // 0801: ba0d09
    "mov ah, 0x9\n"  // 0804: b409
    "int 0x21\n"  // 0806: cd21
    "mov ax, 0x4c01\n"  // 0808: b8014c
    "int 0x21\n"  // 080b: cd21
    "or ax, 0x70a\n"  // 080d: 0d0a07
    "or ah, [si]\n"  // 0828: 0a24
    "xor dx, dx\n"  // 082a: 33d2
    "mov ax, dx\n"  // 082c: 8bc2
    "pop si\n"  // 082e: 5e
    "pop di\n"  // 082f: 5f
    "pop ds\n"  // 0830: 1f
    "pop es\n"  // 0831: 07
    "mov sp, bp\n"  // 0832: 8be5
    "pop bp\n"  // 0834: 5d
    "ret \n"  // 0835: c3
        ".att_syntax");
}

/* dos_free_mem (0x0836-0x088f) — inline asm */
void dos_free_mem(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 0836: 55
    "mov bp, sp\n"  // 0837: 8bec
    "sub sp, 0x8\n"  // 0839: 83ec08
    "push es\n"  // 083c: 06
    "push ds\n"  // 083d: 1e
    "push di\n"  // 083e: 57
    "push si\n"  // 083f: 56
    "mov ax, ds\n"  // 0840: 8cd8
    "mov es, ax\n"  // 0842: 8ec0
    "mov ax, [bp + 0xe]\n"  // 0844: 8b460e
    "mov ds, ax\n"  // 0847: 8ed8
    "mov si, [bp + 0xc]\n"  // 0849: 8b760c
    "or ax, si\n"  // 084c: 0bc6
    "je 0x88f\n"  // 084e: 743f
    "mov ax, [cs:0x1e5]\n"  // 0850: 2ea1e501
    "mov es, ax\n"  // 0854: 8ec0
    "lodsw ax, [si]\n"  // 0856: ad
    "mov [bp - 0x2], ax\n"  // 0857: 8946fe
    "add si, 0x2\n"  // 085a: 83c602
    "lodsw ax, [si]\n"  // 085d: ad
    "mov [bp - 0x4], ax\n"  // 085e: 8946fc
    "lodsw ax, [si]\n"  // 0861: ad
    "mov [bp - 0x6], ax\n"  // 0862: 8946fa
    "add si, 0x4\n"  // 0865: 83c604
    "mov di, [bp - 0x2]\n"  // 0868: 8b7efe
    "add [bp - 0x2], 0x140\n"  // 086b: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 0870: 8b4efa
    "rep movsb [es:di], [si]\n"  // 0873: f3a4
    "dec [bp - 0x4]\n"  // 0875: ff4efc
    "jne 0x868\n"  // 0878: 75ee
    "mov ax, [bp + 0x10]\n"  // 087a: 8b4610
    "or ax, ax\n"  // 087d: 0bc0
    "je 0x8ca\n"  // 087f: 7449
    "mov ax, ds\n"  // 0881: 8cd8
    "or ax, ax\n"  // 0883: 0bc0
    "je 0x8ca\n"  // 0885: 7443
    "mov es, ax\n"  // 0887: 8ec0
    "mov ah, 0x49\n"  // 0889: b449
    "int 0x21\n"  // 088b: cd21
    "jmp 0x8ca\n"  // 088d: eb3b
        ".att_syntax");
}

/* dos_con_loc_088f (0x088f-0x08d2) — inline asm */
void dos_con_loc_088f(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov ax, cs\n"  // 088f: 8cc8
    "mov ds, ax\n"  // 0891: 8ed8
    "mov dx, 0x99f\n"  // 0893: ba9f09
    "mov ah, 0x9\n"  // 0896: b409
    "int 0x21\n"  // 0898: cd21
    "mov ax, 0x4c01\n"  // 089a: b8014c
    "int 0x21\n"  // 089d: cd21
    "or ax, 0x70a\n"  // 089f: 0d0a07
    "or ah, [si]\n"  // 08c8: 0a24
    "pop si\n"  // 08ca: 5e
    "pop di\n"  // 08cb: 5f
    "pop ds\n"  // 08cc: 1f
    "pop es\n"  // 08cd: 07
    "mov sp, bp\n"  // 08ce: 8be5
    "pop bp\n"  // 08d0: 5d
    "ret \n"  // 08d1: c3
        ".att_syntax");
}

/* dos_read_file (0x08d2-0x099c) — inline asm */
void dos_read_file(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 08d2: 55
    "mov bp, sp\n"  // 08d3: 8bec
    "push ds\n"  // 08d5: 1e
    "push es\n"  // 08d6: 06
    "push si\n"  // 08d7: 56
    "push di\n"  // 08d8: 57
    "mov ax, ds\n"  // 08d9: 8cd8
    "mov es, ax\n"  // 08db: 8ec0
    "mov ax, [bp + 0xe]\n"  // 08dd: 8b460e
    "cmp ax, 0x2\n"  // 08e0: 3d0200
    "je 0x921\n"  // 08e3: 743c
    "cmp ax, 0x1\n"  // 08e5: 3d0100
    "je 0x8ed\n"  // 08e8: 7403
    "jmp 0x982\n"  // 08ea: e99500
    "mov ax, [bp + 0xc]\n"  // 08ed: 8b460c
    "shl ax, 0x1\n"  // 08f0: d1e0
    "mov bx, 0x251\n"  // 08f2: bb5102
    "add bx, ax\n"  // 08f5: 03d8
    "mov ax, [cs:bx]\n"  // 08f7: 2e8b07
    "dec ax\n"  // 08fa: 48
    "mov cl, 0x2\n"  // 08fb: b102
    "shl ax, cl\n"  // 08fd: d3e0
    "mov bx, 0xbda\n"  // 08ff: bbda0b
    "add bx, ax\n"  // 0902: 03d8
    "mov ax, [cs:bx]\n"  // 0904: 2e8b07
    "mov bx, [cs:0x1e1]\n"  // 0907: 2e8b1ee101
    "add bx, ax\n"  // 090c: 03d8
    "mov ds, bx\n"  // 090e: 8edb
    "mov ax, [cs:0x1e5]\n"  // 0910: 2ea1e501
    "mov es, ax\n"  // 0914: 8ec0
    "xor di, di\n"  // 0916: 33ff
    "xor si, si\n"  // 0918: 33f6
    "mov cx, 0xfa00\n"  // 091a: b900fa
    "rep movsb [es:di], [si]\n"  // 091d: f3a4
    "jmp 0x994\n"  // 091f: eb73
    "mov ax, [bp + 0xc]\n"  // 0921: 8b460c
    "shl ax, 0x1\n"  // 0924: d1e0
    "mov bx, 0x2d7\n"  // 0926: bbd702
    "add bx, ax\n"  // 0929: 03d8
    "mov ax, [cs:bx]\n"  // 092b: 2e8b07
    "dec ax\n"  // 092e: 48
    "mov cl, 0x2\n"  // 092f: b102
    "shl ax, cl\n"  // 0931: d3e0
    "mov bx, 0x2eb\n"  // 0933: bbeb02
    "add bx, ax\n"  // 0936: 03d8
    "mov si, [cs:bx]\n"  // 0938: 2e8b37
    "mov ax, si\n"  // 093b: 8bc6
    "mov cl, 0xa\n"  // 093d: b10a
    "shr ax, cl\n"  // 093f: d3e8
    "mov [cs:0x3c8e], ax\n"  // 0941: 2ea38e3c
    "call 0x3b90\n"  // 0945: e84832
    "and si, 0x3ff\n"  // 0948: 81e6ff03
    "mov cl, 0x4\n"  // 094c: b104
    "shl si, cl\n"  // 094e: d3e6
    "mov bx, [cs:0x203]\n"  // 0950: 2e8b1e0302
    "mov ds, bx\n"  // 0955: 8edb
    "mov ax, [cs:0x1e5]\n"  // 0957: 2ea1e501
    "mov es, ax\n"  // 095b: 8ec0
    "xor di, di\n"  // 095d: 33ff
    "mov cx, 0x3\n"  // 095f: b90300
    "push cx\n"  // 0962: 51
    "mov cx, 0x4000\n"  // 0963: b90040
    "rep movsb [es:di], [si]\n"  // 0966: f3a4
    "and si, 0x3fff\n"  // 0968: 81e6ff3f
    "inc [cs:0x3c8e]\n"  // 096c: 2eff068e3c
    "mov ax, [cs:0x3c8e]\n"  // 0971: 2ea18e3c
    "call 0x3b90\n"  // 0975: e81832
    "pop cx\n"  // 0978: 59
    "loop 0x962\n"  // 0979: e2e7
    "mov cx, 0x3a00\n"  // 097b: b9003a
    "rep movsb [es:di], [si]\n"  // 097e: f3a4
    "jmp 0x994\n"  // 0980: eb12
    "mov ax, [cs:0x1e5]\n"  // 0982: 2ea1e501
    "mov ds, ax\n"  // 0986: 8ed8
    "xor dx, dx\n"  // 0988: 33d2
    "mov bx, [bp + 0xc]\n"  // 098a: 8b5e0c
    "mov cx, 0xfa00\n"  // 098d: b900fa
    "mov ah, 0x3f\n"  // 0990: b43f
    "int 0x21\n"  // 0992: cd21
    "pop di\n"  // 0994: 5f
    "pop si\n"  // 0995: 5e
    "pop es\n"  // 0996: 07
    "pop ds\n"  // 0997: 1f
    "mov sp, bp\n"  // 0998: 8be5
    "pop bp\n"  // 099a: 5d
    "ret \n"  // 099b: c3
        ".att_syntax");
}

/* dos_write_file (0x099c-0x0a8d) — inline asm */
void dos_write_file(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 099c: 55
    "mov bp, sp\n"  // 099d: 8bec
    "sub sp, 0x8\n"  // 099f: 83ec08
    "push ds\n"  // 09a2: 1e
    "push es\n"  // 09a3: 06
    "push si\n"  // 09a4: 56
    "push di\n"  // 09a5: 57
    "mov ax, ds\n"  // 09a6: 8cd8
    "mov es, ax\n"  // 09a8: 8ec0
    "mov ax, [bp + 0xc]\n"  // 09aa: 8b460c
    "test ah, 0x80\n"  // 09ad: f6c480
    "jne 0x9b5\n"  // 09b0: 7503
    "jmp 0xa35\n"  // 09b2: e98000
    "neg ax\n"  // 09b5: f7d8
    "mov bx, 0x251\n"  // 09b7: bb5102
    "shl ax, 0x1\n"  // 09ba: d1e0
    "add bx, ax\n"  // 09bc: 03d8
    "mov ax, [cs:bx]\n"  // 09be: 2e8b07
    "or ax, ax\n"  // 09c1: 0bc0
    "je 0x9c8\n"  // 09c3: 7403
    "jmp 0xa4f\n"  // 09c5: e98700
    "mov ax, [cs:0xcaa]\n"  // 09c8: 2ea1aa0c
    "inc ax\n"  // 09cc: 40
    "mov [cs:0xcaa], ax\n"  // 09cd: 2ea3aa0c
    "mov [cs:bx], ax\n"  // 09d1: 2e8907
    "mov cl, 0x2\n"  // 09d4: b102
    "dec ax\n"  // 09d6: 48
    "shl ax, cl\n"  // 09d7: d3e0
    "mov bx, 0xbda\n"  // 09d9: bbda0b
    "add bx, ax\n"  // 09dc: 03d8
    "mov ax, [cs:0xcac]\n"  // 09de: 2ea1ac0c
    "mov [cs:bx], ax\n"  // 09e2: 2e8907
    "mov cx, 0xfa0\n"  // 09e5: b9a00f
    "mov [cs:bx + 0x2], cx\n"  // 09e8: 2e894f02
    "mov dx, [cs:0xcac]\n"  // 09ec: 2e8b16ac0c
    "add dx, cx\n"  // 09f1: 03d1
    "mov [cs:0xcac], dx\n"  // 09f3: 2e8916ac0c
    "cmp dx, 0x4180\n"  // 09f8: 81fa8041
    "jb 0xa01\n"  // 09fc: 7203
    "jmp 0xa8d\n"  // 09fe: e98c00
    "mov ax, [bp + 0xc]\n"  // 0a01: 8b460c
    "neg ax\n"  // 0a04: f7d8
    "shl ax, 0x1\n"  // 0a06: d1e0
    "mov bx, 0x251\n"  // 0a08: bb5102
    "add bx, ax\n"  // 0a0b: 03d8
    "mov ax, [cs:bx]\n"  // 0a0d: 2e8b07
    "dec ax\n"  // 0a10: 48
    "mov cl, 0x2\n"  // 0a11: b102
    "shl ax, cl\n"  // 0a13: d3e0
    "mov bx, 0xbda\n"  // 0a15: bbda0b
    "add bx, ax\n"  // 0a18: 03d8
    "mov ax, [cs:bx]\n"  // 0a1a: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 0a1d: 2e0306e101
    "mov es, ax\n"  // 0a22: 8ec0
    "mov ax, [cs:0x1e5]\n"  // 0a24: 2ea1e501
    "mov ds, ax\n"  // 0a28: 8ed8
    "xor di, di\n"  // 0a2a: 33ff
    "xor si, si\n"  // 0a2c: 33f6
    "mov cx, 0xfa00\n"  // 0a2e: b900fa
    "rep movsb [es:di], [si]\n"  // 0a31: f3a4
    "jmp 0xa47\n"  // 0a33: eb12
    "mov ax, [cs:0x1e5]\n"  // 0a35: 2ea1e501
    "mov ds, ax\n"  // 0a39: 8ed8
    "xor dx, dx\n"  // 0a3b: 33d2
    "mov bx, [bp + 0xc]\n"  // 0a3d: 8b5e0c
    "mov cx, 0xfa00\n"  // 0a40: b900fa
    "mov ah, 0x40\n"  // 0a43: b440
    "int 0x21\n"  // 0a45: cd21
    "pop di\n"  // 0a47: 5f
    "pop si\n"  // 0a48: 5e
    "pop es\n"  // 0a49: 07
    "pop ds\n"  // 0a4a: 1f
    "mov sp, bp\n"  // 0a4b: 8be5
    "pop bp\n"  // 0a4d: 5d
    "ret \n"  // 0a4e: c3
        ".att_syntax");
}

/* dos_con_loc_0a8d (0x0a8d-0x0bae) — inline asm */
void dos_con_loc_0a8d(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov ax, cs\n"  // 0a8d: 8cc8
        ".att_syntax");
}

/* dos_read_file_2 (0x0bae-0x0e34) — inline asm */
void dos_read_file_2(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 0bae: 55
    "mov bp, sp\n"  // 0baf: 8bec
    "sub sp, 0x14\n"  // 0bb1: 83ec14
    "push ds\n"  // 0bb4: 1e
    "push es\n"  // 0bb5: 06
    "push di\n"  // 0bb6: 57
    "push si\n"  // 0bb7: 56
    "mov ax, ds\n"  // 0bb8: 8cd8
    "mov es, ax\n"  // 0bba: 8ec0
    "mov ax, [bp + 0xe]\n"  // 0bbc: 8b460e
    "cmp ax, 0xa\n"  // 0bbf: 3d0a00
    "jb 0xbc7\n"  // 0bc2: 7203
    "jmp 0xcf0\n"  // 0bc4: e92901
    "shl ax, 0x1\n"  // 0bc7: d1e0
    "mov [bp - 0x8], ax\n"  // 0bc9: 8946f8
    "mov bx, 0xbc6\n"  // 0bcc: bbc60b
    "add bx, ax\n"  // 0bcf: 03d8
    "mov [bp - 0x2], bx\n"  // 0bd1: 895efe
    "mov ax, [cs:bx]\n"  // 0bd4: 2e8b07
    "or ax, ax\n"  // 0bd7: 0bc0
    "jne 0xbde\n"  // 0bd9: 7503
    "jmp 0xbee\n"  // 0bdb: e91000
    "mov ax, cs\n"  // 0bde: 8cc8
    "mov ds, ax\n"  // 0be0: 8ed8
    "mov dx, 0xe3c\n"  // 0be2: ba3c0e
    "mov ah, 0x9\n"  // 0be5: b409
    "int 0x21\n"  // 0be7: cd21
    "mov ax, 0x4c01\n"  // 0be9: b8014c
    "int 0x21\n"  // 0bec: cd21
    "mov ax, [cs:0xcaa]\n"  // 0bee: 2ea1aa0c
    "inc ax\n"  // 0bf2: 40
    "mov [cs:0xcaa], ax\n"  // 0bf3: 2ea3aa0c
    "mov bx, [bp - 0x2]\n"  // 0bf7: 8b5efe
    "mov [cs:bx], ax\n"  // 0bfa: 2e8907
    "dec ax\n"  // 0bfd: 48
    "mov cl, 0x2\n"  // 0bfe: b102
    "shl ax, cl\n"  // 0c00: d3e0
    "mov bx, 0xbda\n"  // 0c02: bbda0b
    "add bx, ax\n"  // 0c05: 03d8
    "mov [bp - 0x2], bx\n"  // 0c07: 895efe
    "mov ax, [cs:0xcac]\n"  // 0c0a: 2ea1ac0c
    "mov [cs:bx], ax\n"  // 0c0e: 2e8907
    "mov ax, [bp + 0x10]\n"  // 0c11: 8b4610
    "or ax, ax\n"  // 0c14: 0bc0
    "je 0xc1b\n"  // 0c16: 7403
    "jmp 0xd9a\n"  // 0c18: e97f01
    "cld \n"  // 0c1b: fc
    "mov cx, 0x1000\n"  // 0c1c: b90010
    "mov bx, [cs:0x1e1]\n"  // 0c1f: 2e8b1ee101
    "add bx, [cs:0xcac]\n"  // 0c24: 2e031eac0c
    "mov ds, bx\n"  // 0c29: 8edb
    "xor dx, dx\n"  // 0c2b: 33d2
    "mov bx, [bp + 0xc]\n"  // 0c2d: 8b5e0c
    "mov ah, 0x3f\n"  // 0c30: b43f
    "int 0x21\n"  // 0c32: cd21
    "mov bx, 0x0\n"  // 0c34: bb0000
    "mov ax, [bx]\n"  // 0c37: 8b07
    "mov cx, 0x6\n"  // 0c39: b90600
    "mul cx\n"  // 0c3c: f7e1
    "add ax, 0x4\n"  // 0c3e: 050400
    "mov bx, [bp - 0x8]\n"  // 0c41: 8b5ef8
    "add bx, 0x27d\n"  // 0c44: 81c37d02
    "mov [cs:bx], ax\n"  // 0c48: 2e8907
    "mov bx, ax\n"  // 0c4b: 8bd8
    "sub bx, 0x6\n"  // 0c4d: 83eb06
    "mov cl, [bx + 0x5]\n"  // 0c50: 8a4f05
    "mov al, [bx + 0x4]\n"  // 0c53: 8a4704
    "mul cl\n"  // 0c56: f6e1
    "mov cl, 0x3\n"  // 0c58: b103
    "shl ax, cl\n"  // 0c5a: d3e0
    "mov cx, [bx + 0x2]\n"  // 0c5c: 8b4f02
    "add ax, cx\n"  // 0c5f: 03c1
    "push ax\n"  // 0c61: 50
    "xor dx, dx\n"  // 0c62: 33d2
    "mov ax, [bx]\n"  // 0c64: 8b07
    "mov cx, 0x10\n"  // 0c66: b91000
    "mul cx\n"  // 0c69: f7e1
    "pop cx\n"  // 0c6b: 59
    "add ax, cx\n"  // 0c6c: 03c1
    "adc dx, 0x0\n"  // 0c6e: 83d200
    "push ax\n"  // 0c71: 50
    "push dx\n"  // 0c72: 52
    "sub ax, 0x1000\n"  // 0c73: 2d0010
    "sbb dx, 0x0\n"  // 0c76: 83da00
    "mov [bp - 0x8], ax\n"  // 0c79: 8946f8
    "mov [bp - 0x6], dx\n"  // 0c7c: 8956fa
    "pop dx\n"  // 0c7f: 5a
    "pop ax\n"  // 0c80: 58
    "add ax, 0xf\n"  // 0c81: 050f00
    "adc dx, 0x0\n"  // 0c84: 83d200
    "mov bx, 0x10\n"  // 0c87: bb1000
    "div bx\n"  // 0c8a: f7f3
    "mov bx, [bp - 0x2]\n"  // 0c8c: 8b5efe
    "mov [cs:bx + 0x2], ax\n"  // 0c8f: 2e894702
    "add [cs:0xcac], ax\n"  // 0c93: 2e0106ac0c
    "mov ax, [cs:0xcac]\n"  // 0c98: 2ea1ac0c
    "cmp ax, 0x4180\n"  // 0c9c: 3d8041
    "jae 0xd00\n"  // 0c9f: 735f
    "mov ax, ds\n"  // 0ca1: 8cd8
    "add ax, 0x100\n"  // 0ca3: 050001
    "mov ds, ax\n"  // 0ca6: 8ed8
    "mov dx, 0x0\n"  // 0ca8: ba0000
    "cmp [bp - 0x6], 0x0\n"  // 0cab: 837efa00
    "je 0xcdc\n"  // 0caf: 742b
    "dec [bp - 0x6]\n"  // 0cb1: ff4efa
    "mov cx, 0x8000\n"  // 0cb4: b90080
    "xor dx, dx\n"  // 0cb7: 33d2
    "mov bx, [bp + 0xc]\n"  // 0cb9: 8b5e0c
    "mov ah, 0x3f\n"  // 0cbc: b43f
    "int 0x21\n"  // 0cbe: cd21
    "mov ax, ds\n"  // 0cc0: 8cd8
    "add ax, 0x800\n"  // 0cc2: 050008
    "mov ds, ax\n"  // 0cc5: 8ed8
    "mov cx, 0x8000\n"  // 0cc7: b90080
    "xor dx, dx\n"  // 0cca: 33d2
    "mov bx, [bp + 0xc]\n"  // 0ccc: 8b5e0c
    "mov ah, 0x3f\n"  // 0ccf: b43f
    "int 0x21\n"  // 0cd1: cd21
    "mov ax, ds\n"  // 0cd3: 8cd8
    "add ax, 0x800\n"  // 0cd5: 050008
    "mov ds, ax\n"  // 0cd8: 8ed8
    "jmp 0xcab\n"  // 0cda: ebcf
    "mov cx, [bp - 0x8]\n"  // 0cdc: 8b4ef8
    "xor dx, dx\n"  // 0cdf: 33d2
    "mov bx, [bp + 0xc]\n"  // 0ce1: 8b5e0c
    "mov ah, 0x3f\n"  // 0ce4: b43f
    "int 0x21\n"  // 0ce6: cd21
    "pop si\n"  // 0ce8: 5e
    "pop di\n"  // 0ce9: 5f
    "pop es\n"  // 0cea: 07
    "pop ds\n"  // 0ceb: 1f
    "mov sp, bp\n"  // 0cec: 8be5
    "pop bp\n"  // 0cee: 5d
    "ret \n"  // 0cef: c3
    "mov ax, [bp + 0xc]\n"  // 0d9a: 8b460c
    "shl ax, 0x1\n"  // 0d9d: d1e0
    "mov si, 0x2c3\n"  // 0d9f: bec302
    "add si, ax\n"  // 0da2: 03f0
    "mov ax, [cs:si]\n"  // 0da4: 2e8b04
    "dec ax\n"  // 0da7: 48
    "mov cl, 0x2\n"  // 0da8: b102
    "shl ax, cl\n"  // 0daa: d3e0
    "mov di, 0x2eb\n"  // 0dac: bfeb02
    "add di, ax\n"  // 0daf: 03f8
    "mov si, [cs:di]\n"  // 0db1: 2e8b35
    "mov ax, [cs:di + 0x2]\n"  // 0db4: 2e8b4502
    "mov [cs:bx + 0x2], ax\n"  // 0db8: 2e894702
    "mov [bp - 0x4], ax\n"  // 0dbc: 8946fc
    "mov dx, [cs:0x1e1]\n"  // 0dbf: 2e8b16e101
    "add dx, [cs:0xcac]\n"  // 0dc4: 2e0316ac0c
    "mov [bp - 0xa], dx\n"  // 0dc9: 8956f6
    "mov es, dx\n"  // 0dcc: 8ec2
    "add [cs:0xcac], ax\n"  // 0dce: 2e0106ac0c
    "mov ax, [cs:0x203]\n"  // 0dd3: 2ea10302
    "mov ds, ax\n"  // 0dd7: 8ed8
    "mov ax, si\n"  // 0dd9: 8bc6
    "mov cl, 0xa\n"  // 0ddb: b10a
    "shr ax, cl\n"  // 0ddd: d3e8
    "mov [cs:0x3c8e], ax\n"  // 0ddf: 2ea38e3c
    "call 0x3b90\n"  // 0de3: e8aa2d
    "and si, 0x3ff\n"  // 0de6: 81e6ff03
    "mov cl, 0x4\n"  // 0dea: b104
    "shl si, cl\n"  // 0dec: d3e6
    "test si, 0xc000\n"  // 0dee: f7c600c0
    "je 0xe04\n"  // 0df2: 7410
    "inc [cs:0x3c8e]\n"  // 0df4: 2eff068e3c
    "mov ax, [cs:0x3c8e]\n"  // 0df9: 2ea18e3c
    "call 0x3b90\n"  // 0dfd: e8902d
    "sub si, 0x4000\n"  // 0e00: 81ee0040
    "xor di, di\n"  // 0e04: 33ff
    "mov cx, 0x10\n"  // 0e06: b91000
    "rep movsb [es:di], [si]\n"  // 0e09: f3a4
    "mov ax, es\n"  // 0e0b: 8cc0
    "inc ax\n"  // 0e0d: 40
    "mov es, ax\n"  // 0e0e: 8ec0
    "dec [bp - 0x4]\n"  // 0e10: ff4efc
    "jne 0xdee\n"  // 0e13: 75d9
    "mov ax, [bp - 0xa]\n"  // 0e15: 8b46f6
    "mov ds, ax\n"  // 0e18: 8ed8
    "mov bx, 0x0\n"  // 0e1a: bb0000
    "mov ax, [bx]\n"  // 0e1d: 8b07
    "mov cx, 0x6\n"  // 0e1f: b90600
    "mul cx\n"  // 0e22: f7e1
    "add ax, 0x4\n"  // 0e24: 050400
    "mov bx, [bp - 0x8]\n"  // 0e27: 8b5ef8
    "add bx, 0x27d\n"  // 0e2a: 81c37d02
    "mov [cs:bx], ax\n"  // 0e2e: 2e8907
    "jmp 0xce8\n"  // 0e31: e9b4fe
        ".att_syntax");
}

/* leaf_loc_0e34 (0x0e34-0x0e71) — inline asm */
void leaf_loc_0e34(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ax\n"  // 0e34: 50
    "mov bx, 0x29b\n"  // 0e35: bb9b02
    "mov cx, 0x14\n"  // 0e38: b91400
    "cmp ax, [cs:bx]\n"  // 0e3b: 2e3b07
    "jae 0xe43\n"  // 0e3e: 7303
    "dec [cs:bx]\n"  // 0e40: 2eff0f
    "inc bx\n"  // 0e43: 43
    "inc bx\n"  // 0e44: 43
    "loop 0xe3b\n"  // 0e45: e2f4
    "mov bx, 0x2c3\n"  // 0e47: bbc302
    "mov cx, 0xa\n"  // 0e4a: b90a00
    "cmp ax, [cs:bx]\n"  // 0e4d: 2e3b07
    "jae 0xe55\n"  // 0e50: 7303
    "dec [cs:bx]\n"  // 0e52: 2eff0f
    "inc bx\n"  // 0e55: 43
    "inc bx\n"  // 0e56: 43
    "loop 0xe4d\n"  // 0e57: e2f4
    "mov bx, 0x2d7\n"  // 0e59: bbd702
    "mov cx, 0xa\n"  // 0e5c: b90a00
    "cmp ax, [cs:bx]\n"  // 0e5f: 2e3b07
    "jae 0xe67\n"  // 0e62: 7303
    "dec [cs:bx]\n"  // 0e64: 2eff0f
    "inc bx\n"  // 0e67: 43
    "inc bx\n"  // 0e68: 43
    "loop 0xe5f\n"  // 0e69: e2f4
    "pop ax\n"  // 0e6b: 58
    "ret \n"  // 0e6c: c3
        ".att_syntax");
}

/* loc_0e71 (0x0e71-0x0f3b) — inline asm */
void loc_0e71(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "dec ax\n"  // 0e71: 48
    "mov cl, 0x2\n"  // 0e72: b102
    "shl ax, cl\n"  // 0e74: d3e0
    "mov bx, 0x2eb\n"  // 0e76: bbeb02
    "add bx, ax\n"  // 0e79: 03d8
    "mov [bp - 0x4], bx\n"  // 0e7b: 895efc
    "mov ax, [cs:bx + 0x2]\n"  // 0e7e: 2e8b4702
    "sub [cs:0x391], ax\n"  // 0e82: 2e29069103
    "mov [bp - 0x6], ax\n"  // 0e87: 8946fa
    "mov bx, [bp - 0x4]\n"  // 0e8a: 8b5efc
    "mov di, [cs:bx]\n"  // 0e8d: 2e8b3f
    "mov dx, [cs:0x203]\n"  // 0e90: 2e8b160302
    "mov es, dx\n"  // 0e95: 8ec2
    "mov ds, dx\n"  // 0e97: 8eda
    "mov si, [cs:bx + 0x4]\n"  // 0e99: 2e8b7704
    "add dx, [cs:0x1e1]\n"  // 0e9d: 2e0316e101
    "mov cx, [cs:bx + 0x6]\n"  // 0ea2: 2e8b4f06
    "or cx, cx\n"  // 0ea6: 0bc9
    "jne 0xead\n"  // 0ea8: 7503
    "jmp 0xf2e\n"  // 0eaa: e98100
    "push cx\n"  // 0ead: 51
    "mov ax, si\n"  // 0eae: 8bc6
    "mov cl, 0xa\n"  // 0eb0: b10a
    "shr ax, cl\n"  // 0eb2: d3e8
    "mov [cs:0xf6d], ax\n"  // 0eb4: 2ea36d0f
    "and si, 0x3ff\n"  // 0eb8: 81e6ff03
    "mov cl, 0x4\n"  // 0ebc: b104
    "shl si, cl\n"  // 0ebe: d3e6
    "mov ax, di\n"  // 0ec0: 8bc7
    "mov cl, 0xa\n"  // 0ec2: b10a
    "shr ax, cl\n"  // 0ec4: d3e8
    "mov [cs:0xf6f], ax\n"  // 0ec6: 2ea36f0f
    "and di, 0x3ff\n"  // 0eca: 81e7ff03
    "mov cl, 0x4\n"  // 0ece: b104
    "shl di, cl\n"  // 0ed0: d3e7
    "call 0xf3b\n"  // 0ed2: e86600
    "pop cx\n"  // 0ed5: 59
    "push cx\n"  // 0ed6: 51
    "mov cx, 0x10\n"  // 0ed7: b91000
    "rep movsb [es:di], [si]\n"  // 0eda: f3a4
    "xor dx, dx\n"  // 0edc: 33d2
    "cmp di, 0x4000\n"  // 0ede: 81ff0040
    "jne 0xeea\n"  // 0ee2: 7506
    "inc [cs:0xf6f]\n"  // 0ee4: 2eff066f0f
    "inc dx\n"  // 0ee9: 42
    "cmp si, 0x4000\n"  // 0eea: 81fe0040
    "je 0xef6\n"  // 0eee: 7406
    "cmp si, 0x8000\n"  // 0ef0: 81fe0080
    "jne 0xefc\n"  // 0ef4: 7506
    "inc [cs:0xf6d]\n"  // 0ef6: 2eff066d0f
    "inc dx\n"  // 0efb: 42
    "or dx, dx\n"  // 0efc: 0bd2
    "je 0xf03\n"  // 0efe: 7403
    "call 0xf3b\n"  // 0f00: e83800
    "pop cx\n"  // 0f03: 59
    "loop 0xed6\n"  // 0f04: e2d0
    "mov bx, [bp - 0x4]\n"  // 0f06: 8b5efc
    "mov cx, [bp - 0x6]\n"  // 0f09: 8b4efa
    "mov ax, [cs:bx + 0x4]\n"  // 0f0c: 2e8b4704
    "sub ax, cx\n"  // 0f10: 2bc1
    "mov [cs:bx], ax\n"  // 0f12: 2e8907
    "add ax, [cs:bx + 0x6]\n"  // 0f15: 2e034706
    "mov [cs:bx + 0x4], ax\n"  // 0f19: 2e894704
    "mov ax, [cs:bx + 0x6]\n"  // 0f1d: 2e8b4706
    "mov [cs:bx + 0x2], ax\n"  // 0f21: 2e894702
    "add bx, 0x4\n"  // 0f25: 83c304
    "mov [bp - 0x4], bx\n"  // 0f28: 895efc
    "jmp 0xe8a\n"  // 0f2b: e95cff
    "mov bx, [bp - 0x4]\n"  // 0f2e: 8b5efc
    "xor ax, ax\n"  // 0f31: 33c0
    "mov [cs:bx], ax\n"  // 0f33: 2e8907
    "mov [cs:bx + 0x2], ax\n"  // 0f36: 2e894702
    "ret \n"  // 0f3a: c3
        ".att_syntax");
}

/* loc_0f3b (0x0f3b-0x0f6f) — inline asm */
void loc_0f3b(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "and di, 0x3fff\n"  // 0f3b: 81e7ff3f
    "and si, 0x3fff\n"  // 0f3f: 81e6ff3f
    "mov ah, 0x44\n"  // 0f43: b444
    "mov al, 0x0\n"  // 0f45: b000
    "mov bx, [cs:0xf6f]\n"  // 0f47: 2e8b1e6f0f
    "mov dx, [cs:0x201]\n"  // 0f4c: 2e8b160102
    "int 0x67\n"  // 0f51: cd67
    "cmp bx, [cs:0xf6d]\n"  // 0f53: 2e3b1e6d0f
    "je 0xf6e\n"  // 0f58: 7414
    "or si, 0x4000\n"  // 0f5a: 81ce0040
    "mov ah, 0x44\n"  // 0f5e: b444
    "mov al, 0x1\n"  // 0f60: b001
    "mov bx, [cs:0xf6d]\n"  // 0f62: 2e8b1e6d0f
    "mov dx, [cs:0x201]\n"  // 0f67: 2e8b160102
    "int 0x67\n"  // 0f6c: cd67
    "ret \n"  // 0f6e: c3
        ".att_syntax");
}

/* dos_con_loc_0f6f (0x0f6f-0x0fb7) — inline asm */
void dos_con_loc_0f6f(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 0f6f: 55
    "mov bp, sp\n"  // 0f70: 8bec
    "sub sp, 0x8\n"  // 0f72: 83ec08
    "push ds\n"  // 0f75: 1e
    "push es\n"  // 0f76: 06
    "push di\n"  // 0f77: 57
    "push si\n"  // 0f78: 56
    "mov ax, ds\n"  // 0f79: 8cd8
    "mov es, ax\n"  // 0f7b: 8ec0
    "mov ax, [bp + 0xc]\n"  // 0f7d: 8b460c
    "cmp ax, 0xa\n"  // 0f80: 3d0a00
    "jb 0xf88\n"  // 0f83: 7203
    "jmp 0xfaf\n"  // 0f85: e92700
    "shl ax, 0x1\n"  // 0f88: d1e0
    "mov [bp - 0x8], ax\n"  // 0f8a: 8946f8
    "mov bx, 0xbc6\n"  // 0f8d: bbc60b
    "add bx, ax\n"  // 0f90: 03d8
    "mov ax, [cs:bx]\n"  // 0f92: 2e8b07
    "or ax, ax\n"  // 0f95: 0bc0
    "jne 0xf9c\n"  // 0f97: 7503
    "jmp 0xfaf\n"  // 0f99: e91300
    "mov [cs:bx], 0x0\n"  // 0f9c: 2ec7070000
    "mov cx, [cs:0xcaa]\n"  // 0fa1: 2e8b0eaa0c
    "dec cx\n"  // 0fa6: 49
    "mov [cs:0xcaa], cx\n"  // 0fa7: 2e890eaa0c
    "call 0x43e1\n"  // 0fac: e83234
    "pop si\n"  // 0faf: 5e
    "pop di\n"  // 0fb0: 5f
    "pop es\n"  // 0fb1: 07
    "pop ds\n"  // 0fb2: 1f
    "mov sp, bp\n"  // 0fb3: 8be5
    "pop bp\n"  // 0fb5: 5d
    "ret \n"  // 0fb6: c3
        ".att_syntax");
}

/* dos_print_str (0x0fb7-0x0fda) — inline asm */
void dos_print_str(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 0fb7: 55
    "mov bp, sp\n"  // 0fb8: 8bec
    "sub sp, 0xe\n"  // 0fba: 83ec0e
    "push ds\n"  // 0fbd: 1e
    "push es\n"  // 0fbe: 06
    "push di\n"  // 0fbf: 57
    "push si\n"  // 0fc0: 56
    "mov ax, ds\n"  // 0fc1: 8cd8
    "mov es, ax\n"  // 0fc3: 8ec0
    "cld \n"  // 0fc5: fc
    "mov ax, [bp + 0xc]\n"  // 0fc6: 8b460c
    "shl ax, 0x1\n"  // 0fc9: d1e0
    "mov [bp - 0x4], ax\n"  // 0fcb: 8946fc
    "mov bx, 0xbc6\n"  // 0fce: bbc60b
    "add bx, ax\n"  // 0fd1: 03d8
    "mov bx, [cs:bx]\n"  // 0fd3: 2e8b1f
    "or bx, bx\n"  // 0fd6: 0bdb
    "jne 0xfff\n"  // 0fd8: 7525
        ".att_syntax");
}

/* dos_con_loc_0fda (0x0fda-0x11f8) — inline asm */
void dos_con_loc_0fda(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8, u16 arg9, u16 arg10, u16 arg11, u16 arg12, u16 arg13, u16 arg14, u16 arg15, u16 arg16, u16 arg17, u16 arg18, u16 arg19, u16 arg20, u16 arg21, u16 arg22, u16 arg23, u16 arg24, u16 arg25, u16 arg26, u16 arg27, u16 arg28, u16 arg29, u16 arg30, u16 arg31, u16 arg32, u8 arg32_hi)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov ax, cs\n"  // 0fda: 8cc8
    "mov ds, ax\n"  // 0fdc: 8ed8
    "mov dx, 0x10ea\n"  // 0fde: baea10
    "mov ah, 0x9\n"  // 0fe1: b409
    "int 0x21\n"  // 0fe3: cd21
    "mov ax, 0x4c01\n"  // 0fe5: b8014c
    "int 0x21\n"  // 0fe8: cd21
    "or ax, 0x70a\n"  // 0fea: 0d0a07
    "dec bp\n"  // 0fed: 4d
    "inc cx\n"  // 0fee: 41
    "pop dx\n"  // 0fef: 5a
    "inc bp\n"  // 0ff0: 45
    "and [bp + di + 0x45], dl\n"  // 0ff1: 205345
    "push sp\n"  // 0ff4: 54
    "and [di + 0x52], al\n"  // 0ff5: 204552
    "push dx\n"  // 0ff8: 52
    "dec di\n"  // 0ff9: 4f
    "push dx\n"  // 0ffa: 52
    "add [cs:bp + si], cl\n"  // 0ffb: 2e000a
    "and al, 0x4b\n"  // 0ffe: 244b
    "mov cl, 0x2\n"  // 1000: b102
    "shl bx, cl\n"  // 1002: d3e3
    "add bx, 0xbda\n"  // 1004: 81c3da0b
    "mov ax, [cs:bx]\n"  // 1008: 2e8b07
    "mov [bp - 0x2], ax\n"  // 100b: 8946fe
    "mov ax, [bp + 0x12]\n"  // 100e: 8b4612
    "cmp ax, 0xffff\n"  // 1011: 3dffff
    "je 0x1019\n"  // 1014: 7403
    "jmp 0x10f1\n"  // 1016: e9d800
    "mov bx, [bp + 0xe]\n"  // 1019: 8b5e0e
    "mov ax, 0x5\n"  // 101c: b80500
    "mul bx\n"  // 101f: f7e3
    "mov bx, [bp - 0x4]\n"  // 1021: 8b5efc
    "add bx, 0x27d\n"  // 1024: 81c37d02
    "add ax, [cs:bx]\n"  // 1028: 2e0307
    "mov si, ax\n"  // 102b: 8bf0
    "mov ax, [cs:0x1e5]\n"  // 102d: 2ea1e501
    "mov es, ax\n"  // 1031: 8ec0
    "mov ax, [cs:0x1e1]\n"  // 1033: 2ea1e101
    "add ax, [bp - 0x2]\n"  // 1037: 0346fe
    "mov ds, ax\n"  // 103a: 8ed8
    "xor ah, ah\n"  // 103c: 32e4
    "mov al, [si + 0x4]\n"  // 103e: 8a4404
    "or ax, ax\n"  // 1041: 0bc0
    "jne 0x1048\n"  // 1043: 7503
    "jmp 0x11f0\n"  // 1045: e9a801
    "mov cl, 0x3\n"  // 1048: b103
    "shl ax, cl\n"  // 104a: d3e0
    "mov [bp - 0x4], ax\n"  // 104c: 8946fc
    "mov al, [si + 0x1]\n"  // 104f: 8a4401
    "cwde \n"  // 1052: 98
    "mov bl, [si + 0x3]\n"  // 1053: 8a5c03
    "xor bh, bh\n"  // 1056: 32ff
    "add ax, bx\n"  // 1058: 03c3
    "mov cl, 0x3\n"  // 105a: b103
    "shl ax, cl\n"  // 105c: d3e0
    "mov di, ax\n"  // 105e: 8bf8
    "mov al, [si + 0x2]\n"  // 1060: 8a4402
    "mov cx, 0x140\n"  // 1063: b94001
    "mul cx\n"  // 1066: f7e1
    "add di, ax\n"  // 1068: 03f8
    "mov al, [si]\n"  // 106a: 8a04
    "mov bl, 0x6\n"  // 106c: b306
    "mul bl\n"  // 106e: f6e3
    "add ax, [cs:0x27b]\n"  // 1070: 2e03067b02
    "mov bx, ax\n"  // 1075: 8bd8
    "xor ax, ax\n"  // 1077: 33c0
    "mov al, [bx + 0x4]\n"  // 1079: 8a4704
    "mov cl, 0x3\n"  // 107c: b103
    "shl ax, cl\n"  // 107e: d3e0
    "mov [bp - 0x6], ax\n"  // 1080: 8946fa
    "mov ax, [bx + 0x2]\n"  // 1083: 8b4702
    "mov dl, [si + 0x3]\n"  // 1086: 8a5403
    "xor dh, dh\n"  // 1089: 32f6
    "shl dx, 0x1\n"  // 108b: d1e2
    "shl dx, 0x1\n"  // 108d: d1e2
    "shl dx, 0x1\n"  // 108f: d1e2
    "add ax, dx\n"  // 1091: 03c2
    "xor cx, cx\n"  // 1093: 33c9
    "mov cl, [bx + 0x5]\n"  // 1095: 8a4f05
    "mov dx, ds\n"  // 1098: 8cda
    "add dx, [bx]\n"  // 109a: 0317
    "mov ds, dx\n"  // 109c: 8eda
    "push cx\n"  // 109e: 51
    "mov cx, [bp - 0x4]\n"  // 109f: 8b4efc
    "push si\n"  // 10a2: 56
    "push ax\n"  // 10a3: 50
    "push di\n"  // 10a4: 57
    "xchg si, ax\n"  // 10a5: 96
    "xor ah, ah\n"  // 10a6: 32e4
    "cmp [bp + 0x10], 0x0\n"  // 10a8: 837e1000
    "je 0x10dd\n"  // 10ac: 742f
    "cmp [bp + 0x10], 0x2\n"  // 10ae: 837e1002
    "je 0x10d0\n"  // 10b2: 741c
    "cmp [bp + 0x10], 0x3\n"  // 10b4: 837e1003
    "je 0x10c3\n"  // 10b8: 7409
    "lodsb al, [si]\n"  // 10ba: ac
    "or al, [es:di]\n"  // 10bb: 260a05
    "stosb [es:di], al\n"  // 10be: aa
    "loop 0x10ba\n"  // 10bf: e2f9
    "jmp 0x10df\n"  // 10c1: eb1c
    "lodsb al, [si]\n"  // 10c3: ac
    "cmp al, 0xff\n"  // 10c4: 3cff
    "je 0x10cb\n"  // 10c6: 7403
    "mov [es:di], ah\n"  // 10c8: 268825
    "inc di\n"  // 10cb: 47
    "loop 0x10c3\n"  // 10cc: e2f5
    "jmp 0x10df\n"  // 10ce: eb0f
    "lodsb al, [si]\n"  // 10d0: ac
    "cmp al, 0xff\n"  // 10d1: 3cff
    "je 0x10d8\n"  // 10d3: 7403
    "mov [es:di], al\n"  // 10d5: 268805
    "inc di\n"  // 10d8: 47
    "loop 0x10d0\n"  // 10d9: e2f5
    "jmp 0x10df\n"  // 10db: eb02
    "rep movsb [es:di], [si]\n"  // 10dd: f3a4
    "pop di\n"  // 10df: 5f
    "add di, 0x140\n"  // 10e0: 81c74001
    "pop ax\n"  // 10e4: 58
    "mov dx, [bp - 0x6]\n"  // 10e5: 8b56fa
    "add ax, dx\n"  // 10e8: 03c2
    "pop si\n"  // 10ea: 5e
    "pop cx\n"  // 10eb: 59
    "loop 0x109e\n"  // 10ec: e2b0
    "jmp 0x11f0\n"  // 10ee: e9ff00
    "mov bx, [bp + 0xe]\n"  // 10f1: 8b5e0e
    "mov ax, 0x5\n"  // 10f4: b80500
    "mul bx\n"  // 10f7: f7e3
    "mov bx, [bp - 0x4]\n"  // 10f9: 8b5efc
    "add bx, 0x27d\n"  // 10fc: 81c37d02
    "add ax, [cs:bx]\n"  // 1100: 2e0307
    "mov si, ax\n"  // 1103: 8bf0
    "mov ax, [cs:0x1e5]\n"  // 1105: 2ea1e501
    "mov es, ax\n"  // 1109: 8ec0
    "mov ax, [cs:0x1e1]\n"  // 110b: 2ea1e101
    "add ax, [bp - 0x2]\n"  // 110f: 0346fe
    "mov ds, ax\n"  // 1112: 8ed8
    "mov al, [si]\n"  // 1114: 8a04
    "mov bl, 0x6\n"  // 1116: b306
    "mul bl\n"  // 1118: f6e3
    "add ax, [cs:0x27b]\n"  // 111a: 2e03067b02
    "mov [bp - 0x2], ax\n"  // 111f: 8946fe
    "mov ax, [bp + 0x12]\n"  // 1122: 8b4612
    "mov bx, 0x5\n"  // 1125: bb0500
    "mul bx\n"  // 1128: f7e3
    "mov bx, [bp - 0x4]\n"  // 112a: 8b5efc
    "add bx, 0x27d\n"  // 112d: 81c37d02
    "add ax, [cs:bx]\n"  // 1131: 2e0307
    "mov si, ax\n"  // 1134: 8bf0
    "xor ah, ah\n"  // 1136: 32e4
    "mov al, [si + 0x4]\n"  // 1138: 8a4404
    "or ax, ax\n"  // 113b: 0bc0
    "jne 0x1142\n"  // 113d: 7503
    "jmp 0x11f0\n"  // 113f: e9ae00
    "mov cl, 0x3\n"  // 1142: b103
    "shl ax, cl\n"  // 1144: d3e0
    "mov [bp - 0x4], ax\n"  // 1146: 8946fc
    "mov al, [si + 0x1]\n"  // 1149: 8a4401
    "cwde \n"  // 114c: 98
    "mov bl, [si + 0x3]\n"  // 114d: 8a5c03
    "xor bh, bh\n"  // 1150: 32ff
    "add ax, bx\n"  // 1152: 03c3
    "mov cl, 0x3\n"  // 1154: b103
    "shl ax, cl\n"  // 1156: d3e0
    "mov di, ax\n"  // 1158: 8bf8
    "mov al, [si + 0x2]\n"  // 115a: 8a4402
    "mov cx, 0x140\n"  // 115d: b94001
    "mul cx\n"  // 1160: f7e1
    "add di, ax\n"  // 1162: 03f8
    "mov bx, [bp - 0x2]\n"  // 1164: 8b5efe
    "xor ax, ax\n"  // 1167: 33c0
    "mov al, [bx + 0x4]\n"  // 1169: 8a4704
    "mov cl, 0x3\n"  // 116c: b103
    "shl ax, cl\n"  // 116e: d3e0
    "mov [bp - 0x6], ax\n"  // 1170: 8946fa
    "mov cl, 0x3\n"  // 1173: b103
    "mov ax, [bx + 0x2]\n"  // 1175: 8b4702
    "xor dh, dh\n"  // 1178: 32f6
    "mov dl, [bx + 0x4]\n"  // 117a: 8a5704
    "shl dx, cl\n"  // 117d: d3e2
    "dec dx\n"  // 117f: 4a
    "add ax, dx\n"  // 1180: 03c2
    "xor dx, dx\n"  // 1182: 33d2
    "mov dl, [si + 0x3]\n"  // 1184: 8a5403
    "shl dx, cl\n"  // 1187: d3e2
    "sub ax, dx\n"  // 1189: 2bc2
    "xor cx, cx\n"  // 118b: 33c9
    "mov cl, [bx + 0x5]\n"  // 118d: 8a4f05
    "mov dx, ds\n"  // 1190: 8cda
    "add dx, [bx]\n"  // 1192: 0317
    "mov ds, dx\n"  // 1194: 8eda
    "push cx\n"  // 1196: 51
    "mov cx, [bp - 0x4]\n"  // 1197: 8b4efc
    "push si\n"  // 119a: 56
    "push ax\n"  // 119b: 50
    "push di\n"  // 119c: 57
    "xchg si, ax\n"  // 119d: 96
    "xor ah, ah\n"  // 119e: 32e4
    "cmp [bp + 0x10], 0x0\n"  // 11a0: 837e1000
    "je 0x11db\n"  // 11a4: 7435
    "cmp [bp + 0x10], 0x2\n"  // 11a6: 837e1002
    "je 0x11cc\n"  // 11aa: 7420
    "cmp [bp + 0x10], 0x3\n"  // 11ac: 837e1003
    "je 0x11bd\n"  // 11b0: 740b
    "mov al, [si]\n"  // 11b2: 8a04
    "dec si\n"  // 11b4: 4e
    "or al, [es:di]\n"  // 11b5: 260a05
    "stosb [es:di], al\n"  // 11b8: aa
    "loop 0x11b2\n"  // 11b9: e2f7
    "jmp 0x11e1\n"  // 11bb: eb24
    "mov al, [si]\n"  // 11bd: 8a04
    "dec si\n"  // 11bf: 4e
    "cmp al, 0xff\n"  // 11c0: 3cff
    "je 0x11c7\n"  // 11c2: 7403
    "mov [es:di], ah\n"  // 11c4: 268825
    "inc di\n"  // 11c7: 47
    "loop 0x11bd\n"  // 11c8: e2f3
    "jmp 0x11e1\n"  // 11ca: eb15
    "mov al, [si]\n"  // 11cc: 8a04
    "dec si\n"  // 11ce: 4e
    "cmp al, 0xff\n"  // 11cf: 3cff
    "je 0x11d6\n"  // 11d1: 7403
    "mov [es:di], al\n"  // 11d3: 268805
    "inc di\n"  // 11d6: 47
    "loop 0x11cc\n"  // 11d7: e2f3
    "jmp 0x11e1\n"  // 11d9: eb06
    "mov al, [si]\n"  // 11db: 8a04
    "dec si\n"  // 11dd: 4e
    "stosb [es:di], al\n"  // 11de: aa
    "loop 0x11db\n"  // 11df: e2fa
    "pop di\n"  // 11e1: 5f
    "add di, 0x140\n"  // 11e2: 81c74001
    "pop ax\n"  // 11e6: 58
    "mov dx, [bp - 0x6]\n"  // 11e7: 8b56fa
    "add ax, dx\n"  // 11ea: 03c2
    "pop si\n"  // 11ec: 5e
    "pop cx\n"  // 11ed: 59
    "loop 0x1196\n"  // 11ee: e2a6
    "pop si\n"  // 11f0: 5e
    "pop di\n"  // 11f1: 5f
    "pop es\n"  // 11f2: 07
    "pop ds\n"  // 11f3: 1f
    "mov sp, bp\n"  // 11f4: 8be5
    "pop bp\n"  // 11f6: 5d
    "ret \n"  // 11f7: c3
        ".att_syntax");
}

/* mouse_init (0x11f8-0x126c) — inline asm */
void mouse_init(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 11f8: 55
    "mov bp, sp\n"  // 11f9: 8bec
    "push es\n"  // 11fb: 06
    "mov ax, ds\n"  // 11fc: 8cd8
    "mov es, ax\n"  // 11fe: 8ec0
    "cmp [cs:0x205], 0x0\n"  // 1200: 2e803e050200
    "je 0x1267\n"  // 1206: 745f
    "mov ax, 0x0\n"  // 1208: b80000
    "int 0x33\n"  // 120b: cd33
    "push ds\n"  // 120d: 1e
    "push es\n"  // 120e: 06
    "push di\n"  // 120f: 57
    "push si\n"  // 1210: 56
    "mov ax, 0x7\n"  // 1211: b80700
    "xor cx, cx\n"  // 1214: 33c9
    "mov dx, 0x27f\n"  // 1216: ba7f02
    "int 0x33\n"  // 1219: cd33
    "mov ax, 0x8\n"  // 121b: b80800
    "xor cx, cx\n"  // 121e: 33c9
    "mov dx, 0xc7\n"  // 1220: bac700
    "int 0x33\n"  // 1223: cd33
    "mov ax, 0x4\n"  // 1225: b80400
    "xor cx, cx\n"  // 1228: 33c9
    "xor dx, dx\n"  // 122a: 33d2
    "int 0x33\n"  // 122c: cd33
    "mov ax, 0x3\n"  // 122e: b80300
    "int 0x33\n"  // 1231: cd33
    "shr cx, 0x1\n"  // 1233: d1e9
    "mov [cs:0x15b0], cx\n"  // 1235: 2e890eb015
    "mov [cs:0x15b2], dx\n"  // 123a: 2e8916b215
    "mov ax, cs\n"  // 123f: 8cc8
    "push ax\n"  // 1241: 50
    "mov ax, 0xffff\n"  // 1242: b8ffff
    "mov [cs:0x15ae], ax\n"  // 1245: 2ea3ae15
    "call 0x1e35\n"  // 1249: e8e90b
    "pop si\n"  // 124c: 5e
    "pop di\n"  // 124d: 5f
    "pop es\n"  // 124e: 07
    "pop ds\n"  // 124f: 1f
    "mov [cs:0x228], 0x1\n"  // 1250: 2ec606280201
    "push es\n"  // 1256: 06
    "mov ax, 0x14\n"  // 1257: b81400
    "mov bx, cs\n"  // 125a: 8ccb
    "mov es, bx\n"  // 125c: 8ec3
    "mov cx, 0xb\n"  // 125e: b90b00
    "mov dx, 0x1ed4\n"  // 1261: bad41e
    "int 0x33\n"  // 1264: cd33
    "pop es\n"  // 1266: 07
    "pop es\n"  // 1267: 07
    "mov sp, bp\n"  // 1268: 8be5
    "pop bp\n"  // 126a: 5d
    "ret \n"  // 126b: c3
        ".att_syntax");
}

/* mouse_init_2 (0x126c-0x12c9) — inline asm */
void mouse_init_2(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 126c: 55
    "mov bp, sp\n"  // 126d: 8bec
    "push es\n"  // 126f: 06
    "mov ax, ds\n"  // 1270: 8cd8
    "mov es, ax\n"  // 1272: 8ec0
    "cmp [cs:0x228], 0x0\n"  // 1274: 2e803e280200
    "je 0x12c4\n"  // 127a: 7448
    "mov [cs:0x228], 0x0\n"  // 127c: 2ec606280200
    "mov ax, 0x0\n"  // 1282: b80000
    "int 0x33\n"  // 1285: cd33
    "push ds\n"  // 1287: 1e
    "push es\n"  // 1288: 06
    "push di\n"  // 1289: 57
    "push si\n"  // 128a: 56
    "mov si, [cs:0x15b4]\n"  // 128b: 2e8b36b415
    "mov ax, cs\n"  // 1290: 8cc8
    "mov ds, ax\n"  // 1292: 8ed8
    "mov ax, 0xa000\n"  // 1294: b800a0
    "mov es, ax\n"  // 1297: 8ec0
    "mov di, [cs:0x15bc]\n"  // 1299: 2e8b3ebc15
    "mov si, [cs:0x15b4]\n"  // 129e: 2e8b36b415
    "mov cx, [cs:0x15ba]\n"  // 12a3: 2e8b0eba15
    "push cx\n"  // 12a8: 51
    "push si\n"  // 12a9: 56
    "push di\n"  // 12aa: 57
    "mov cx, [cs:0x15b8]\n"  // 12ab: 2e8b0eb815
    "rep movsb [es:di], [si]\n"  // 12b0: f3a4
    "pop di\n"  // 12b2: 5f
    "add di, 0x140\n"  // 12b3: 81c74001
    "pop si\n"  // 12b7: 5e
    "add si, [cs:0x1e5c]\n"  // 12b8: 2e03365c1e
    "pop cx\n"  // 12bd: 59
    "loop 0x12a8\n"  // 12be: e2e8
    "pop si\n"  // 12c0: 5e
    "pop di\n"  // 12c1: 5f
    "pop es\n"  // 12c2: 07
    "pop ds\n"  // 12c3: 1f
    "pop es\n"  // 12c4: 07
    "mov sp, bp\n"  // 12c5: 8be5
    "pop bp\n"  // 12c7: 5d
    "ret \n"  // 12c8: c3
        ".att_syntax");
}

/* bios_mouse_loc_12c9 (0x12c9-0x1308) — inline asm */
void bios_mouse_loc_12c9(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ds\n"  // 12c9: 1e
    "push es\n"  // 12ca: 06
    "push si\n"  // 12cb: 56
    "push di\n"  // 12cc: 57
    "cmp [cs:0x226], 0x1\n"  // 12cd: 2e803e260201
    "je 0x12dd\n"  // 12d3: 7408
    "cmp [cs:0x228], 0x1\n"  // 12d5: 2e803e280201
    "je 0x12e0\n"  // 12db: 7403
    "jmp 0x12fd\n"  // 12dd: e91d00
    "mov ax, 0x3\n"  // 12e0: b80300
    "int 0x33\n"  // 12e3: cd33
    "shr cx, 0x1\n"  // 12e5: d1e9
    "cmp [cs:0x15ac], cx\n"  // 12e7: 2e390eac15
    "jne 0x12f5\n"  // 12ec: 7507
    "cmp [cs:0x15ae], dx\n"  // 12ee: 2e3916ae15
    "je 0x12fd\n"  // 12f3: 7408
    "shl cx, 0x1\n"  // 12f5: d1e1
    "mov ax, cs\n"  // 12f7: 8cc8
    "push ax\n"  // 12f9: 50
    "call 0x1e1a\n"  // 12fa: e81d0b
    "mov [cs:0x227], 0x0\n"  // 12fd: 2ec606270200
    "pop di\n"  // 1303: 5f
    "pop si\n"  // 1304: 5e
    "pop es\n"  // 1305: 07
    "pop ds\n"  // 1306: 1f
    "ret \n"  // 1307: c3
        ".att_syntax");
}

/* bios_mouse_loc_1308 (0x1308-0x1317) */
void bios_mouse_loc_1308(void)
{

    // cmp g_data_0228, 0x1 (flags)
    *(uint8 *)&g_data_0227 = (uint8)0x1;
}

/* bios_mouse_loc_1317 (0x1317-0x139a) — inline asm */
void bios_mouse_loc_1317(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 1317: 55
    "mov bp, sp\n"  // 1318: 8bec
    "sub sp, 0x4\n"  // 131a: 83ec04
    "push ds\n"  // 131d: 1e
    "push si\n"  // 131e: 56
    "push es\n"  // 131f: 06
    "mov ax, ds\n"  // 1320: 8cd8
    "mov es, ax\n"  // 1322: 8ec0
    "mov [bp - 0x4], 0x1\n"  // 1324: c746fc0100
    "xor ax, ax\n"  // 1329: 33c0
    "cmp [cs:0x228], 0x0\n"  // 132b: 2e803e280200
    "je 0x1393\n"  // 1331: 7460
    "mov bx, [cs:0x1ecd]\n"  // 1333: 2e8b1ecd1e
    "or bx, bx\n"  // 1338: 0bdb
    "je 0x1352\n"  // 133a: 7416
    "mov [cs:0x1ecd], 0x0\n"  // 133c: 2ec706cd1e0000
    "mov [bp - 0x2], bx\n"  // 1343: 895efe
    "mov cx, [cs:0x1ecf]\n"  // 1346: 2e8b0ecf1e
    "mov dx, [cs:0x1ed1]\n"  // 134b: 2e8b16d11e
    "jmp 0x135e\n"  // 1350: eb0c
    "mov ax, 0x3\n"  // 1352: b80300
    "int 0x33\n"  // 1355: cd33
    "xor bx, bx\n"  // 1357: 33db
    "mov [bp - 0x2], bx\n"  // 1359: 895efe
    "shr cx, 0x1\n"  // 135c: d1e9
    "mov bx, cx\n"  // 135e: 8bd9
    "mov si, [bp + 0xc]\n"  // 1360: 8b760c
    "cmp [si], 1\n"  // 1363: 833cff
    "je 0x1391\n"  // 1366: 7429
    "cmp bx, [si]\n"  // 1368: 3b1c
    "jb 0x1389\n"  // 136a: 721d
    "cmp dx, [si + 0x2]\n"  // 136c: 3b5402
    "jb 0x1389\n"  // 136f: 7218
    "cmp [si + 0x4], bx\n"  // 1371: 395c04
    "jb 0x1389\n"  // 1374: 7213
    "cmp [si + 0x6], dx\n"  // 1376: 395406
    "jb 0x1389\n"  // 1379: 720e
    "mov ax, [bp - 0x4]\n"  // 137b: 8b46fc
    "mov bx, [bp - 0x2]\n"  // 137e: 8b5efe
    "or bx, bx\n"  // 1381: 0bdb
    "je 0x1393\n"  // 1383: 740e
    "neg ax\n"  // 1385: f7d8
    "jmp 0x1393\n"  // 1387: eb0a
    "add si, 0x8\n"  // 1389: 83c608
    "inc [bp - 0x4]\n"  // 138c: ff46fc
    "jmp 0x1363\n"  // 138f: ebd2
    "xor ax, ax\n"  // 1391: 33c0
    "pop es\n"  // 1393: 07
    "pop si\n"  // 1394: 5e
    "pop ds\n"  // 1395: 1f
    "mov sp, bp\n"  // 1396: 8be5
    "pop bp\n"  // 1398: 5d
    "ret \n"  // 1399: c3
        ".att_syntax");
}

/* bios_mouse_loc_139a (0x139a-0x13c9) — inline asm */
void bios_mouse_loc_139a(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 139a: 55
    "mov bp, sp\n"  // 139b: 8bec
    "sub sp, 0x6\n"  // 139d: 83ec06
    "push es\n"  // 13a0: 06
    "mov ax, ds\n"  // 13a1: 8cd8
    "mov es, ax\n"  // 13a3: 8ec0
    "cmp [cs:0x228], 0x0\n"  // 13a5: 2e803e280200
    "je 0x13c4\n"  // 13ab: 7417
    "mov ax, 0x3\n"  // 13ad: b80300
    "int 0x33\n"  // 13b0: cd33
    "mov [bp - 0x2], bx\n"  // 13b2: 895efe
    "mov bx, [bp + 0xc]\n"  // 13b5: 8b5e0c
    "shr cx, 0x1\n"  // 13b8: d1e9
    "mov [bx], cx\n"  // 13ba: 890f
    "mov bx, [bp + 0xe]\n"  // 13bc: 8b5e0e
    "mov [bx], dx\n"  // 13bf: 8917
    "mov ax, [bp - 0x2]\n"  // 13c1: 8b46fe
    "pop es\n"  // 13c4: 07
    "mov sp, bp\n"  // 13c5: 8be5
    "pop bp\n"  // 13c7: 5d
    "ret \n"  // 13c8: c3
        ".att_syntax");
}

/* mouse_set_pos (0x13c9-0x147d) — inline asm */
void mouse_set_pos(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8, u16 arg9)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 13c9: 55
    "mov bp, sp\n"  // 13ca: 8bec
    "push ds\n"  // 13cc: 1e
    "push es\n"  // 13cd: 06
    "push si\n"  // 13ce: 56
    "push di\n"  // 13cf: 57
    "mov ax, ds\n"  // 13d0: 8cd8
    "mov es, ax\n"  // 13d2: 8ec0
    "mov ax, [bp + 0x10]\n"  // 13d4: 8b4610
    "cmp ax, 0x51\n"  // 13d7: 3d5100
    "jb 0x13df\n"  // 13da: 7203
    "jmp 0x1476\n"  // 13dc: e99700
    "mov bx, [bp + 0x12]\n"  // 13df: 8b5e12
    "mul bx\n"  // 13e2: f7e3
    "or dx, dx\n"  // 13e4: 0bd2
    "jne 0x13dc\n"  // 13e6: 75f4
    "cmp ax, 0x401\n"  // 13e8: 3d0104
    "jae 0x13dc\n"  // 13eb: 73ef
    "call 0x1308\n"  // 13ed: e818ff
    "mov ax, [bp + 0xc]\n"  // 13f0: 8b460c
    "mov [cs:0x1e64], ax\n"  // 13f3: 2ea3641e
    "mov ax, [bp + 0xe]\n"  // 13f7: 8b460e
    "mov [cs:0x1e66], ax\n"  // 13fa: 2ea3661e
    "mov ax, [bp + 0x10]\n"  // 13fe: 8b4610
    "mov [cs:0x1e5c], ax\n"  // 1401: 2ea35c1e
    "mov ax, [bp + 0x12]\n"  // 1405: 8b4612
    "mov [cs:0x1e5e], ax\n"  // 1408: 2ea35e1e
    "mov ax, [cs:0x1e64]\n"  // 140c: 2ea1641e
    "or ax, [cs:0x1e66]\n"  // 1410: 2e0b06661e
    "jne 0x1428\n"  // 1415: 7511
    "mov ax, cs\n"  // 1417: 8cc8
    "mov ds, ax\n"  // 1419: 8ed8
    "mov es, ax\n"  // 141b: 8ec0
    "mov si, 0x1e60\n"  // 141d: be601e
    "mov di, 0x1e5c\n"  // 1420: bf5c1e
    "mov cx, 0x4\n"  // 1423: b90400
    "rep movsb [es:di], [si]\n"  // 1426: f3a4
    "cmp [cs:0x228], 0x0\n"  // 1428: 2e803e280200
    "je 0x146e\n"  // 142e: 743e
    "mov cx, [bp + 0x14]\n"  // 1430: 8b4e14
    "cmp cx, 1\n"  // 1433: 83f9ff
    "je 0x144e\n"  // 1436: 7416
    "mov dx, [bp + 0x16]\n"  // 1438: 8b5616
    "cmp dx, 1\n"  // 143b: 83faff
    "je 0x144e\n"  // 143e: 740e
    "shl cx, 0x1\n"  // 1440: d1e1
    "mov ax, 0x4\n"  // 1442: b80400
    "int 0x33\n"  // 1445: cd33
    "mov ax, 0x3\n"  // 1447: b80300
    "int 0x33\n"  // 144a: cd33
    "jmp 0x1462\n"  // 144c: eb14
    "cmp [cs:0x226], 0x0\n"  // 144e: 2e803e260200
    "je 0x1447\n"  // 1454: 74f1
    "mov cx, [cs:0x15ac]\n"  // 1456: 2e8b0eac15
    "shl cx, 0x1\n"  // 145b: d1e1
    "mov dx, [cs:0x15ae]\n"  // 145d: 2e8b16ae15
    "mov ax, cs\n"  // 1462: 8cc8
    "push ax\n"  // 1464: 50
    "call 0x1e1a\n"  // 1465: e8b209
    "mov [cs:0x227], 0x0\n"  // 1468: 2ec606270200
    "pop di\n"  // 146e: 5f
    "pop si\n"  // 146f: 5e
    "pop es\n"  // 1470: 07
    "pop ds\n"  // 1471: 1f
    "mov sp, bp\n"  // 1472: 8be5
    "pop bp\n"  // 1474: 5d
    "ret \n"  // 1475: c3
    "mov ax, cs\n"  // 1476: 8cc8
    "mov ds, ax\n"  // 1478: 8ed8
    "mov dx, 0x1586\n"  // 147a: ba8615
        ".att_syntax");
}

/* dos_con_loc_147d (0x147d-0x1e1a) */
void dos_con_loc_147d(void)
{
    u16 ax;
    u8 ah;

    *(uint8 *)&ah = (uint8)0x9;
}

/* math_loc_1e1a (0x1e1a-0x1e35) — inline asm */
void math_loc_1e1a(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "cmp [cs:0x1ed3], 0x0\n"  // 1e1a: 2e803ed31e00
    "je 0x1e23\n"  // 1e20: 7401
    "retf \n"  // 1e22: cb
    "mov al, 0xff\n"  // 1e23: b0ff
    "mov [cs:0x1ed3], al\n"  // 1e25: 2ea2d31e
    "shr cx, 0x1\n"  // 1e29: d1e9
    "mov [cs:0x15b0], cx\n"  // 1e2b: 2e890eb015
    "mov [cs:0x15b2], dx\n"  // 1e30: 2e8916b215
        ".att_syntax");
}

/* math_loc_1e35 (0x1e35-0x217d) — inline asm */
void math_loc_1e35(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 1e35: 55
    "mov bp, sp\n"  // 1e36: 8bec
    "sub sp, 0x10\n"  // 1e38: 83ec10
    "mov ax, [cs:0x15b2]\n"  // 1e3b: 2ea1b215
    "mov bx, 0xc8\n"  // 1e3f: bbc800
    "sub bx, ax\n"  // 1e42: 2bd8
    "cmp bx, [cs:0x1e5e]\n"  // 1e44: 2e3b1e5e1e
    "jb 0x1e50\n"  // 1e49: 7205
    "mov bx, [cs:0x1e5e]\n"  // 1e4b: 2e8b1e5e1e
    "mov [cs:0x15c0], bx\n"  // 1e50: 2e891ec015
    "mov bx, 0x140\n"  // 1e55: bb4001
    "mul bx\n"  // 1e58: f7e3
    "mov bx, [cs:0x15b0]\n"  // 1e5a: 2e8b1eb015
    "add ax, bx\n"  // 1e5f: 03c3
    "mov si, ax\n"  // 1e61: 8bf0
    "mov [cs:0x15c2], ax\n"  // 1e63: 2ea3c215
    "mov cx, 0x140\n"  // 1e67: b94001
    "sub cx, bx\n"  // 1e6a: 2bcb
    "cmp cx, [cs:0x1e5c]\n"  // 1e6c: 2e3b0e5c1e
    "jb 0x1e78\n"  // 1e71: 7205
    "mov cx, [cs:0x1e5c]\n"  // 1e73: 2e8b0e5c1e
    "mov [cs:0x15be], cx\n"  // 1e78: 2e890ebe15
    "mov di, [cs:0x15b6]\n"  // 1e7d: 2e8b3eb615
    "mov ax, cs\n"  // 1e82: 8cc8
    "mov es, ax\n"  // 1e84: 8ec0
    "mov ax, 0xa000\n"  // 1e86: b800a0
    "mov ds, ax\n"  // 1e89: 8ed8
    "mov cx, [cs:0x15c0]\n"  // 1e8b: 2e8b0ec015
    "push cx\n"  // 1e90: 51
    "push si\n"  // 1e91: 56
    "mov cx, [cs:0x15be]\n"  // 1e92: 2e8b0ebe15
    "rep movsb [es:di], [si]\n"  // 1e97: f3a4
    "pop si\n"  // 1e99: 5e
    "add si, 0x140\n"  // 1e9a: 81c64001
    "pop cx\n"  // 1e9e: 59
    "loop 0x1e90\n"  // 1e9f: e2ef
    "mov ax, [cs:0x15ae]\n"  // 1ea1: 2ea1ae15
    "cmp ax, 0xffff\n"  // 1ea5: 3dffff
    "jne 0x1ead\n"  // 1ea8: 7503
    "jmp 0x1fc7\n"  // 1eaa: e91a01
    "add ax, [cs:0x15ba]\n"  // 1ead: 2e0306ba15
    "dec ax\n"  // 1eb2: 48
    "mov [bp - 0x2], ax\n"  // 1eb3: 8946fe
    "mov ax, [cs:0x15ac]\n"  // 1eb6: 2ea1ac15
    "add ax, [cs:0x15b8]\n"  // 1eba: 2e0306b815
    "dec ax\n"  // 1ebf: 48
    "mov [bp - 0x4], ax\n"  // 1ec0: 8946fc
    "mov cx, [cs:0x15b0]\n"  // 1ec3: 2e8b0eb015
    "mov dx, [cs:0x15b2]\n"  // 1ec8: 2e8b16b215
    "cmp [bp - 0x4], cx\n"  // 1ecd: 394efc
    "jb 0x1ef1\n"  // 1ed0: 721f
    "cmp [bp - 0x2], dx\n"  // 1ed2: 3956fe
    "jb 0x1ef1\n"  // 1ed5: 721a
    "add cx, [cs:0x15be]\n"  // 1ed7: 2e030ebe15
    "dec cx\n"  // 1edc: 49
    "add dx, [cs:0x15c0]\n"  // 1edd: 2e0316c015
    "dec dx\n"  // 1ee2: 4a
    "cmp cx, [cs:0x15ac]\n"  // 1ee3: 2e3b0eac15
    "jb 0x1ef1\n"  // 1ee8: 7207
    "cmp dx, [cs:0x15ae]\n"  // 1eea: 2e3b16ae15
    "jae 0x1efa\n"  // 1eef: 7309
    "mov [cs:0x1e68], 0x0\n"  // 1ef1: 2ec606681e00
    "jmp 0x1fc7\n"  // 1ef7: e9cd00
    "mov [cs:0x1e68], 0x1\n"  // 1efa: 2ec606681e01
    "mov cx, [cs:0x15b0]\n"  // 1f00: 2e8b0eb015
    "mov ax, cx\n"  // 1f05: 8bc1
    "cmp [cs:0x15ac], cx\n"  // 1f07: 2e390eac15
    "jb 0x1f12\n"  // 1f0c: 7204
    "mov ax, [cs:0x15ac]\n"  // 1f0e: 2ea1ac15
    "mov [bp - 0x6], ax\n"  // 1f12: 8946fa
    "mov dx, [cs:0x15b2]\n"  // 1f15: 2e8b16b215
    "mov bx, dx\n"  // 1f1a: 8bda
    "cmp [cs:0x15ae], dx\n"  // 1f1c: 2e3916ae15
    "jb 0x1f28\n"  // 1f21: 7205
    "mov bx, [cs:0x15ae]\n"  // 1f23: 2e8b1eae15
    "mov [bp - 0x8], bx\n"  // 1f28: 895ef8
    "sub ax, cx\n"  // 1f2b: 2bc1
    "sub bx, dx\n"  // 1f2d: 2bda
    "mov [bp - 0xa], ax\n"  // 1f2f: 8946f6
    "mov [bp - 0xc], bx\n"  // 1f32: 895ef4
    "mov cx, [cs:0x15be]\n"  // 1f35: 2e8b0ebe15
    "mov dx, [cs:0x15c0]\n"  // 1f3a: 2e8b16c015
    "sub cx, ax\n"  // 1f3f: 2bc8
    "mov [bp - 0xe], cx\n"  // 1f41: 894ef2
    "sub dx, bx\n"  // 1f44: 2bd3
    "mov [bp - 0x10], dx\n"  // 1f46: 8956f0
    "mov ax, [bp - 0x6]\n"  // 1f49: 8b46fa
    "add ax, [bp - 0xe]\n"  // 1f4c: 0346f2
    "dec ax\n"  // 1f4f: 48
    "cmp ax, [bp - 0x4]\n"  // 1f50: 3b46fc
    "jb 0x1f5f\n"  // 1f53: 720a
    "mov ax, [bp - 0x4]\n"  // 1f55: 8b46fc
    "sub ax, [bp - 0x6]\n"  // 1f58: 2b46fa
    "inc ax\n"  // 1f5b: 40
    "mov [bp - 0xe], ax\n"  // 1f5c: 8946f2
    "mov ax, [bp - 0x8]\n"  // 1f5f: 8b46f8
    "add ax, [bp - 0x10]\n"  // 1f62: 0346f0
    "dec ax\n"  // 1f65: 48
    "cmp ax, [bp - 0x2]\n"  // 1f66: 3b46fe
    "jb 0x1f75\n"  // 1f69: 720a
    "mov ax, [bp - 0x2]\n"  // 1f6b: 8b46fe
    "sub ax, [bp - 0x8]\n"  // 1f6e: 2b46f8
    "inc ax\n"  // 1f71: 40
    "mov [bp - 0x10], ax\n"  // 1f72: 8946f0
    "mov ax, [bp - 0x8]\n"  // 1f75: 8b46f8
    "sub ax, [cs:0x15ae]\n"  // 1f78: 2e2b06ae15
    "mov bx, [cs:0x15b8]\n"  // 1f7d: 2e8b1eb815
    "mul bx\n"  // 1f82: f7e3
    "add ax, [bp - 0x6]\n"  // 1f84: 0346fa
    "sub ax, [cs:0x15ac]\n"  // 1f87: 2e2b06ac15
    "add ax, [cs:0x15b4]\n"  // 1f8c: 2e0306b415
    "mov si, ax\n"  // 1f91: 8bf0
    "mov ax, [bp - 0xc]\n"  // 1f93: 8b46f4
    "mov bx, [cs:0x15be]\n"  // 1f96: 2e8b1ebe15
    "mul bx\n"  // 1f9b: f7e3
    "add ax, [bp - 0xa]\n"  // 1f9d: 0346f6
    "add ax, [cs:0x15b6]\n"  // 1fa0: 2e0306b615
    "mov di, ax\n"  // 1fa5: 8bf8
    "mov ax, cs\n"  // 1fa7: 8cc8
    "mov ds, ax\n"  // 1fa9: 8ed8
    "mov es, ax\n"  // 1fab: 8ec0
    "mov cx, [bp - 0x10]\n"  // 1fad: 8b4ef0
    "push cx\n"  // 1fb0: 51
    "push si\n"  // 1fb1: 56
    "push di\n"  // 1fb2: 57
    "mov cx, [bp - 0xe]\n"  // 1fb3: 8b4ef2
    "rep movsb [es:di], [si]\n"  // 1fb6: f3a4
    "pop di\n"  // 1fb8: 5f
    "add di, [cs:0x15be]\n"  // 1fb9: 2e033ebe15
    "pop si\n"  // 1fbe: 5e
    "add si, [cs:0x15b8]\n"  // 1fbf: 2e0336b815
    "pop cx\n"  // 1fc4: 59
    "loop 0x1fb0\n"  // 1fc5: e2e9
    "mov ax, 0xa000\n"  // 1fc7: b800a0
    "mov es, ax\n"  // 1fca: 8ec0
    "mov di, [cs:0x15c2]\n"  // 1fcc: 2e8b3ec215
    "mov ax, [cs:0x1e66]\n"  // 1fd1: 2ea1661e
    "mov ds, ax\n"  // 1fd5: 8ed8
    "mov si, [cs:0x1e64]\n"  // 1fd7: 2e8b36641e
    "mov cx, [cs:0x15c0]\n"  // 1fdc: 2e8b0ec015
    "mov ax, ds\n"  // 1fe1: 8cd8
    "or ax, si\n"  // 1fe3: 0bc6
    "jne 0x1fee\n"  // 1fe5: 7507
    "mov si, 0x1e69\n"  // 1fe7: be691e
    "mov ax, cs\n"  // 1fea: 8cc8
    "mov ds, ax\n"  // 1fec: 8ed8
    "push di\n"  // 1fee: 57
    "push si\n"  // 1fef: 56
    "push cx\n"  // 1ff0: 51
    "push di\n"  // 1ff1: 57
    "push si\n"  // 1ff2: 56
    "mov cx, [cs:0x15be]\n"  // 1ff3: 2e8b0ebe15
    "mov al, [si]\n"  // 1ff8: 8a04
    "cmp al, 0xff\n"  // 1ffa: 3cff
    "je 0x2001\n"  // 1ffc: 7403
    "mov [es:di], al\n"  // 1ffe: 268805
    "inc si\n"  // 2001: 46
    "inc di\n"  // 2002: 47
    "loop 0x1ff8\n"  // 2003: e2f3
    "pop si\n"  // 2005: 5e
    "add si, [cs:0x1e5c]\n"  // 2006: 2e03365c1e
    "pop di\n"  // 200b: 5f
    "add di, 0x140\n"  // 200c: 81c74001
    "pop cx\n"  // 2010: 59
    "loop 0x1ff0\n"  // 2011: e2dd
    "pop bx\n"  // 2013: 5b
    "pop di\n"  // 2014: 5f
    "mov ax, [cs:0x15ae]\n"  // 2015: 2ea1ae15
    "cmp ax, 0xffff\n"  // 2019: 3dffff
    "jne 0x2021\n"  // 201c: 7503
    "jmp 0x2139\n"  // 201e: e91801
    "mov si, [cs:0x15b6]\n"  // 2021: 2e8b36b615
    "mov cx, [cs:0x15c0]\n"  // 2026: 2e8b0ec015
    "push cx\n"  // 202b: 51
    "push di\n"  // 202c: 57
    "push si\n"  // 202d: 56
    "push bx\n"  // 202e: 53
    "mov cx, [cs:0x15be]\n"  // 202f: 2e8b0ebe15
    "mov al, [bx]\n"  // 2034: 8a07
    "inc bx\n"  // 2036: 43
    "cmp al, 0xff\n"  // 2037: 3cff
    "jne 0x2041\n"  // 2039: 7506
    "mov dl, [cs:si]\n"  // 203b: 2e8a14
    "mov [es:di], dl\n"  // 203e: 268815
    "inc si\n"  // 2041: 46
    "inc di\n"  // 2042: 47
    "loop 0x2034\n"  // 2043: e2ef
    "pop bx\n"  // 2045: 5b
    "add bx, [cs:0x1e5c]\n"  // 2046: 2e031e5c1e
    "pop si\n"  // 204b: 5e
    "add si, [cs:0x15be]\n"  // 204c: 2e0336be15
    "pop di\n"  // 2051: 5f
    "add di, 0x140\n"  // 2052: 81c74001
    "pop cx\n"  // 2056: 59
    "loop 0x202b\n"  // 2057: e2d2
    "mov ax, cs\n"  // 2059: 8cc8
    "mov es, ax\n"  // 205b: 8ec0
    "mov ds, ax\n"  // 205d: 8ed8
    "mov di, 0x1dc4\n"  // 205f: bfc41d
    "mov cx, 0x88\n"  // 2062: b98800
    "mov al, 0xff\n"  // 2065: b0ff
    "rep stosb [es:di], al\n"  // 2067: f3aa
    "mov ax, [cs:0x15b8]\n"  // 2069: 2ea1b815
    "add ax, 0x7\n"  // 206d: 050700
    "mov cl, 0x3\n"  // 2070: b103
    "shr ax, cl\n"  // 2072: d3e8
    "mov [bp - 0x2], ax\n"  // 2074: 8946fe
    "cmp [cs:0x1e68], 0x0\n"  // 2077: 2e803e681e00
    "je 0x20f1\n"  // 207d: 7472
    "mov ax, [bp - 0x8]\n"  // 207f: 8b46f8
    "sub ax, [cs:0x15ae]\n"  // 2082: 2e2b06ae15
    "mov bx, [bp - 0x2]\n"  // 2087: 8b5efe
    "mul bx\n"  // 208a: f7e3
    "mov di, ax\n"  // 208c: 8bf8
    "add di, 0x1dc4\n"  // 208e: 81c7c41d
    "mov ax, [bp - 0x6]\n"  // 2092: 8b46fa
    "sub ax, [cs:0x15ac]\n"  // 2095: 2e2b06ac15
    "mov bx, 0x1e4c\n"  // 209a: bb4c1e
    "cmp ax, 0x8\n"  // 209d: 3d0800
    "jb 0x20a8\n"  // 20a0: 7206
    "sub ax, 0x8\n"  // 20a2: 2d0800
    "inc di\n"  // 20a5: 47
    "jmp 0x209d\n"  // 20a6: ebf5
    "mov cx, ax\n"  // 20a8: 8bc8
    "mov ah, 0xff\n"  // 20aa: b4ff
    "shr ah, cl\n"  // 20ac: d2ec
    "mov dx, [bp - 0xe]\n"  // 20ae: 8b56f2
    "add dx, cx\n"  // 20b1: 03d1
    "cmp dx, 0x8\n"  // 20b3: 83fa08
    "jb 0x20c6\n"  // 20b6: 720e
    "not ah\n"  // 20b8: f6d4
    "mov [bx], ah\n"  // 20ba: 8827
    "inc bx\n"  // 20bc: 43
    "mov ah, 0xff\n"  // 20bd: b4ff
    "sub dx, 0x8\n"  // 20bf: 83ea08
    "je 0x20d6\n"  // 20c2: 7412
    "jmp 0x20b3\n"  // 20c4: ebed
    "mov al, 0xff\n"  // 20c6: b0ff
    "mov cx, 0x8\n"  // 20c8: b90800
    "sub cx, dx\n"  // 20cb: 2bca
    "shl al, cl\n"  // 20cd: d2e0
    "and ah, al\n"  // 20cf: 22e0
    "not ah\n"  // 20d1: f6d4
    "mov [bx], ah\n"  // 20d3: 8827
    "inc bx\n"  // 20d5: 43
    "sub bx, 0x1e4c\n"  // 20d6: 81eb4c1e
    "mov [bp - 0x4], bx\n"  // 20da: 895efc
    "mov cx, [bp - 0x10]\n"  // 20dd: 8b4ef0
    "push cx\n"  // 20e0: 51
    "push di\n"  // 20e1: 57
    "mov si, 0x1e4c\n"  // 20e2: be4c1e
    "mov cx, [bp - 0x4]\n"  // 20e5: 8b4efc
    "rep movsb [es:di], [si]\n"  // 20e8: f3a4
    "pop di\n"  // 20ea: 5f
    "add di, [bp - 0x2]\n"  // 20eb: 037efe
    "pop cx\n"  // 20ee: 59
    "loop 0x20e0\n"  // 20ef: e2ef
    "mov bx, 0x1dc4\n"  // 20f1: bbc41d
    "mov si, [cs:0x15b4]\n"  // 20f4: 2e8b36b415
    "mov di, [cs:0x15bc]\n"  // 20f9: 2e8b3ebc15
    "mov ax, 0xa000\n"  // 20fe: b800a0
    "mov es, ax\n"  // 2101: 8ec0
    "mov cx, [cs:0x15ba]\n"  // 2103: 2e8b0eba15
    "push cx\n"  // 2108: 51
    "push si\n"  // 2109: 56
    "push bx\n"  // 210a: 53
    "push di\n"  // 210b: 57
    "mov cx, [cs:0x15b8]\n"  // 210c: 2e8b0eb815
    "mov ah, [bx]\n"  // 2111: 8a27
    "inc bx\n"  // 2113: 43
    "mov al, 0x9\n"  // 2114: b009
    "dec al\n"  // 2116: fec8
    "je 0x2111\n"  // 2118: 74f7
    "shl ah, 0x1\n"  // 211a: d0e4
    "jae 0x2123\n"  // 211c: 7305
    "mov dl, [si]\n"  // 211e: 8a14
    "mov [es:di], dl\n"  // 2120: 268815
    "inc di\n"  // 2123: 47
    "inc si\n"  // 2124: 46
    "loop 0x2116\n"  // 2125: e2ef
    "pop di\n"  // 2127: 5f
    "add di, 0x140\n"  // 2128: 81c74001
    "pop bx\n"  // 212c: 5b
    "add bx, [bp - 0x2]\n"  // 212d: 035efe
    "pop si\n"  // 2130: 5e
    "add si, [cs:0x15b8]\n"  // 2131: 2e0336b815
    "pop cx\n"  // 2136: 59
    "loop 0x2108\n"  // 2137: e2cf
    "mov ax, [cs:0x15b4]\n"  // 2139: 2ea1b415
    "mov bx, [cs:0x15b6]\n"  // 213d: 2e8b1eb615
    "mov [cs:0x15b6], ax\n"  // 2142: 2ea3b615
    "mov [cs:0x15b4], bx\n"  // 2146: 2e891eb415
    "mov ax, [cs:0x15b0]\n"  // 214b: 2ea1b015
    "mov [cs:0x15ac], ax\n"  // 214f: 2ea3ac15
    "mov ax, [cs:0x15b2]\n"  // 2153: 2ea1b215
    "mov [cs:0x15ae], ax\n"  // 2157: 2ea3ae15
    "mov ax, [cs:0x15c0]\n"  // 215b: 2ea1c015
    "mov [cs:0x15ba], ax\n"  // 215f: 2ea3ba15
    "mov ax, [cs:0x15be]\n"  // 2163: 2ea1be15
    "mov [cs:0x15b8], ax\n"  // 2167: 2ea3b815
    "mov ax, [cs:0x15c2]\n"  // 216b: 2ea1c215
    "mov [cs:0x15bc], ax\n"  // 216f: 2ea3bc15
    "mov sp, bp\n"  // 2173: 8be5
    "pop bp\n"  // 2175: 5d
    "xor al, al\n"  // 2176: 32c0
    "mov [cs:0x1ed3], al\n"  // 2178: 2ea2d31e
    "retf \n"  // 217c: cb
        ".att_syntax");
}

/* loc_217d (0x217d-0x2185) */
void loc_217d(void)
{

    g_data_1ecd = 0x0;
}

/* loc_2185 (0x2185-0x21cd) — inline asm */
void loc_2185(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2185: 55
    "mov bp, sp\n"  // 2186: 8bec
    "sub sp, 0x8\n"  // 2188: 83ec08
    "push ds\n"  // 218b: 1e
    "push es\n"  // 218c: 06
    "push di\n"  // 218d: 57
    "push si\n"  // 218e: 56
    "mov ax, ds\n"  // 218f: 8cd8
    "mov es, ax\n"  // 2191: 8ec0
    "mov ax, [bp + 0xc]\n"  // 2193: 8b460c
    "cmp ax, 0x14\n"  // 2196: 3d1400
    "jb 0x219e\n"  // 2199: 7203
    "jmp 0x21c5\n"  // 219b: e92700
    "shl ax, 0x1\n"  // 219e: d1e0
    "mov [bp - 0x8], ax\n"  // 21a0: 8946f8
    "mov bx, 0x229\n"  // 21a3: bb2902
    "add bx, ax\n"  // 21a6: 03d8
    "mov ax, [cs:bx]\n"  // 21a8: 2e8b07
    "or ax, ax\n"  // 21ab: 0bc0
    "jne 0x21b2\n"  // 21ad: 7503
    "jmp 0x21c5\n"  // 21af: e91300
    "mov [cs:bx], 0x0\n"  // 21b2: 2ec7070000
    "mov cx, [cs:0xcaa]\n"  // 21b7: 2e8b0eaa0c
    "dec cx\n"  // 21bc: 49
    "mov [cs:0xcaa], cx\n"  // 21bd: 2e890eaa0c
    "call 0x43e1\n"  // 21c2: e81c22
    "pop si\n"  // 21c5: 5e
    "pop di\n"  // 21c6: 5f
    "pop es\n"  // 21c7: 07
    "pop ds\n"  // 21c8: 1f
    "mov sp, bp\n"  // 21c9: 8be5
    "pop bp\n"  // 21cb: 5d
    "ret \n"  // 21cc: c3
        ".att_syntax");
}

/* dos_read_file_3 (0x21cd-0x22ee) — inline asm */
void dos_read_file_3(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 21cd: 55
    "mov bp, sp\n"  // 21ce: 8bec
    "sub sp, 0x8\n"  // 21d0: 83ec08
    "push ds\n"  // 21d3: 1e
    "push es\n"  // 21d4: 06
    "push si\n"  // 21d5: 56
    "push di\n"  // 21d6: 57
    "mov ax, ds\n"  // 21d7: 8cd8
    "mov es, ax\n"  // 21d9: 8ec0
    "mov ax, [bp + 0xe]\n"  // 21db: 8b460e
    "shl ax, 0x1\n"  // 21de: d1e0
    "mov bx, 0x229\n"  // 21e0: bb2902
    "add bx, ax\n"  // 21e3: 03d8
    "mov [bp - 0x2], bx\n"  // 21e5: 895efe
    "mov ax, [cs:bx]\n"  // 21e8: 2e8b07
    "or ax, ax\n"  // 21eb: 0bc0
    "je 0x21f2\n"  // 21ed: 7403
    "jmp 0x22ac\n"  // 21ef: e9ba00
    "mov ax, [cs:0xcaa]\n"  // 21f2: 2ea1aa0c
    "inc ax\n"  // 21f6: 40
    "mov [cs:0xcaa], ax\n"  // 21f7: 2ea3aa0c
    "mov bx, [bp - 0x2]\n"  // 21fb: 8b5efe
    "mov [cs:bx], ax\n"  // 21fe: 2e8907
    "dec ax\n"  // 2201: 48
    "mov cl, 0x2\n"  // 2202: b102
    "shl ax, cl\n"  // 2204: d3e0
    "mov bx, 0xbda\n"  // 2206: bbda0b
    "add bx, ax\n"  // 2209: 03d8
    "mov [bp - 0x2], bx\n"  // 220b: 895efe
    "mov ax, [cs:0xcac]\n"  // 220e: 2ea1ac0c
    "mov [cs:bx], ax\n"  // 2212: 2e8907
    "mov ax, [cs:0x1e9]\n"  // 2215: 2ea1e901
    "mov ds, ax\n"  // 2219: 8ed8
    "xor dx, dx\n"  // 221b: 33d2
    "mov cx, 0x4\n"  // 221d: b90400
    "mov bx, [bp + 0xc]\n"  // 2220: 8b5e0c
    "mov ah, 0x3f\n"  // 2223: b43f
    "int 0x21\n"  // 2225: cd21
    "xor bx, bx\n"  // 2227: 33db
    "mov ax, [bx]\n"  // 2229: 8b07
    "mov dx, [bx + 0x2]\n"  // 222b: 8b5702
    "mov [bp - 0x4], ax\n"  // 222e: 8946fc
    "mov [bp - 0x6], dx\n"  // 2231: 8956fa
    "mov cl, 0x4\n"  // 2234: b104
    "add ax, 0xf\n"  // 2236: 050f00
    "adc dx, 0x0\n"  // 2239: 83d200
    "shr ax, cl\n"  // 223c: d3e8
    "shl dl, cl\n"  // 223e: d2e2
    "or ah, dl\n"  // 2240: 0ae2
    "add [cs:0xcac], ax\n"  // 2242: 2e0106ac0c
    "mov bx, [bp - 0x2]\n"  // 2247: 8b5efe
    "mov [cs:bx + 0x2], ax\n"  // 224a: 2e894702
    "mov ax, [cs:0xcac]\n"  // 224e: 2ea1ac0c
    "cmp ax, 0x4180\n"  // 2252: 3d8041
    "jb 0x225a\n"  // 2255: 7203
    "jmp 0x22ee\n"  // 2257: e99400
    "mov bx, [bp - 0x2]\n"  // 225a: 8b5efe
    "mov ax, [cs:bx]\n"  // 225d: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 2260: 2e0306e101
    "mov ds, ax\n"  // 2265: 8ed8
    "mov cx, [bp - 0x4]\n"  // 2267: 8b4efc
    "mov dx, [bp - 0x6]\n"  // 226a: 8b56fa
    "mov bx, cx\n"  // 226d: 8bd9
    "or bx, dx\n"  // 226f: 0bda
    "je 0x22a4\n"  // 2271: 7431
    "or dx, dx\n"  // 2273: 0bd2
    "jne 0x2282\n"  // 2275: 750b
    "cmp cx, 0x1000\n"  // 2277: 81f90010
    "jae 0x2282\n"  // 227b: 7305
    "sub [bp - 0x4], cx\n"  // 227d: 294efc
    "jmp 0x2292\n"  // 2280: eb10
    "sub cx, 0x1000\n"  // 2282: 81e90010
    "sbb dx, 0x0\n"  // 2286: 83da00
    "mov [bp - 0x4], cx\n"  // 2289: 894efc
    "mov [bp - 0x6], dx\n"  // 228c: 8956fa
    "mov cx, 0x1000\n"  // 228f: b90010
    "xor dx, dx\n"  // 2292: 33d2
    "mov bx, [bp + 0xc]\n"  // 2294: 8b5e0c
    "mov ah, 0x3f\n"  // 2297: b43f
    "int 0x21\n"  // 2299: cd21
    "mov ax, ds\n"  // 229b: 8cd8
    "add ax, 0x100\n"  // 229d: 050001
    "mov ds, ax\n"  // 22a0: 8ed8
    "jmp 0x2267\n"  // 22a2: ebc3
    "pop di\n"  // 22a4: 5f
    "pop si\n"  // 22a5: 5e
    "pop es\n"  // 22a6: 07
    "pop ds\n"  // 22a7: 1f
    "mov sp, bp\n"  // 22a8: 8be5
    "pop bp\n"  // 22aa: 5d
    "ret \n"  // 22ab: c3
        ".att_syntax");
}

/* dos_con_loc_22ee (0x22ee-0x2528) — inline asm */
void dos_con_loc_22ee(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov ax, cs\n"  // 22ee: 8cc8
        ".att_syntax");
}

/* math_loc_2528 (0x2528-0x277f) — inline asm */
void math_loc_2528(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2528: 55
    "mov bp, sp\n"  // 2529: 8bec
    "sub sp, 0x24\n"  // 252b: 83ec24
    "push ds\n"  // 252e: 1e
    "push es\n"  // 252f: 06
    "push si\n"  // 2530: 56
    "push di\n"  // 2531: 57
    "mov ax, ds\n"  // 2532: 8cd8
    "mov es, ax\n"  // 2534: 8ec0
    "call 0x1308\n"  // 2536: e8cfed
    "call 0x516\n"  // 2539: e8dadf
    "xor ax, ax\n"  // 253c: 33c0
    "mov [bp - 0x22], ax\n"  // 253e: 8946de
    "mov ax, [bp + 0xe]\n"  // 2541: 8b460e
    "mov bx, 0x140\n"  // 2544: bb4001
    "mul bx\n"  // 2547: f7e3
    "add ax, [bp + 0xc]\n"  // 2549: 03460c
    "mov [bp - 0x2], ax\n"  // 254c: 8946fe
    "mov ax, [bp + 0x10]\n"  // 254f: 8b4610
    "sub ax, [bp + 0xc]\n"  // 2552: 2b460c
    "inc ax\n"  // 2555: 40
    "mov [bp - 0x4], ax\n"  // 2556: 8946fc
    "mov ax, [bp + 0x12]\n"  // 2559: 8b4612
    "sub ax, [bp + 0xe]\n"  // 255c: 2b460e
    "inc ax\n"  // 255f: 40
    "mov [bp - 0x6], ax\n"  // 2560: 8946fa
    "mov si, [bp - 0x2]\n"  // 2563: 8b76fe
    "mov cx, [bp - 0x4]\n"  // 2566: 8b4efc
    "push cx\n"  // 2569: 51
    "les di, [cs:0x1f7]\n"  // 256a: 2ec43ef701
    "mov cl, 0x3\n"  // 256f: b103
    "mov dx, [cs:0x1e5]\n"  // 2571: 2e8b16e501
    "mov ds, dx\n"  // 2576: 8eda
    "xor ax, ax\n"  // 2578: 33c0
    "mov al, [si]\n"  // 257a: 8a04
    "mov [bp - 0x14], ax\n"  // 257c: 8946ec
    "mov bx, ax\n"  // 257f: 8bd8
    "shl ax, 0x1\n"  // 2581: d1e0
    "add bx, ax\n"  // 2583: 03d8
    "xor ax, ax\n"  // 2585: 33c0
    "mov al, [es:bx + di]\n"  // 2587: 268a01
    "shr ax, cl\n"  // 258a: d3e8
    "mov [bp - 0x8], ax\n"  // 258c: 8946f8
    "mov al, [es:bx + di + 0x1]\n"  // 258f: 268a4101
    "shr ax, cl\n"  // 2593: d3e8
    "mov [bp - 0xa], ax\n"  // 2595: 8946f6
    "mov al, [es:bx + di + 0x2]\n"  // 2598: 268a4102
    "shr ax, cl\n"  // 259c: d3e8
    "mov [bp - 0xc], ax\n"  // 259e: 8946f4
    "mov dx, 0xa000\n"  // 25a1: ba00a0
    "mov ds, dx\n"  // 25a4: 8eda
    "mov al, [si]\n"  // 25a6: 8a04
    "mov [bp - 0x24], ax\n"  // 25a8: 8946dc
    "cmp ax, [bp - 0x14]\n"  // 25ab: 3b46ec
    "jne 0x25b3\n"  // 25ae: 7503
    "jmp 0x273d\n"  // 25b0: e98a01
    "mov bx, ax\n"  // 25b3: 8bd8
    "shl ax, 0x1\n"  // 25b5: d1e0
    "add bx, ax\n"  // 25b7: 03d8
    "xor ax, ax\n"  // 25b9: 33c0
    "mov al, [es:bx + di]\n"  // 25bb: 268a01
    "shr ax, cl\n"  // 25be: d3e8
    "mov [bp - 0xe], ax\n"  // 25c0: 8946f2
    "mov al, [es:bx + di + 0x1]\n"  // 25c3: 268a4101
    "shr ax, cl\n"  // 25c7: d3e8
    "mov [bp - 0x10], ax\n"  // 25c9: 8946f0
    "mov al, [es:bx + di + 0x2]\n"  // 25cc: 268a4102
    "shr ax, cl\n"  // 25d0: d3e8
    "mov [bp - 0x12], ax\n"  // 25d2: 8946ee
    "mov ax, [bp - 0xe]\n"  // 25d5: 8b46f2
    "sub ax, [bp - 0x8]\n"  // 25d8: 2b46f8
    "jne 0x2604\n"  // 25db: 7527
    "mov [bp - 0x1c], ax\n"  // 25dd: 8946e4
    "mov [bp - 0x16], ax\n"  // 25e0: 8946ea
    "mov ax, [bp - 0x10]\n"  // 25e3: 8b46f0
    "sub ax, [bp - 0xa]\n"  // 25e6: 2b46f6
    "jne 0x2616\n"  // 25e9: 752b
    "mov [bp - 0x1e], ax\n"  // 25eb: 8946e2
    "mov [bp - 0x18], ax\n"  // 25ee: 8946e8
    "mov ax, [bp - 0x12]\n"  // 25f1: 8b46ee
    "sub ax, [bp - 0xc]\n"  // 25f4: 2b46f4
    "jne 0x2628\n"  // 25f7: 752f
    "mov ax, [bp - 0x14]\n"  // 25f9: 8b46ec
    "mov [si], al\n"  // 25fc: 8804
    "inc [bp - 0x22]\n"  // 25fe: ff46de
    "jmp 0x273d\n"  // 2601: e93901
    "mov [bp - 0x1c], ax\n"  // 2604: 8946e4
    "or ax, ax\n"  // 2607: 0bc0
    "jns 0x260d\n"  // 2609: 7902
    "neg ax\n"  // 260b: f7d8
    "mov [bp - 0x16], ax\n"  // 260d: 8946ea
    "mov ax, [bp - 0x10]\n"  // 2610: 8b46f0
    "sub ax, [bp - 0xa]\n"  // 2613: 2b46f6
    "mov [bp - 0x1e], ax\n"  // 2616: 8946e2
    "or ax, ax\n"  // 2619: 0bc0
    "jns 0x261f\n"  // 261b: 7902
    "neg ax\n"  // 261d: f7d8
    "mov [bp - 0x18], ax\n"  // 261f: 8946e8
    "mov ax, [bp - 0x12]\n"  // 2622: 8b46ee
    "sub ax, [bp - 0xc]\n"  // 2625: 2b46f4
    "mov [bp - 0x20], ax\n"  // 2628: 8946e0
    "or ax, ax\n"  // 262b: 0bc0
    "jns 0x2631\n"  // 262d: 7902
    "neg ax\n"  // 262f: f7d8
    "mov [bp - 0x1a], ax\n"  // 2631: 8946e6
    "mov ax, [bp - 0x1a]\n"  // 2634: 8b46e6
    "cmp ax, [bp - 0x18]\n"  // 2637: 3b46e8
    "jae 0x263f\n"  // 263a: 7303
    "jmp 0x26cf\n"  // 263c: e99000
    "cmp ax, [bp - 0x16]\n"  // 263f: 3b46ea
    "jb 0x268b\n"  // 2642: 7247
    "mov bx, 0xffff\n"  // 2644: bbffff
    "mov ax, [bp - 0x20]\n"  // 2647: 8b46e0
    "or ax, ax\n"  // 264a: 0bc0
    "jns 0x2650\n"  // 264c: 7902
    "neg bx\n"  // 264e: f7db
    "add [bp - 0x12], bx\n"  // 2650: 015eee
    "mov bx, 0xffff\n"  // 2653: bbffff
    "mov ax, [bp - 0x16]\n"  // 2656: 8b46ea
    "shl ax, 0x1\n"  // 2659: d1e0
    "cmp ax, [bp - 0x1a]\n"  // 265b: 3b46e6
    "jb 0x266c\n"  // 265e: 720c
    "mov ax, [bp - 0x1c]\n"  // 2660: 8b46e4
    "or ax, ax\n"  // 2663: 0bc0
    "jns 0x2669\n"  // 2665: 7902
    "neg bx\n"  // 2667: f7db
    "add [bp - 0xe], bx\n"  // 2669: 015ef2
    "mov bx, 0xffff\n"  // 266c: bbffff
    "mov ax, [bp - 0x18]\n"  // 266f: 8b46e8
    "shl ax, 0x1\n"  // 2672: d1e0
    "cmp ax, [bp - 0x1a]\n"  // 2674: 3b46e6
    "jb 0x2688\n"  // 2677: 720f
    "mov bx, 0xffff\n"  // 2679: bbffff
    "mov ax, [bp - 0x1e]\n"  // 267c: 8b46e2
    "or ax, ax\n"  // 267f: 0bc0
    "jns 0x2685\n"  // 2681: 7902
    "neg bx\n"  // 2683: f7db
    "add [bp - 0x10], bx\n"  // 2685: 015ef0
    "jmp 0x271a\n"  // 2688: e98f00
    "mov bx, 0xffff\n"  // 268b: bbffff
    "mov ax, [bp - 0x1c]\n"  // 268e: 8b46e4
    "or ax, ax\n"  // 2691: 0bc0
    "jns 0x2697\n"  // 2693: 7902
    "neg bx\n"  // 2695: f7db
    "add [bp - 0xe], bx\n"  // 2697: 015ef2
    "mov bx, 0xffff\n"  // 269a: bbffff
    "mov ax, [bp - 0x1a]\n"  // 269d: 8b46e6
    "shl ax, 0x1\n"  // 26a0: d1e0
    "cmp ax, [bp - 0x16]\n"  // 26a2: 3b46ea
    "jb 0x26b3\n"  // 26a5: 720c
    "mov ax, [bp - 0x20]\n"  // 26a7: 8b46e0
    "or ax, ax\n"  // 26aa: 0bc0
    "jns 0x26b0\n"  // 26ac: 7902
    "neg bx\n"  // 26ae: f7db
    "add [bp - 0x12], bx\n"  // 26b0: 015eee
    "mov bx, 0xffff\n"  // 26b3: bbffff
    "mov ax, [bp - 0x18]\n"  // 26b6: 8b46e8
    "shl ax, 0x1\n"  // 26b9: d1e0
    "cmp ax, [bp - 0x16]\n"  // 26bb: 3b46ea
    "jb 0x26cc\n"  // 26be: 720c
    "mov ax, [bp - 0x1e]\n"  // 26c0: 8b46e2
    "or ax, ax\n"  // 26c3: 0bc0
    "jns 0x26c9\n"  // 26c5: 7902
    "neg bx\n"  // 26c7: f7db
    "add [bp - 0x10], bx\n"  // 26c9: 015ef0
    "jmp 0x271a\n"  // 26cc: e94b00
    "mov ax, [bp - 0x16]\n"  // 26cf: 8b46ea
    "cmp ax, [bp - 0x18]\n"  // 26d2: 3b46e8
    "jb 0x26d9\n"  // 26d5: 7202
    "jmp 0x268b\n"  // 26d7: ebb2
    "mov bx, 0xffff\n"  // 26d9: bbffff
    "mov ax, [bp - 0x1e]\n"  // 26dc: 8b46e2
    "or ax, ax\n"  // 26df: 0bc0
    "jns 0x26e5\n"  // 26e1: 7902
    "neg bx\n"  // 26e3: f7db
    "add [bp - 0x10], bx\n"  // 26e5: 015ef0
    "mov bx, 0xffff\n"  // 26e8: bbffff
    "mov ax, [bp - 0x1a]\n"  // 26eb: 8b46e6
    "shl ax, 0x1\n"  // 26ee: d1e0
    "cmp ax, [bp - 0x18]\n"  // 26f0: 3b46e8
    "jb 0x2701\n"  // 26f3: 720c
    "mov ax, [bp - 0x20]\n"  // 26f5: 8b46e0
    "or ax, ax\n"  // 26f8: 0bc0
    "jns 0x26fe\n"  // 26fa: 7902
    "neg bx\n"  // 26fc: f7db
    "add [bp - 0x12], bx\n"  // 26fe: 015eee
    "mov bx, 0xffff\n"  // 2701: bbffff
    "mov ax, [bp - 0x16]\n"  // 2704: 8b46ea
    "shl ax, 0x1\n"  // 2707: d1e0
    "cmp ax, [bp - 0x18]\n"  // 2709: 3b46e8
    "jb 0x271a\n"  // 270c: 720c
    "mov ax, [bp - 0x1c]\n"  // 270e: 8b46e4
    "or ax, ax\n"  // 2711: 0bc0
    "jns 0x2717\n"  // 2713: 7902
    "neg bx\n"  // 2715: f7db
    "add [bp - 0xe], bx\n"  // 2717: 015ef2
    "mov bx, [bp - 0xe]\n"  // 271a: 8b5ef2
    "mov cl, 0x6\n"  // 271d: b106
    "shl bx, cl\n"  // 271f: d3e3
    "mov ax, [bp - 0x10]\n"  // 2721: 8b46f0
    "mov cl, 0x3\n"  // 2724: b103
    "shl ax, cl\n"  // 2726: d3e0
    "add bx, ax\n"  // 2728: 03d8
    "add bx, [bp - 0x12]\n"  // 272a: 035eee
    "add bx, 0x2427\n"  // 272d: 81c32724
    "mov al, [cs:bx]\n"  // 2731: 2e8a07
    "cmp al, 0xff\n"  // 2734: 3cff
    "je 0x2754\n"  // 2736: 741c
    "mov [si], al\n"  // 2738: 8804
    "inc [bp - 0x22]\n"  // 273a: ff46de
    "inc si\n"  // 273d: 46
    "pop cx\n"  // 273e: 59
    "loop 0x2751\n"  // 273f: e210
    "add [bp - 0x2], 0x140\n"  // 2741: 8146fe4001
    "mov si, [bp - 0x2]\n"  // 2746: 8b76fe
    "dec [bp - 0x6]\n"  // 2749: ff4efa
    "je 0x2757\n"  // 274c: 7409
    "jmp 0x2566\n"  // 274e: e915fe
    "jmp 0x2569\n"  // 2751: e915fe
    "jmp 0x25d5\n"  // 2754: e97efe
    "mov ax, [bp - 0x22]\n"  // 2757: 8b46de
    "or ax, ax\n"  // 275a: 0bc0
    "je 0x2771\n"  // 275c: 7413
    "mov ax, [bp + 0x14]\n"  // 275e: 8b4614
    "or ax, ax\n"  // 2761: 0bc0
    "je 0x276e\n"  // 2763: 7409
    "push [bp + 0x14]\n"  // 2765: ff7614
    "lcall [cs:0x1fb]\n"  // 2768: 2eff1efb01
    "pop ax\n"  // 276d: 58
    "jmp 0x253c\n"  // 276e: e9cbfd
    "call 0x67f\n"  // 2771: e80bdf
    "call 0x12c9\n"  // 2774: e852eb
    "pop di\n"  // 2777: 5f
    "pop si\n"  // 2778: 5e
    "pop es\n"  // 2779: 07
    "pop ds\n"  // 277a: 1f
    "mov sp, bp\n"  // 277b: 8be5
    "pop bp\n"  // 277d: 5d
    "ret \n"  // 277e: c3
        ".att_syntax");
}

/* bios_video_loc_277f (0x277f-0x27d0) — inline asm */
void bios_video_loc_277f(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 277f: 55
    "mov bp, sp\n"  // 2780: 8bec
    "push ds\n"  // 2782: 1e
    "push es\n"  // 2783: 06
    "push si\n"  // 2784: 56
    "push di\n"  // 2785: 57
    "mov ax, ds\n"  // 2786: 8cd8
    "mov es, ax\n"  // 2788: 8ec0
    "mov ax, [bp + 0xe]\n"  // 278a: 8b460e
    "cmp ax, 0xffff\n"  // 278d: 3dffff
    "jne 0x27b3\n"  // 2790: 7521
    "les di, [cs:0x1f7]\n"  // 2792: 2ec43ef701
    "mov ax, [bp + 0xc]\n"  // 2797: 8b460c
    "mov bx, ax\n"  // 279a: 8bd8
    "shl ax, 0x1\n"  // 279c: d1e0
    "add bx, ax\n"  // 279e: 03d8
    "mov al, [es:bx + di]\n"  // 27a0: 268a01
    "mov dh, al\n"  // 27a3: 8af0
    "mov al, [es:bx + di + 0x1]\n"  // 27a5: 268a4101
    "mov ch, al\n"  // 27a9: 8ae8
    "mov al, [es:bx + di + 0x2]\n"  // 27ab: 268a4102
    "mov cl, al\n"  // 27af: 8ac8
    "jmp 0x27c0\n"  // 27b1: eb0d
    "mov cx, [bp + 0x12]\n"  // 27b3: 8b4e12
    "mov bx, [bp + 0x10]\n"  // 27b6: 8b5e10
    "mov ch, bl\n"  // 27b9: 8aeb
    "mov bx, [bp + 0xe]\n"  // 27bb: 8b5e0e
    "mov dh, bl\n"  // 27be: 8af3
    "mov bx, [bp + 0xc]\n"  // 27c0: 8b5e0c
    "mov ax, 0x1010\n"  // 27c3: b81010
    "int 0x10\n"  // 27c6: cd10
    "pop di\n"  // 27c8: 5f
    "pop si\n"  // 27c9: 5e
    "pop es\n"  // 27ca: 07
    "pop ds\n"  // 27cb: 1f
    "mov sp, bp\n"  // 27cc: 8be5
    "pop bp\n"  // 27ce: 5d
    "ret \n"  // 27cf: c3
        ".att_syntax");
}

/* bios_video_loc_27d0 (0x27d0-0x2802) — inline asm */
void bios_video_loc_27d0(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 27d0: 55
    "mov bp, sp\n"  // 27d1: 8bec
    "push ds\n"  // 27d3: 1e
    "push es\n"  // 27d4: 06
    "push si\n"  // 27d5: 56
    "push di\n"  // 27d6: 57
    "mov ax, ds\n"  // 27d7: 8cd8
    "mov es, ax\n"  // 27d9: 8ec0
    "mov bx, [bp + 0xc]\n"  // 27db: 8b5e0c
    "mov ax, 0x1015\n"  // 27de: b81510
    "int 0x10\n"  // 27e1: cd10
    "mov bx, [bp + 0xe]\n"  // 27e3: 8b5e0e
    "xor ah, ah\n"  // 27e6: 32e4
    "mov al, dh\n"  // 27e8: 8ac6
    "mov [bx], ax\n"  // 27ea: 8907
    "mov al, ch\n"  // 27ec: 8ac5
    "mov bx, [bp + 0x10]\n"  // 27ee: 8b5e10
    "mov [bx], ax\n"  // 27f1: 8907
    "mov al, cl\n"  // 27f3: 8ac1
    "mov bx, [bp + 0x12]\n"  // 27f5: 8b5e12
    "mov [bx], ax\n"  // 27f8: 8907
    "pop di\n"  // 27fa: 5f
    "pop si\n"  // 27fb: 5e
    "pop es\n"  // 27fc: 07
    "pop ds\n"  // 27fd: 1f
    "mov sp, bp\n"  // 27fe: 8be5
    "pop bp\n"  // 2800: 5d
    "ret \n"  // 2801: c3
        ".att_syntax");
}

/* dos_free_mem_2 (0x2802-0x28f0) — inline asm */
void dos_free_mem_2(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2802: 55
    "mov bp, sp\n"  // 2803: 8bec
    "sub sp, 0xa\n"  // 2805: 83ec0a
    "push ds\n"  // 2808: 1e
    "push es\n"  // 2809: 06
    "push si\n"  // 280a: 56
    "push di\n"  // 280b: 57
    "mov ax, ds\n"  // 280c: 8cd8
    "mov es, ax\n"  // 280e: 8ec0
    "mov ah, 0x48\n"  // 2810: b448
    "mov bx, 0x30\n"  // 2812: bb3000
    "int 0x21\n"  // 2815: cd21
    "jae 0x281c\n"  // 2817: 7303
    "jmp 0x28ba\n"  // 2819: e99e00
    "mov [bp - 0x2], ax\n"  // 281c: 8946fe
    "mov ax, 0x1017\n"  // 281f: b81710
    "xor bx, bx\n"  // 2822: 33db
    "mov cx, 0x100\n"  // 2824: b90001
    "mov dx, [bp - 0x2]\n"  // 2827: 8b56fe
    "mov es, dx\n"  // 282a: 8ec2
    "xor dx, dx\n"  // 282c: 33d2
    "int 0x10\n"  // 282e: cd10
    "mov ax, [bp - 0x2]\n"  // 2830: 8b46fe
    "mov ds, ax\n"  // 2833: 8ed8
    "mov [bp - 0x4], 0x0\n"  // 2835: c746fc0000
    "mov ax, [bp - 0x2]\n"  // 283a: 8b46fe
    "mov ds, ax\n"  // 283d: 8ed8
    "xor si, si\n"  // 283f: 33f6
    "les di, [cs:0x1f7]\n"  // 2841: 2ec43ef701
    "mov cx, 0x100\n"  // 2846: b90001
    "push cx\n"  // 2849: 51
    "mov cx, 0x3\n"  // 284a: b90300
    "mov al, [si]\n"  // 284d: 8a04
    "cmp al, [es:di]\n"  // 284f: 263a05
    "je 0x2864\n"  // 2852: 7410
    "mov [bp - 0x4], 0x1\n"  // 2854: c746fc0100
    "cmp al, [es:di]\n"  // 2859: 263a05
    "jb 0x2862\n"  // 285c: 7204
    "dec [si]\n"  // 285e: fe0c
    "jmp 0x2864\n"  // 2860: eb02
    "inc [si]\n"  // 2862: fe04
    "inc si\n"  // 2864: 46
    "inc di\n"  // 2865: 47
    "loop 0x284d\n"  // 2866: e2e5
    "pop cx\n"  // 2868: 59
    "loop 0x2849\n"  // 2869: e2de
    "mov ax, [bp - 0x4]\n"  // 286b: 8b46fc
    "or ax, ax\n"  // 286e: 0bc0
    "je 0x28a9\n"  // 2870: 7437
    "mov ax, [bp - 0x2]\n"  // 2872: 8b46fe
    "mov ds, ax\n"  // 2875: 8ed8
    "xor si, si\n"  // 2877: 33f6
    "mov cx, 0x300\n"  // 2879: b90003
    "mov dx, 0x3c8\n"  // 287c: bac803
    "mov al, 0x0\n"  // 287f: b000
    "out dx, al\n"  // 2881: ee
    "mov dx, 0x3da\n"  // 2882: bada03
    "in al, dx\n"  // 2885: ec
    "test al, 0x1\n"  // 2886: a801
    "jne 0x2882\n"  // 2888: 75f8
    "mov dx, 0x3da\n"  // 288a: bada03
    "in al, dx\n"  // 288d: ec
    "test al, 0x1\n"  // 288e: a801
    "je 0x288a\n"  // 2890: 74f8
    "lodsb al, [si]\n"  // 2892: ac
    "mov dx, 0x3c9\n"  // 2893: bac903
    "out dx, al\n"  // 2896: ee
    "loop 0x2882\n"  // 2897: e2e9
    "mov ax, [bp + 0xc]\n"  // 2899: 8b460c
    "or ax, ax\n"  // 289c: 0bc0
    "je 0x28a7\n"  // 289e: 7407
    "push ax\n"  // 28a0: 50
    "lcall [cs:0x1fb]\n"  // 28a1: 2eff1efb01
    "pop ax\n"  // 28a6: 58
    "jmp 0x2835\n"  // 28a7: eb8c
    "mov bx, [bp - 0x2]\n"  // 28a9: 8b5efe
    "mov es, bx\n"  // 28ac: 8ec3
    "mov ah, 0x49\n"  // 28ae: b449
    "int 0x21\n"  // 28b0: cd21
    "pop di\n"  // 28b2: 5f
    "pop si\n"  // 28b3: 5e
    "pop es\n"  // 28b4: 07
    "pop ds\n"  // 28b5: 1f
    "mov sp, bp\n"  // 28b6: 8be5
    "pop bp\n"  // 28b8: 5d
    "ret \n"  // 28b9: c3
        ".att_syntax");
}

/* dos_free_mem_3 (0x28f0-0x29f6) — inline asm */
void dos_free_mem_3(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 28f0: 55
    "mov bp, sp\n"  // 28f1: 8bec
    "sub sp, 0xa\n"  // 28f3: 83ec0a
    "push ds\n"  // 28f6: 1e
    "push es\n"  // 28f7: 06
    "push si\n"  // 28f8: 56
    "push di\n"  // 28f9: 57
    "mov ax, ds\n"  // 28fa: 8cd8
    "mov es, ax\n"  // 28fc: 8ec0
    "lea di, [bp - 0xa]\n"  // 28fe: 8d7ef6
    "mov ax, [bp + 0xc]\n"  // 2901: 8b460c
    "mov [ss:di], ax\n"  // 2904: 368905
    "add di, 0x2\n"  // 2907: 83c702
    "mov ax, [bp + 0xe]\n"  // 290a: 8b460e
    "mov [ss:di], ax\n"  // 290d: 368905
    "add di, 0x2\n"  // 2910: 83c702
    "mov ax, [bp + 0x10]\n"  // 2913: 8b4610
    "mov [ss:di], ax\n"  // 2916: 368905
    "mov ah, 0x48\n"  // 2919: b448
    "mov bx, 0x30\n"  // 291b: bb3000
    "int 0x21\n"  // 291e: cd21
    "jae 0x2925\n"  // 2920: 7303
    "jmp 0x29bf\n"  // 2922: e99a00
    "mov [bp - 0x2], ax\n"  // 2925: 8946fe
    "mov ax, 0x1017\n"  // 2928: b81710
    "xor bx, bx\n"  // 292b: 33db
    "mov cx, 0x100\n"  // 292d: b90001
    "mov dx, [bp - 0x2]\n"  // 2930: 8b56fe
    "mov es, dx\n"  // 2933: 8ec2
    "xor dx, dx\n"  // 2935: 33d2
    "int 0x10\n"  // 2937: cd10
    "mov [bp - 0x4], 0x0\n"  // 2939: c746fc0000
    "mov ax, [bp - 0x2]\n"  // 293e: 8b46fe
    "mov ds, ax\n"  // 2941: 8ed8
    "xor si, si\n"  // 2943: 33f6
    "mov cx, 0x100\n"  // 2945: b90001
    "push cx\n"  // 2948: 51
    "mov cx, 0x3\n"  // 2949: b90300
    "lea di, [bp - 0xa]\n"  // 294c: 8d7ef6
    "xor ax, ax\n"  // 294f: 33c0
    "mov al, [si]\n"  // 2951: 8a04
    "cmp ax, [ss:di]\n"  // 2953: 363b05
    "je 0x2968\n"  // 2956: 7410
    "mov [bp - 0x4], 0x1\n"  // 2958: c746fc0100
    "cmp ax, [ss:di]\n"  // 295d: 363b05
    "jb 0x2966\n"  // 2960: 7204
    "dec [si]\n"  // 2962: fe0c
    "jmp 0x2968\n"  // 2964: eb02
    "inc [si]\n"  // 2966: fe04
    "inc di\n"  // 2968: 47
    "inc di\n"  // 2969: 47
    "inc si\n"  // 296a: 46
    "loop 0x294f\n"  // 296b: e2e2
    "pop cx\n"  // 296d: 59
    "loop 0x2948\n"  // 296e: e2d8
    "mov ax, [bp - 0x4]\n"  // 2970: 8b46fc
    "or ax, ax\n"  // 2973: 0bc0
    "je 0x29ae\n"  // 2975: 7437
    "mov ax, [bp - 0x2]\n"  // 2977: 8b46fe
    "mov ds, ax\n"  // 297a: 8ed8
    "xor si, si\n"  // 297c: 33f6
    "mov cx, 0x300\n"  // 297e: b90003
    "mov dx, 0x3c8\n"  // 2981: bac803
    "mov al, 0x0\n"  // 2984: b000
    "out dx, al\n"  // 2986: ee
    "mov dx, 0x3da\n"  // 2987: bada03
    "in al, dx\n"  // 298a: ec
    "test al, 0x1\n"  // 298b: a801
    "jne 0x2987\n"  // 298d: 75f8
    "mov dx, 0x3da\n"  // 298f: bada03
    "in al, dx\n"  // 2992: ec
    "test al, 0x1\n"  // 2993: a801
    "je 0x298f\n"  // 2995: 74f8
    "lodsb al, [si]\n"  // 2997: ac
    "mov dx, 0x3c9\n"  // 2998: bac903
    "out dx, al\n"  // 299b: ee
    "loop 0x2987\n"  // 299c: e2e9
    "mov ax, [bp + 0x12]\n"  // 299e: 8b4612
    "or ax, ax\n"  // 29a1: 0bc0
    "je 0x2939\n"  // 29a3: 7494
    "push ax\n"  // 29a5: 50
    "lcall [cs:0x1fb]\n"  // 29a6: 2eff1efb01
    "pop ax\n"  // 29ab: 58
    "jmp 0x2939\n"  // 29ac: eb8b
    "mov bx, [bp - 0x2]\n"  // 29ae: 8b5efe
    "mov es, bx\n"  // 29b1: 8ec3
    "mov ah, 0x49\n"  // 29b3: b449
    "int 0x21\n"  // 29b5: cd21
    "pop di\n"  // 29b7: 5f
    "pop si\n"  // 29b8: 5e
    "pop es\n"  // 29b9: 07
    "pop ds\n"  // 29ba: 1f
    "mov sp, bp\n"  // 29bb: 8be5
    "pop bp\n"  // 29bd: 5d
    "ret \n"  // 29be: c3
        ".att_syntax");
}

/* dos_free_mem_4 (0x29f6-0x2acf) — inline asm */
void dos_free_mem_4(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 29f6: 55
    "mov bp, sp\n"  // 29f7: 8bec
    "sub sp, 0xa\n"  // 29f9: 83ec0a
    "push ds\n"  // 29fc: 1e
    "push es\n"  // 29fd: 06
    "push si\n"  // 29fe: 56
    "push di\n"  // 29ff: 57
    "mov ax, ds\n"  // 2a00: 8cd8
    "mov es, ax\n"  // 2a02: 8ec0
    "mov ax, [bp + 0xc]\n"  // 2a04: 8b460c
    "cmp ax, 0xffff\n"  // 2a07: 3dffff
    "jne 0x2a33\n"  // 2a0a: 7527
    "lds si, [cs:0x1f7]\n"  // 2a0c: 2ec536f701
    "mov cx, 0x300\n"  // 2a11: b90003
    "mov dx, 0x3c8\n"  // 2a14: bac803
    "mov al, 0x0\n"  // 2a17: b000
    "out dx, al\n"  // 2a19: ee
    "mov dx, 0x3da\n"  // 2a1a: bada03
    "in al, dx\n"  // 2a1d: ec
    "test al, 0x1\n"  // 2a1e: a801
    "jne 0x2a1a\n"  // 2a20: 75f8
    "mov dx, 0x3da\n"  // 2a22: bada03
    "in al, dx\n"  // 2a25: ec
    "test al, 0x1\n"  // 2a26: a801
    "je 0x2a22\n"  // 2a28: 74f8
    "lodsb al, [si]\n"  // 2a2a: ac
    "mov dx, 0x3c9\n"  // 2a2b: bac903
    "out dx, al\n"  // 2a2e: ee
    "loop 0x2a1a\n"  // 2a2f: e2e9
    "jmp 0x2a8f\n"  // 2a31: eb5c
    "mov ah, 0x48\n"  // 2a33: b448
    "mov bx, 0x30\n"  // 2a35: bb3000
    "int 0x21\n"  // 2a38: cd21
    "jae 0x2a3f\n"  // 2a3a: 7303
    "jmp 0x2a97\n"  // 2a3c: e95800
    "mov [bp - 0x2], ax\n"  // 2a3f: 8946fe
    "mov ds, ax\n"  // 2a42: 8ed8
    "xor di, di\n"  // 2a44: 33ff
    "mov ax, [bp + 0xc]\n"  // 2a46: 8b460c
    "mov bx, [bp + 0xe]\n"  // 2a49: 8b5e0e
    "mov dx, [bp + 0x10]\n"  // 2a4c: 8b5610
    "mov cx, 0x100\n"  // 2a4f: b90001
    "mov [di], al\n"  // 2a52: 8805
    "mov [di + 0x1], bl\n"  // 2a54: 885d01
    "mov [di + 0x2], dl\n"  // 2a57: 885502
    "add di, 0x3\n"  // 2a5a: 83c703
    "loop 0x2a52\n"  // 2a5d: e2f3
    "mov ax, [bp - 0x2]\n"  // 2a5f: 8b46fe
    "mov ds, ax\n"  // 2a62: 8ed8
    "xor si, si\n"  // 2a64: 33f6
    "mov cx, 0x300\n"  // 2a66: b90003
    "mov dx, 0x3c8\n"  // 2a69: bac803
    "mov al, 0x0\n"  // 2a6c: b000
    "out dx, al\n"  // 2a6e: ee
    "mov dx, 0x3da\n"  // 2a6f: bada03
    "in al, dx\n"  // 2a72: ec
    "test al, 0x1\n"  // 2a73: a801
    "jne 0x2a6f\n"  // 2a75: 75f8
    "mov dx, 0x3da\n"  // 2a77: bada03
    "in al, dx\n"  // 2a7a: ec
    "test al, 0x1\n"  // 2a7b: a801
    "je 0x2a77\n"  // 2a7d: 74f8
    "lodsb al, [si]\n"  // 2a7f: ac
    "mov dx, 0x3c9\n"  // 2a80: bac903
    "out dx, al\n"  // 2a83: ee
    "loop 0x2a6f\n"  // 2a84: e2e9
    "mov bx, [bp - 0x2]\n"  // 2a86: 8b5efe
    "mov es, bx\n"  // 2a89: 8ec3
    "mov ah, 0x49\n"  // 2a8b: b449
    "int 0x21\n"  // 2a8d: cd21
    "pop di\n"  // 2a8f: 5f
    "pop si\n"  // 2a90: 5e
    "pop es\n"  // 2a91: 07
    "pop ds\n"  // 2a92: 1f
    "mov sp, bp\n"  // 2a93: 8be5
    "pop bp\n"  // 2a95: 5d
    "ret \n"  // 2a96: c3
        ".att_syntax");
}

/* dos_mem_loc_2acf (0x2acf-0x2b01) — inline asm */
void dos_mem_loc_2acf(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2acf: 55
    "mov bp, sp\n"  // 2ad0: 8bec
    "sub sp, 0x8\n"  // 2ad2: 83ec08
    "push ds\n"  // 2ad5: 1e
    "push es\n"  // 2ad6: 06
    "push di\n"  // 2ad7: 57
    "push si\n"  // 2ad8: 56
    "mov ax, ds\n"  // 2ad9: 8cd8
    "mov es, ax\n"  // 2adb: 8ec0
    "les di, [cs:0x1f7]\n"  // 2add: 2ec43ef701
    "mov si, [bp + 0xc]\n"  // 2ae2: 8b760c
    "mov cx, 0x300\n"  // 2ae5: b90003
    "rep movsb [es:di], [si]\n"  // 2ae8: f3a4
    "mov ax, cs\n"  // 2aea: 8cc8
    "mov es, ax\n"  // 2aec: 8ec0
    "mov di, 0x2427\n"  // 2aee: bf2724
    "mov si, [bp + 0xe]\n"  // 2af1: 8b760e
    "mov cx, 0x200\n"  // 2af4: b90002
    "rep movsb [es:di], [si]\n"  // 2af7: f3a4
    "pop si\n"  // 2af9: 5e
    "pop di\n"  // 2afa: 5f
    "pop es\n"  // 2afb: 07
    "pop ds\n"  // 2afc: 1f
    "mov sp, bp\n"  // 2afd: 8be5
    "pop bp\n"  // 2aff: 5d
    "ret \n"  // 2b00: c3
        ".att_syntax");
}

/* dos_mem_loc_2b01 (0x2b01-0x2b6c) — inline asm */
void dos_mem_loc_2b01(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2b01: 55
    "mov bp, sp\n"  // 2b02: 8bec
    "sub sp, 0xa\n"  // 2b04: 83ec0a
    "push ds\n"  // 2b07: 1e
    "push es\n"  // 2b08: 06
    "push si\n"  // 2b09: 56
    "push di\n"  // 2b0a: 57
    "mov ax, ds\n"  // 2b0b: 8cd8
    "mov es, ax\n"  // 2b0d: 8ec0
    "cmp [bp + 0xc], 0x0\n"  // 2b0f: 837e0c00
    "je 0x2b48\n"  // 2b13: 7433
    "cmp [bp + 0xc], 0x1\n"  // 2b15: 837e0c01
    "je 0x2b56\n"  // 2b19: 743b
    "cmp [bp + 0xc], 0x3\n"  // 2b1b: 837e0c03
    "je 0x2b30\n"  // 2b1f: 740f
    "mov ax, 0x4180\n"  // 2b21: b88041
    "sub ax, [cs:0xcac]\n"  // 2b24: 2e2b06ac0c
    "mov bx, 0x10\n"  // 2b29: bb1000
    "mul bx\n"  // 2b2c: f7e3
    "jmp 0x2b64\n"  // 2b2e: eb34
    "mov ah, 0x36\n"  // 2b30: b436
    "mov dx, [bp + 0xe]\n"  // 2b32: 8b560e
    "int 0x21\n"  // 2b35: cd21
    "cmp ax, 0xffff\n"  // 2b37: 3dffff
    "jne 0x2b42\n"  // 2b3a: 7506
    "xor ax, ax\n"  // 2b3c: 33c0
    "xor dx, dx\n"  // 2b3e: 33d2
    "jmp 0x2b64\n"  // 2b40: eb22
    "mul cx\n"  // 2b42: f7e1
    "mul bx\n"  // 2b44: f7e3
    "jmp 0x2b64\n"  // 2b46: eb1c
    "mov ah, 0x48\n"  // 2b48: b448
    "mov bx, 0xffff\n"  // 2b4a: bbffff
    "int 0x21\n"  // 2b4d: cd21
    "mov ax, 0x10\n"  // 2b4f: b81000
    "mul bx\n"  // 2b52: f7e3
    "jmp 0x2b64\n"  // 2b54: eb0e
    "mov ax, [cs:0x1ff]\n"  // 2b56: 2ea1ff01
    "sub ax, [cs:0x391]\n"  // 2b5a: 2e2b069103
    "mov bx, 0x10\n"  // 2b5f: bb1000
    "mul bx\n"  // 2b62: f7e3
    "pop di\n"  // 2b64: 5f
    "pop si\n"  // 2b65: 5e
    "pop es\n"  // 2b66: 07
    "pop ds\n"  // 2b67: 1f
    "mov sp, bp\n"  // 2b68: 8be5
    "pop bp\n"  // 2b6a: 5d
    "ret \n"  // 2b6b: c3
        ".att_syntax");
}

/* mouse_set_pos_2 (0x2b6c-0x2c0e) — inline asm */
void mouse_set_pos_2(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2b6c: 55
    "mov bp, sp\n"  // 2b6d: 8bec
    "sub sp, 0xa\n"  // 2b6f: 83ec0a
    "push ds\n"  // 2b72: 1e
    "push es\n"  // 2b73: 06
    "push si\n"  // 2b74: 56
    "push di\n"  // 2b75: 57
    "mov ax, ds\n"  // 2b76: 8cd8
    "mov es, ax\n"  // 2b78: 8ec0
    "cmp [cs:0x228], 0x1\n"  // 2b7a: 2e803e280201
    "je 0x2b85\n"  // 2b80: 7403
    "jmp 0x2c06\n"  // 2b82: e98100
    "mov [cs:0x226], 0x1\n"  // 2b85: 2ec606260201
    "mov ax, [bp + 0xc]\n"  // 2b8b: 8b460c
    "shl ax, 0x1\n"  // 2b8e: d1e0
    "mov [bp - 0x2], ax\n"  // 2b90: 8946fe
    "mov ax, [bp + 0xe]\n"  // 2b93: 8b460e
    "mov [bp - 0x4], ax\n"  // 2b96: 8946fc
    "mov ax, 0x3\n"  // 2b99: b80300
    "int 0x33\n"  // 2b9c: cd33
    "and cx, 0xfffe\n"  // 2b9e: 81e1feff
    "mov [bp - 0x6], cx\n"  // 2ba2: 894efa
    "mov [bp - 0x8], dx\n"  // 2ba5: 8956f8
    "mov cx, [bp - 0x6]\n"  // 2ba8: 8b4efa
    "mov dx, [bp - 0x8]\n"  // 2bab: 8b56f8
    "cmp cx, [bp - 0x2]\n"  // 2bae: 3b4efe
    "jne 0x2bba\n"  // 2bb1: 7507
    "cmp dx, [bp - 0x4]\n"  // 2bb3: 3b56fc
    "jne 0x2bba\n"  // 2bb6: 7502
    "jmp 0x2c06\n"  // 2bb8: eb4c
    "cmp cx, [bp - 0x2]\n"  // 2bba: 3b4efe
    "je 0x2bcb\n"  // 2bbd: 740c
    "js 0x2bc7\n"  // 2bbf: 7806
    "sub [bp - 0x6], 0x2\n"  // 2bc1: 836efa02
    "jmp 0x2bcb\n"  // 2bc5: eb04
    "add [bp - 0x6], 0x2\n"  // 2bc7: 8346fa02
    "mov cx, [bp - 0x6]\n"  // 2bcb: 8b4efa
    "cmp dx, [bp - 0x4]\n"  // 2bce: 3b56fc
    "je 0x2bdf\n"  // 2bd1: 740c
    "js 0x2bdb\n"  // 2bd3: 7806
    "sub [bp - 0x8], 0x1\n"  // 2bd5: 836ef801
    "jmp 0x2bdf\n"  // 2bd9: eb04
    "add [bp - 0x8], 0x1\n"  // 2bdb: 8346f801
    "mov dx, [bp - 0x8]\n"  // 2bdf: 8b56f8
    "mov ax, cs\n"  // 2be2: 8cc8
    "push ax\n"  // 2be4: 50
    "mov ax, 0x0\n"  // 2be5: b80000
    "call 0x1e1a\n"  // 2be8: e82ff2
    "mov cx, [bp - 0x6]\n"  // 2beb: 8b4efa
    "mov dx, [bp - 0x8]\n"  // 2bee: 8b56f8
    "mov ax, 0x4\n"  // 2bf1: b80400
    "int 0x33\n"  // 2bf4: cd33
    "mov ax, [bp + 0x10]\n"  // 2bf6: 8b4610
    "or ax, ax\n"  // 2bf9: 0bc0
    "je 0x2ba8\n"  // 2bfb: 74ab
    "push ax\n"  // 2bfd: 50
    "lcall [cs:0x1fb]\n"  // 2bfe: 2eff1efb01
    "pop ax\n"  // 2c03: 58
    "jmp 0x2ba8\n"  // 2c04: eba2
    "pop di\n"  // 2c06: 5f
    "pop si\n"  // 2c07: 5e
    "pop es\n"  // 2c08: 07
    "pop ds\n"  // 2c09: 1f
    "mov sp, bp\n"  // 2c0a: 8be5
    "pop bp\n"  // 2c0c: 5d
    "ret \n"  // 2c0d: c3
        ".att_syntax");
}

/* mouse_set_pos_3 (0x2c0e-0x2cbe) — inline asm */
void mouse_set_pos_3(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2c0e: 55
    "mov bp, sp\n"  // 2c0f: 8bec
    "sub sp, 0xa\n"  // 2c11: 83ec0a
    "push ds\n"  // 2c14: 1e
    "push es\n"  // 2c15: 06
    "push si\n"  // 2c16: 56
    "push di\n"  // 2c17: 57
    "mov ax, ds\n"  // 2c18: 8cd8
    "mov es, ax\n"  // 2c1a: 8ec0
    "cmp [cs:0x228], 0x1\n"  // 2c1c: 2e803e280201
    "je 0x2c27\n"  // 2c22: 7403
    "jmp 0x2cb6\n"  // 2c24: e98f00
    "mov ax, [bp + 0xc]\n"  // 2c27: 8b460c
    "shl ax, 0x1\n"  // 2c2a: d1e0
    "mov [bp - 0x2], ax\n"  // 2c2c: 8946fe
    "mov ax, [bp + 0xe]\n"  // 2c2f: 8b460e
    "mov [bp - 0x4], ax\n"  // 2c32: 8946fc
    "mov cx, [cs:0x15ac]\n"  // 2c35: 2e8b0eac15
    "shl cx, 0x1\n"  // 2c3a: d1e1
    "mov dx, [cs:0x15ae]\n"  // 2c3c: 2e8b16ae15
    "mov [bp - 0x6], cx\n"  // 2c41: 894efa
    "mov [bp - 0x8], dx\n"  // 2c44: 8956f8
    "mov cx, [bp - 0x6]\n"  // 2c47: 8b4efa
    "mov dx, [bp - 0x8]\n"  // 2c4a: 8b56f8
    "cmp cx, [bp - 0x2]\n"  // 2c4d: 3b4efe
    "jne 0x2c59\n"  // 2c50: 7507
    "cmp dx, [bp - 0x4]\n"  // 2c52: 3b56fc
    "jne 0x2c59\n"  // 2c55: 7502
    "jmp 0x2ca5\n"  // 2c57: eb4c
    "cmp cx, [bp - 0x2]\n"  // 2c59: 3b4efe
    "je 0x2c6a\n"  // 2c5c: 740c
    "js 0x2c66\n"  // 2c5e: 7806
    "sub [bp - 0x6], 0x2\n"  // 2c60: 836efa02
    "jmp 0x2c6a\n"  // 2c64: eb04
    "add [bp - 0x6], 0x2\n"  // 2c66: 8346fa02
    "mov cx, [bp - 0x6]\n"  // 2c6a: 8b4efa
    "cmp dx, [bp - 0x4]\n"  // 2c6d: 3b56fc
    "je 0x2c7e\n"  // 2c70: 740c
    "js 0x2c7a\n"  // 2c72: 7806
    "sub [bp - 0x8], 0x1\n"  // 2c74: 836ef801
    "jmp 0x2c7e\n"  // 2c78: eb04
    "add [bp - 0x8], 0x1\n"  // 2c7a: 8346f801
    "mov dx, [bp - 0x8]\n"  // 2c7e: 8b56f8
    "mov ax, cs\n"  // 2c81: 8cc8
    "push ax\n"  // 2c83: 50
    "mov ax, 0x0\n"  // 2c84: b80000
    "call 0x1e1a\n"  // 2c87: e890f1
    "mov cx, [bp - 0x6]\n"  // 2c8a: 8b4efa
    "mov dx, [bp - 0x8]\n"  // 2c8d: 8b56f8
    "mov ax, 0x4\n"  // 2c90: b80400
    "int 0x33\n"  // 2c93: cd33
    "mov ax, [bp + 0x10]\n"  // 2c95: 8b4610
    "or ax, ax\n"  // 2c98: 0bc0
    "je 0x2c47\n"  // 2c9a: 74ab
    "push ax\n"  // 2c9c: 50
    "lcall [cs:0x1fb]\n"  // 2c9d: 2eff1efb01
    "pop ax\n"  // 2ca2: 58
    "jmp 0x2c47\n"  // 2ca3: eba2
    "mov cx, [bp - 0x2]\n"  // 2ca5: 8b4efe
    "mov dx, [bp - 0x4]\n"  // 2ca8: 8b56fc
    "mov ax, 0x4\n"  // 2cab: b80400
    "int 0x33\n"  // 2cae: cd33
    "mov [cs:0x226], 0x0\n"  // 2cb0: 2ec606260200
    "pop di\n"  // 2cb6: 5f
    "pop si\n"  // 2cb7: 5e
    "pop es\n"  // 2cb8: 07
    "pop ds\n"  // 2cb9: 1f
    "mov sp, bp\n"  // 2cba: 8be5
    "pop bp\n"  // 2cbc: 5d
    "ret \n"  // 2cbd: c3
        ".att_syntax");
}

/* loc_2cbe (0x2cbe-0x2d08) — inline asm */
void loc_2cbe(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2cbe: 55
    "mov bp, sp\n"  // 2cbf: 8bec
    "sub sp, 0x8\n"  // 2cc1: 83ec08
    "push ds\n"  // 2cc4: 1e
    "push es\n"  // 2cc5: 06
    "push di\n"  // 2cc6: 57
    "push si\n"  // 2cc7: 56
    "mov ax, ds\n"  // 2cc8: 8cd8
    "mov es, ax\n"  // 2cca: 8ec0
    "mov ax, [bp + 0xc]\n"  // 2ccc: 8b460c
    "neg ax\n"  // 2ccf: f7d8
    "cmp ax, 0x5\n"  // 2cd1: 3d0500
    "jb 0x2cd9\n"  // 2cd4: 7203
    "jmp 0x2d00\n"  // 2cd6: e92700
    "shl ax, 0x1\n"  // 2cd9: d1e0
    "mov [bp - 0x8], ax\n"  // 2cdb: 8946f8
    "mov bx, 0x251\n"  // 2cde: bb5102
    "add bx, ax\n"  // 2ce1: 03d8
    "mov ax, [cs:bx]\n"  // 2ce3: 2e8b07
    "or ax, ax\n"  // 2ce6: 0bc0
    "jne 0x2ced\n"  // 2ce8: 7503
    "jmp 0x2d00\n"  // 2cea: e91300
    "mov [cs:bx], 0x0\n"  // 2ced: 2ec7070000
    "mov cx, [cs:0xcaa]\n"  // 2cf2: 2e8b0eaa0c
    "dec cx\n"  // 2cf7: 49
    "mov [cs:0xcaa], cx\n"  // 2cf8: 2e890eaa0c
    "call 0x43e1\n"  // 2cfd: e8e116
    "pop si\n"  // 2d00: 5e
    "pop di\n"  // 2d01: 5f
    "pop es\n"  // 2d02: 07
    "pop ds\n"  // 2d03: 1f
    "mov sp, bp\n"  // 2d04: 8be5
    "pop bp\n"  // 2d06: 5d
    "ret \n"  // 2d07: c3
        ".att_syntax");
}

/* io_loc_2d08 (0x2d08-0x2d6c) — inline asm */
void io_loc_2d08(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2d08: 55
    "mov bp, sp\n"  // 2d09: 8bec
    "sub sp, 0x8\n"  // 2d0b: 83ec08
    "push ds\n"  // 2d0e: 1e
    "push es\n"  // 2d0f: 06
    "push di\n"  // 2d10: 57
    "push si\n"  // 2d11: 56
    "mov ax, ds\n"  // 2d12: 8cd8
    "mov es, ax\n"  // 2d14: 8ec0
    "lds si, [cs:0x1f7]\n"  // 2d16: 2ec536f701
    "mov di, [bp + 0xc]\n"  // 2d1b: 8b7e0c
    "mov cx, 0x300\n"  // 2d1e: b90003
    "rep movsb [es:di], [si]\n"  // 2d21: f3a4
    "pop si\n"  // 2d23: 5e
    "pop di\n"  // 2d24: 5f
    "pop es\n"  // 2d25: 07
    "pop ds\n"  // 2d26: 1f
    "mov sp, bp\n"  // 2d27: 8be5
    "pop bp\n"  // 2d29: 5d
    "ret \n"  // 2d2a: c3
        ".att_syntax");
}

/* math_loc_2d6c (0x2d6c-0x3131) — inline asm */
void math_loc_2d6c(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8, u16 arg9, u16 arg10, u16 arg11, u16 arg12, u16 arg13, u16 arg14)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 2d6c: 55
    "mov bp, sp\n"  // 2d6d: 8bec
    "sub sp, 0x40\n"  // 2d6f: 83ec40
    "push ds\n"  // 2d72: 1e
    "push es\n"  // 2d73: 06
    "push si\n"  // 2d74: 56
    "push di\n"  // 2d75: 57
    "mov ax, ds\n"  // 2d76: 8cd8
    "mov es, ax\n"  // 2d78: 8ec0
    "mov ax, [bp + 0x14]\n"  // 2d7a: 8b4614
    "sub ax, [bp + 0x12]\n"  // 2d7d: 2b4612
    "jb 0x2deb\n"  // 2d80: 7269
    "mov ax, [bp + 0x18]\n"  // 2d82: 8b4618
    "sub ax, [bp + 0x16]\n"  // 2d85: 2b4616
    "jb 0x2deb\n"  // 2d88: 7261
    "mov ax, [bp + 0x10]\n"  // 2d8a: 8b4610
    "mov bx, 0x140\n"  // 2d8d: bb4001
    "mul bx\n"  // 2d90: f7e3
    "add ax, [bp + 0xe]\n"  // 2d92: 03460e
    "mov [bp - 0x6], ax\n"  // 2d95: 8946fa
    "mov ax, [bp + 0xc]\n"  // 2d98: 8b460c
    "shl ax, 0x1\n"  // 2d9b: d1e0
    "mov bx, 0x229\n"  // 2d9d: bb2902
    "add bx, ax\n"  // 2da0: 03d8
    "mov ax, [cs:bx]\n"  // 2da2: 2e8b07
    "dec ax\n"  // 2da5: 48
    "mov cl, 0x2\n"  // 2da6: b102
    "shl ax, cl\n"  // 2da8: d3e0
    "mov bx, 0xbda\n"  // 2daa: bbda0b
    "add bx, ax\n"  // 2dad: 03d8
    "mov ax, [cs:bx]\n"  // 2daf: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 2db2: 2e0306e101
    "mov [bp - 0x8], ax\n"  // 2db7: 8946f8
    "mov ds, ax\n"  // 2dba: 8ed8
    "xor bx, bx\n"  // 2dbc: 33db
    "mov ax, [bx]\n"  // 2dbe: 8b07
    "mov [bp - 0x12], ax\n"  // 2dc0: 8946ee
    "mov si, [bp + 0x1c]\n"  // 2dc3: 8b761c
    "mov bx, [bp - 0x8]\n"  // 2dc6: 8b5ef8
    "mov ds, bx\n"  // 2dc9: 8edb
    "xor ah, ah\n"  // 2dcb: 32e4
    "mov al, [ss:si]\n"  // 2dcd: 368a04
    "or al, al\n"  // 2dd0: 0ac0
    "je 0x2deb\n"  // 2dd2: 7417
    "call 0x3131\n"  // 2dd4: e85a03
    "xor ah, ah\n"  // 2dd7: 32e4
    "mov al, [bx + 0x2]\n"  // 2dd9: 8a4702
    "mov [bp - 0x2], ax\n"  // 2ddc: 8946fe
    "mov cx, ax\n"  // 2ddf: 8bc8
    "mov al, [bx + 0x3]\n"  // 2de1: 8a4703
    "mov [bp - 0x4], ax\n"  // 2de4: 8946fc
    "or ax, cx\n"  // 2de7: 0bc1
    "jne 0x2dee\n"  // 2de9: 7503
    "jmp 0x3129\n"  // 2deb: e93b03
    "mov [bp - 0x3a], bx\n"  // 2dee: 895ec6
    "mov ax, es\n"  // 2df1: 8cc0
    "mov [bp - 0x38], ax\n"  // 2df3: 8946c8
    "mov ax, cs\n"  // 2df6: 8cc8
    "mov es, ax\n"  // 2df8: 8ec0
    "lea di, [0x2e2b]\n"  // 2dfa: 8d3e2b2e
    "xor ax, ax\n"  // 2dfe: 33c0
    "mov cx, 0x14\n"  // 2e00: b91400
    "rep stosw [es:di], ax\n"  // 2e03: f3ab
    "lea di, [0x2e53]\n"  // 2e05: 8d3e532e
    "mov cx, 0x19\n"  // 2e09: b91900
    "rep stosb [es:di], al\n"  // 2e0c: f3aa
    "mov bx, [bp + 0x20]\n"  // 2e0e: 8b5e20
    "or bx, bx\n"  // 2e11: 0bdb
    "jne 0x2e18\n"  // 2e13: 7503
    "jmp 0x2e9b\n"  // 2e15: e98300
    "cmp bx, 0x64\n"  // 2e18: 83fb64
    "jae 0x2deb\n"  // 2e1b: 73ce
    "mov ax, [bp - 0x2]\n"  // 2e1d: 8b46fe
    "mov cl, 0x3\n"  // 2e20: b103
    "shl ax, cl\n"  // 2e22: d3e0
    "mov cx, ax\n"  // 2e24: 8bc8
    "mov bx, [bp + 0x20]\n"  // 2e26: 8b5e20
    "mul bx\n"  // 2e29: f7e3
    "mov bx, 0x64\n"  // 2e2b: bb6400
    "div bx\n"  // 2e2e: f7f3
    "cmp dx, 0x32\n"  // 2e30: 83fa32
    "jb 0x2e36\n"  // 2e33: 7201
    "inc ax\n"  // 2e35: 40
    "or ax, ax\n"  // 2e36: 0bc0
    "je 0x2e5c\n"  // 2e38: 7422
    "xor dx, dx\n"  // 2e3a: 33d2
    "mov bx, ax\n"  // 2e3c: 8bd8
    "mov [bp - 0x34], ax\n"  // 2e3e: 8946cc
    "mov ax, cx\n"  // 2e41: 8bc1
    "div bx\n"  // 2e43: f7f3
    "mov di, 0x2e2b\n"  // 2e45: bf2b2e
    "mov bx, [bp - 0x34]\n"  // 2e48: 8b5ecc
    "shr bx, 0x1\n"  // 2e4b: d1eb
    "mov [bp - 0x3c], bx\n"  // 2e4d: 895ec4
    "mov si, ax\n"  // 2e50: 8bf0
    "dec si\n"  // 2e52: 4e
    "mov [bp - 0x30], ax\n"  // 2e53: 8946d0
    "mov [bp - 0x32], cx\n"  // 2e56: 894ece
    "call 0x319f\n"  // 2e59: e84303
    "mov ax, [bp - 0x4]\n"  // 2e5c: 8b46fc
    "mov cl, 0x3\n"  // 2e5f: b103
    "shl ax, cl\n"  // 2e61: d3e0
    "mov cx, ax\n"  // 2e63: 8bc8
    "mov bx, [bp + 0x20]\n"  // 2e65: 8b5e20
    "mul bx\n"  // 2e68: f7e3
    "mov bx, 0x64\n"  // 2e6a: bb6400
    "div bx\n"  // 2e6d: f7f3
    "cmp dx, 0x32\n"  // 2e6f: 83fa32
    "jb 0x2e75\n"  // 2e72: 7201
    "inc ax\n"  // 2e74: 40
    "or ax, ax\n"  // 2e75: 0bc0
    "je 0x2e9b\n"  // 2e77: 7422
    "xor dx, dx\n"  // 2e79: 33d2
    "mov bx, ax\n"  // 2e7b: 8bd8
    "mov [bp - 0x34], ax\n"  // 2e7d: 8946cc
    "mov ax, cx\n"  // 2e80: 8bc1
    "div bx\n"  // 2e82: f7f3
    "mov di, 0x2e53\n"  // 2e84: bf532e
    "mov bx, [bp - 0x34]\n"  // 2e87: 8b5ecc
    "shr bx, 0x1\n"  // 2e8a: d1eb
    "mov [bp - 0x3c], bx\n"  // 2e8c: 895ec4
    "mov si, ax\n"  // 2e8f: 8bf0
    "dec si\n"  // 2e91: 4e
    "mov [bp - 0x30], ax\n"  // 2e92: 8946d0
    "mov [bp - 0x32], cx\n"  // 2e95: 894ece
    "call 0x319f\n"  // 2e98: e80403
    "mov bx, [bp - 0x3a]\n"  // 2e9b: 8b5ec6
    "mov ax, [bp - 0x38]\n"  // 2e9e: 8b46c8
    "mov es, ax\n"  // 2ea1: 8ec0
    "mov ax, [bp + 0x12]\n"  // 2ea3: 8b4612
    "sub ax, [bp + 0xe]\n"  // 2ea6: 2b460e
    "jge 0x2ead\n"  // 2ea9: 7d02
    "xor ax, ax\n"  // 2eab: 33c0
    "mov [bp - 0x28], ax\n"  // 2ead: 8946d8
    "mov ax, [bp + 0xe]\n"  // 2eb0: 8b460e
    "mov bx, [bp - 0x2]\n"  // 2eb3: 8b5efe
    "mov cl, 0x3\n"  // 2eb6: b103
    "shl bx, cl\n"  // 2eb8: d3e3
    "mov cx, bx\n"  // 2eba: 8bcb
    "dec bx\n"  // 2ebc: 4b
    "mov [bp - 0x1e], bx\n"  // 2ebd: 895ee2
    "add ax, bx\n"  // 2ec0: 03c3
    "inc ax\n"  // 2ec2: 40
    "sub ax, [bp + 0x14]\n"  // 2ec3: 2b4614
    "jge 0x2eca\n"  // 2ec6: 7d02
    "xor ax, ax\n"  // 2ec8: 33c0
    "mov [bp - 0x2a], ax\n"  // 2eca: 8946d6
    "add ax, [bp - 0x28]\n"  // 2ecd: 0346d8
    "sub cx, ax\n"  // 2ed0: 2bc8
    "ja 0x2ed7\n"  // 2ed2: 7703
    "jmp 0x3129\n"  // 2ed4: e95202
    "mov [bp - 0x26], cx\n"  // 2ed7: 894eda
    "mov ax, [bp + 0x16]\n"  // 2eda: 8b4616
    "sub ax, [bp + 0x10]\n"  // 2edd: 2b4610
    "jge 0x2ee4\n"  // 2ee0: 7d02
    "xor ax, ax\n"  // 2ee2: 33c0
    "mov [bp - 0x24], ax\n"  // 2ee4: 8946dc
    "mov ax, [bp + 0x10]\n"  // 2ee7: 8b4610
    "mov bx, [bp - 0x4]\n"  // 2eea: 8b5efc
    "mov cl, 0x3\n"  // 2eed: b103
    "shl bx, cl\n"  // 2eef: d3e3
    "mov cx, bx\n"  // 2ef1: 8bcb
    "dec bx\n"  // 2ef3: 4b
    "add ax, bx\n"  // 2ef4: 03c3
    "sub ax, [bp + 0x18]\n"  // 2ef6: 2b4618
    "jge 0x2efd\n"  // 2ef9: 7d02
    "xor ax, ax\n"  // 2efb: 33c0
    "mov [bp - 0x2c], ax\n"  // 2efd: 8946d4
    "add ax, [bp - 0x24]\n"  // 2f00: 0346dc
    "sub cx, ax\n"  // 2f03: 2bc8
    "ja 0x2f0a\n"  // 2f05: 7703
    "jmp 0x3129\n"  // 2f07: e91f02
    "mov ax, [bp + 0x18]\n"  // 2f0a: 8b4618
    "inc ax\n"  // 2f0d: 40
    "mov cx, 0x140\n"  // 2f0e: b94001
    "mul cx\n"  // 2f11: f7e1
    "mov [bp - 0x22], ax\n"  // 2f13: 8946de
    "mov ax, [bp + 0x16]\n"  // 2f16: 8b4616
    "mov cx, 0x140\n"  // 2f19: b94001
    "mul cx\n"  // 2f1c: f7e1
    "mov [bp - 0x2e], ax\n"  // 2f1e: 8946d2
    "mov ax, [bp + 0x1a]\n"  // 2f21: 8b461a
    "and al, 0x1\n"  // 2f24: 2401
    "je 0x2f2b\n"  // 2f26: 7403
    "jmp 0x2fd1\n"  // 2f28: e9a600
    "mov bx, [bp - 0x1e]\n"  // 2f2b: 8b5ee2
    "inc bx\n"  // 2f2e: 43
    "mov [bp - 0x3e], bx\n"  // 2f2f: 895ec2
    "mov bx, 0x2e2b\n"  // 2f32: bb2b2e
    "mov dl, 0x80\n"  // 2f35: b280
    "xor ax, ax\n"  // 2f37: 33c0
    "mov [bp - 0x30], ax\n"  // 2f39: 8946d0
    "mov [bp - 0x40], ax\n"  // 2f3c: 8946c0
    "mov cx, [bp - 0x28]\n"  // 2f3f: 8b4ed8
    "or cx, cx\n"  // 2f42: 0bc9
    "je 0x2f60\n"  // 2f44: 741a
    "mov al, [cs:bx]\n"  // 2f46: 2e8a07
    "and al, dl\n"  // 2f49: 22c2
    "jne 0x2f52\n"  // 2f4b: 7505
    "or [cs:bx], dl\n"  // 2f4d: 2e0817
    "jmp 0x2f56\n"  // 2f50: eb04
    "inc [bp - 0x30]\n"  // 2f52: ff46d0
    "inc cx\n"  // 2f55: 41
    "ror dl, 0x1\n"  // 2f56: d0ca
    "cmp dl, 0x80\n"  // 2f58: 80fa80
    "jne 0x2f5e\n"  // 2f5b: 7501
    "inc bx\n"  // 2f5d: 43
    "loop 0x2f46\n"  // 2f5e: e2e6
    "mov [bp - 0x32], bx\n"  // 2f60: 895ece
    "mov ax, [bp - 0x30]\n"  // 2f63: 8b46d0
    "mov [bp - 0x40], ax\n"  // 2f66: 8946c0
    "add ax, [bp - 0x28]\n"  // 2f69: 0346d8
    "mov bx, [bp - 0x3e]\n"  // 2f6c: 8b5ec2
    "cmp bx, ax\n"  // 2f6f: 3bd8
    "ja 0x2f76\n"  // 2f71: 7703
    "jmp 0x3129\n"  // 2f73: e9b301
    "sub bx, ax\n"  // 2f76: 2bd8
    "xor ax, ax\n"  // 2f78: 33c0
    "mov [bp - 0x30], ax\n"  // 2f7a: 8946d0
    "sub bx, [bp - 0x26]\n"  // 2f7d: 2b5eda
    "jbe 0x2fce\n"  // 2f80: 764c
    "mov [bp - 0x34], bx\n"  // 2f82: 895ecc
    "mov cx, [bp - 0x26]\n"  // 2f85: 8b4eda
    "mov bx, [bp - 0x32]\n"  // 2f88: 8b5ece
    "mov al, [cs:bx]\n"  // 2f8b: 2e8a07
    "and al, dl\n"  // 2f8e: 22c2
    "je 0x2f9e\n"  // 2f90: 740c
    "inc [bp - 0x30]\n"  // 2f92: ff46d0
    "mov ax, [bp - 0x30]\n"  // 2f95: 8b46d0
    "cmp ax, [bp - 0x34]\n"  // 2f98: 3b46cc
    "je 0x2fa8\n"  // 2f9b: 740b
    "inc cx\n"  // 2f9d: 41
    "ror dl, 0x1\n"  // 2f9e: d0ca
    "cmp dl, 0x80\n"  // 2fa0: 80fa80
    "jne 0x2fa6\n"  // 2fa3: 7501
    "inc bx\n"  // 2fa5: 43
    "loop 0x2f8b\n"  // 2fa6: e2e3
    "mov [bp - 0x32], bx\n"  // 2fa8: 895ece
    "mov ax, [bp - 0x30]\n"  // 2fab: 8b46d0
    "add ax, [bp - 0x40]\n"  // 2fae: 0346c0
    "add ax, [bp - 0x28]\n"  // 2fb1: 0346d8
    "add ax, [bp - 0x26]\n"  // 2fb4: 0346da
    "mov cx, [bp - 0x3e]\n"  // 2fb7: 8b4ec2
    "sub cx, ax\n"  // 2fba: 2bc8
    "jbe 0x2fce\n"  // 2fbc: 7610
    "mov bx, [bp - 0x32]\n"  // 2fbe: 8b5ece
    "or [cs:bx], dl\n"  // 2fc1: 2e0817
    "ror dl, 0x1\n"  // 2fc4: d0ca
    "cmp dl, 0x80\n"  // 2fc6: 80fa80
    "jne 0x2fcc\n"  // 2fc9: 7501
    "inc bx\n"  // 2fcb: 43
    "loop 0x2fc1\n"  // 2fcc: e2f3
    "jmp 0x3074\n"  // 2fce: e9a300
    "mov bx, [bp - 0x1e]\n"  // 2fd1: 8b5ee2
    "inc bx\n"  // 2fd4: 43
    "mov [bp - 0x3e], bx\n"  // 2fd5: 895ec2
    "mov bx, 0x2e2b\n"  // 2fd8: bb2b2e
    "mov dl, 0x80\n"  // 2fdb: b280
    "xor ax, ax\n"  // 2fdd: 33c0
    "mov [bp - 0x30], ax\n"  // 2fdf: 8946d0
    "mov [bp - 0x40], ax\n"  // 2fe2: 8946c0
    "mov cx, [bp - 0x2a]\n"  // 2fe5: 8b4ed6
    "or cx, cx\n"  // 2fe8: 0bc9
    "je 0x3006\n"  // 2fea: 741a
    "mov al, [cs:bx]\n"  // 2fec: 2e8a07
    "and al, dl\n"  // 2fef: 22c2
    "jne 0x2ff8\n"  // 2ff1: 7505
    "or [cs:bx], dl\n"  // 2ff3: 2e0817
    "jmp 0x2ffc\n"  // 2ff6: eb04
    "inc [bp - 0x30]\n"  // 2ff8: ff46d0
    "inc cx\n"  // 2ffb: 41
    "ror dl, 0x1\n"  // 2ffc: d0ca
    "cmp dl, 0x80\n"  // 2ffe: 80fa80
    "jne 0x3004\n"  // 3001: 7501
    "inc bx\n"  // 3003: 43
    "loop 0x2fec\n"  // 3004: e2e6
    "mov [bp - 0x32], bx\n"  // 3006: 895ece
    "mov ax, [bp - 0x30]\n"  // 3009: 8b46d0
    "mov [bp - 0x40], ax\n"  // 300c: 8946c0
    "add ax, [bp - 0x2a]\n"  // 300f: 0346d6
    "mov bx, [bp - 0x3e]\n"  // 3012: 8b5ec2
    "cmp bx, ax\n"  // 3015: 3bd8
    "ja 0x301c\n"  // 3017: 7703
    "jmp 0x3129\n"  // 3019: e90d01
    "sub bx, ax\n"  // 301c: 2bd8
    "xor ax, ax\n"  // 301e: 33c0
    "mov [bp - 0x30], ax\n"  // 3020: 8946d0
    "sub bx, [bp - 0x26]\n"  // 3023: 2b5eda
    "jbe 0x3074\n"  // 3026: 764c
    "mov [bp - 0x34], bx\n"  // 3028: 895ecc
    "mov cx, [bp - 0x26]\n"  // 302b: 8b4eda
    "mov bx, [bp - 0x32]\n"  // 302e: 8b5ece
    "mov al, [cs:bx]\n"  // 3031: 2e8a07
    "and al, dl\n"  // 3034: 22c2
    "je 0x3044\n"  // 3036: 740c
    "inc [bp - 0x30]\n"  // 3038: ff46d0
    "mov ax, [bp - 0x30]\n"  // 303b: 8b46d0
    "cmp ax, [bp - 0x34]\n"  // 303e: 3b46cc
    "je 0x304e\n"  // 3041: 740b
    "inc cx\n"  // 3043: 41
    "ror dl, 0x1\n"  // 3044: d0ca
    "cmp dl, 0x80\n"  // 3046: 80fa80
    "jne 0x304c\n"  // 3049: 7501
    "inc bx\n"  // 304b: 43
    "loop 0x3031\n"  // 304c: e2e3
    "mov [bp - 0x32], bx\n"  // 304e: 895ece
    "mov ax, [bp - 0x30]\n"  // 3051: 8b46d0
    "add ax, [bp - 0x40]\n"  // 3054: 0346c0
    "add ax, [bp - 0x2a]\n"  // 3057: 0346d6
    "add ax, [bp - 0x26]\n"  // 305a: 0346da
    "mov cx, [bp - 0x3e]\n"  // 305d: 8b4ec2
    "sub cx, ax\n"  // 3060: 2bc8
    "jbe 0x3074\n"  // 3062: 7610
    "mov bx, [bp - 0x32]\n"  // 3064: 8b5ece
    "or [cs:bx], dl\n"  // 3067: 2e0817
    "ror dl, 0x1\n"  // 306a: d0ca
    "cmp dl, 0x80\n"  // 306c: 80fa80
    "jne 0x3072\n"  // 306f: 7501
    "inc bx\n"  // 3071: 43
    "loop 0x3067\n"  // 3072: e2f3
    "mov ax, [bp + 0x1a]\n"  // 3074: 8b461a
    "and al, 0x2\n"  // 3077: 2402
    "jne 0x30c2\n"  // 3079: 7547
    "mov bx, 0x2e53\n"  // 307b: bb532e
    "mov dl, 0x80\n"  // 307e: b280
    "xor ax, ax\n"  // 3080: 33c0
    "mov [bp - 0x30], ax\n"  // 3082: 8946d0
    "mov [bp - 0x40], ax\n"  // 3085: 8946c0
    "mov cx, [bp - 0x24]\n"  // 3088: 8b4edc
    "or cx, cx\n"  // 308b: 0bc9
    "je 0x30a9\n"  // 308d: 741a
    "mov al, [cs:bx]\n"  // 308f: 2e8a07
    "and al, dl\n"  // 3092: 22c2
    "jne 0x309b\n"  // 3094: 7505
    "or [cs:bx], dl\n"  // 3096: 2e0817
    "jmp 0x309f\n"  // 3099: eb04
    "inc [bp - 0x30]\n"  // 309b: ff46d0
    "inc cx\n"  // 309e: 41
    "ror dl, 0x1\n"  // 309f: d0ca
    "cmp dl, 0x80\n"  // 30a1: 80fa80
    "jne 0x30a7\n"  // 30a4: 7501
    "inc bx\n"  // 30a6: 43
    "loop 0x308f\n"  // 30a7: e2e6
    "mov ax, [bp - 0x30]\n"  // 30a9: 8b46d0
    "mov [bp - 0x40], ax\n"  // 30ac: 8946c0
    "add ax, [bp - 0x24]\n"  // 30af: 0346dc
    "mov bx, [bp - 0x4]\n"  // 30b2: 8b5efc
    "mov cl, 0x3\n"  // 30b5: b103
    "shl bx, cl\n"  // 30b7: d3e3
    "cmp bx, ax\n"  // 30b9: 3bd8
    "ja 0x30c0\n"  // 30bb: 7703
    "jmp 0x3129\n"  // 30bd: e96900
    "jmp 0x3101\n"  // 30c0: eb3f
    "mov bx, 0x2e53\n"  // 30c2: bb532e
    "mov dl, 0x80\n"  // 30c5: b280
    "xor ax, ax\n"  // 30c7: 33c0
    "mov [bp - 0x30], ax\n"  // 30c9: 8946d0
    "mov [bp - 0x40], ax\n"  // 30cc: 8946c0
    "mov cx, [bp - 0x2c]\n"  // 30cf: 8b4ed4
    "or cx, cx\n"  // 30d2: 0bc9
    "je 0x30f0\n"  // 30d4: 741a
    "mov al, [cs:bx]\n"  // 30d6: 2e8a07
    "and al, dl\n"  // 30d9: 22c2
    "jne 0x30e2\n"  // 30db: 7505
    "or [cs:bx], dl\n"  // 30dd: 2e0817
    "jmp 0x30e6\n"  // 30e0: eb04
    "inc [bp - 0x30]\n"  // 30e2: ff46d0
    "inc cx\n"  // 30e5: 41
    "ror dl, 0x1\n"  // 30e6: d0ca
    "cmp dl, 0x80\n"  // 30e8: 80fa80
    "jne 0x30ee\n"  // 30eb: 7501
    "inc bx\n"  // 30ed: 43
    "loop 0x30d6\n"  // 30ee: e2e6
    "mov ax, [bp - 0x30]\n"  // 30f0: 8b46d0
    "add ax, [bp - 0x2c]\n"  // 30f3: 0346d4
    "mov bx, [bp - 0x4]\n"  // 30f6: 8b5efc
    "mov cl, 0x3\n"  // 30f9: b103
    "shl bx, cl\n"  // 30fb: d3e3
    "cmp bx, ax\n"  // 30fd: 3bd8
    "jbe 0x3129\n"  // 30ff: 7628
    "mov ax, [bp + 0x20]\n"  // 3101: 8b4620
    "mov bl, 0xc\n"  // 3104: b30c
    "div bl\n"  // 3106: f6f3
    "xor ah, ah\n"  // 3108: 32e4
    "mov [bp - 0x30], ax\n"  // 310a: 8946d0
    "mov si, [bp + 0x1c]\n"  // 310d: 8b761c
    "mov bx, [bp - 0x8]\n"  // 3110: 8b5ef8
    "mov ds, bx\n"  // 3113: 8edb
    "xor ah, ah\n"  // 3115: 32e4
    "mov al, [ss:si]\n"  // 3117: 368a04
    "or al, al\n"  // 311a: 0ac0
    "je 0x3129\n"  // 311c: 740b
    "call 0x3131\n"  // 311e: e81000
    "call 0x31d9\n"  // 3121: e8b500
    "inc [bp + 0x1c]\n"  // 3124: ff461c
    "jmp 0x310d\n"  // 3127: ebe4
    "pop di\n"  // 3129: 5f
    "pop si\n"  // 312a: 5e
    "pop es\n"  // 312b: 07
    "pop ds\n"  // 312c: 1f
    "mov sp, bp\n"  // 312d: 8be5
    "pop bp\n"  // 312f: 5d
    "ret \n"  // 3130: c3
        ".att_syntax");
}

/* dos_con_loc_3131 (0x3131-0x319f) — inline asm */
void dos_con_loc_3131(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "dec ax\n"  // 3131: 48
    "cmp ax, [bp - 0x12]\n"  // 3132: 3b46ee
    "jb 0x3188\n"  // 3135: 7251
    "mov cl, 0x2\n"  // 3188: b102
    "shl al, cl\n"  // 318a: d2e0
    "mov bx, 0x2\n"  // 318c: bb0200
    "add bx, ax\n"  // 318f: 03d8
    "mov ax, [bx]\n"  // 3191: 8b07
    "mov dx, [bx + 0x2]\n"  // 3193: 8b5702
    "mov bx, ds\n"  // 3196: 8cdb
    "add bx, dx\n"  // 3198: 03da
    "mov ds, bx\n"  // 319a: 8edb
    "mov bx, ax\n"  // 319c: 8bd8
    "ret \n"  // 319e: c3
        ".att_syntax");
}

/* leaf_loc_319f (0x319f-0x31d9) */
void leaf_loc_319f(void)
{
    u16 ax, u16 bx, u16 cx, u16 dx, u16 si;
    u8 al, u8 cl;

    si += local_48;
    local_60 += dx;
    bx = local_60;
    // cmp bx, local_52 (flags)
    bx -= local_52;
    local_60 = bx;
    si++;
    // cmp si, local_50 (flags)
    // test si, 0x8000 (flags)
    *(uint8 *)&cl = (uint8)0x3;
    ax = si;
    ax >>= cl;
    bx = ax;
    ax = si;
    *(uint8 *)&al &= (uint8)0x7;
    *(uint8 *)&cl = (uint8)al;
    *(uint8 *)&al = (uint8)0x80;
    *(uint8 *)&al >>= cl;
    *(uint8 *)&*(bx + di) |= (uint8)al;
}

/* math_loc_31d9 (0x31d9-0x3340) — inline asm */
void math_loc_31d9(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8, u16 arg9, u16 arg10, u16 arg11, u16 arg12, u8 arg13)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push es\n"  // 31d9: 06
    "mov ax, [cs:0x1e5]\n"  // 31da: 2ea1e501
    "mov es, ax\n"  // 31de: 8ec0
    "mov ax, 0x2e53\n"  // 31e0: b8532e
    "mov [bp - 0x36], ax\n"  // 31e3: 8946ca
    "xor ax, ax\n"  // 31e6: 33c0
    "mov [bp - 0x3c], ax\n"  // 31e8: 8946c4
    "mov [bp - 0x3e], ax\n"  // 31eb: 8946c2
    "mov ax, [bp + 0x1a]\n"  // 31ee: 8b461a
    "cmp al, 0x2\n"  // 31f1: 3c02
    "jne 0x31f8\n"  // 31f3: 7503
    "jmp 0x3498\n"  // 31f5: e9a002
    "cmp al, 0x3\n"  // 31f8: 3c03
    "jne 0x31ff\n"  // 31fa: 7503
    "jmp 0x35d8\n"  // 31fc: e9d903
    "mov ax, [bp - 0x6]\n"  // 31ff: 8b46fa
    "mov [bp - 0xe], ax\n"  // 3202: 8946f2
    "mov si, [bx]\n"  // 3205: 8b37
    "add si, bx\n"  // 3207: 03f3
    "mov [bp - 0xa], 0x1\n"  // 3209: c746f60100
    "lea ax, [bx + 0x4]\n"  // 320e: 8d4704
    "mov [bp - 0xc], ax\n"  // 3211: 8946f4
    "mov cx, [bp - 0x4]\n"  // 3214: 8b4efc
    "mov [bp - 0x3a], 0x80\n"  // 3217: c646c680
    "mov ax, [bp + 0x1a]\n"  // 321b: 8b461a
    "cmp al, 0x1\n"  // 321e: 3c01
    "jne 0x3225\n"  // 3220: 7503
    "jmp 0x337c\n"  // 3222: e95701
    "mov ax, [bp - 0x28]\n"  // 3225: 8b46d8
    "add [bp - 0xe], ax\n"  // 3228: 0146f2
    "mov ax, [bp - 0x24]\n"  // 322b: 8b46dc
    "mov bx, 0x140\n"  // 322e: bb4001
    "mul bx\n"  // 3231: f7e3
    "add [bp - 0xe], ax\n"  // 3233: 0146f2
    "mov ax, [bp - 0x22]\n"  // 3236: 8b46de
    "mov di, [bp - 0xe]\n"  // 3239: 8b7ef2
    "cmp di, ax\n"  // 323c: 3bf8
    "jb 0x3243\n"  // 323e: 7203
    "jmp 0x3338\n"  // 3240: e9f500
    "push cx\n"  // 3243: 51
    "call 0x3340\n"  // 3244: e8f900
    "mov ax, 0x2e2b\n"  // 3247: b82b2e
    "mov [bp - 0x34], ax\n"  // 324a: 8946cc
    "mov cx, [bp - 0x2]\n"  // 324d: 8b4efe
    "push cx\n"  // 3250: 51
    "call 0x3360\n"  // 3251: e80c01
    "mov bx, [bp - 0xc]\n"  // 3254: 8b5ef4
    "mov al, [bx]\n"  // 3257: 8a07
    "and al, [bp - 0xa]\n"  // 3259: 2246f6
    "jne 0x3261\n"  // 325c: 7503
    "jmp 0x330b\n"  // 325e: e9aa00
    "mov bx, [bp - 0x34]\n"  // 3261: 8b5ecc
    "mov al, [cs:bx]\n"  // 3264: 2e8a07
    "cmp al, 0xff\n"  // 3267: 3cff
    "jne 0x3271\n"  // 3269: 7506
    "add si, 0x40\n"  // 326b: 83c640
    "jmp 0x330b\n"  // 326e: e99a00
    "push di\n"  // 3271: 57
    "push si\n"  // 3272: 56
    "mov al, 0x80\n"  // 3273: b080
    "mov [bp - 0x38], al\n"  // 3275: 8846c8
    "mov cx, 0x8\n"  // 3278: b90800
    "cmp di, [bp - 0x22]\n"  // 327b: 3b7ede
    "jb 0x3283\n"  // 327e: 7203
    "jmp 0x3306\n"  // 3280: e98300
    "mov bx, [bp - 0x36]\n"  // 3283: 8b5eca
    "mov al, [cs:bx]\n"  // 3286: 2e8a07
    "and al, [bp - 0x38]\n"  // 3289: 2246c8
    "je 0x3291\n"  // 328c: 7403
    "jmp 0x3301\n"  // 328e: e97000
    "push cx\n"  // 3291: 51
    "push di\n"  // 3292: 57
    "mov al, 0x80\n"  // 3293: b080
    "mov [bp - 0x32], al\n"  // 3295: 8846ce
    "mov cx, 0x8\n"  // 3298: b90800
    "mov bx, [bp - 0x34]\n"  // 329b: 8b5ecc
    "mov al, [cs:bx]\n"  // 329e: 2e8a07
    "and al, [bp - 0x32]\n"  // 32a1: 2246ce
    "jne 0x32f9\n"  // 32a4: 7553
    "xor ah, ah\n"  // 32a6: 32e4
    "mov al, [si]\n"  // 32a8: 8a04
    "cmp al, 0xff\n"  // 32aa: 3cff
    "je 0x32e5\n"  // 32ac: 7437
    "cmp [bp + 0x1e], 0x2\n"  // 32ae: 807e1e02
    "jne 0x32ca\n"  // 32b2: 7516
    "mov al, [es:di]\n"  // 32b4: 268a05
    "mov bx, 0x381b\n"  // 32b7: bb1b38
    "add bx, ax\n"  // 32ba: 03d8
    "add al, [si]\n"  // 32bc: 0204
    "jb 0x32c5\n"  // 32be: 7205
    "cmp al, [cs:bx]\n"  // 32c0: 2e3a07
    "jb 0x32e2\n"  // 32c3: 721d
    "mov al, [cs:bx]\n"  // 32c5: 2e8a07
    "jmp 0x32e2\n"  // 32c8: eb18
    "cmp [bp - 0x30], 0x0\n"  // 32ca: 807ed000
    "je 0x32e2\n"  // 32ce: 7412
    "mov bx, 0x381b\n"  // 32d0: bb1b38
    "add bx, ax\n"  // 32d3: 03d8
    "add al, [bp - 0x30]\n"  // 32d5: 0246d0
    "jb 0x32df\n"  // 32d8: 7205
    "cmp al, [cs:bx]\n"  // 32da: 2e3a07
    "jb 0x32e2\n"  // 32dd: 7203
    "mov al, [cs:bx]\n"  // 32df: 2e8a07
    "mov [es:di], al\n"  // 32e2: 268805
    "inc si\n"  // 32e5: 46
    "inc di\n"  // 32e6: 47
    "ror [bp - 0x32], 0x1\n"  // 32e7: d04ece
    "loop 0x329b\n"  // 32ea: e2af
    "pop di\n"  // 32ec: 5f
    "pop cx\n"  // 32ed: 59
    "add di, 0x140\n"  // 32ee: 81c74001
    "ror [bp - 0x38], 0x1\n"  // 32f2: d04ec8
    "loop 0x327b\n"  // 32f5: e284
    "jmp 0x3306\n"  // 32f7: eb0d
    "inc si\n"  // 32f9: 46
    "ror [bp - 0x32], 0x1\n"  // 32fa: d04ece
    "loop 0x329b\n"  // 32fd: e29c
    "jmp 0x32ec\n"  // 32ff: ebeb
    "add si, 0x8\n"  // 3301: 83c608
    "jmp 0x32f2\n"  // 3304: ebec
    "pop si\n"  // 3306: 5e
    "add si, 0x40\n"  // 3307: 83c640
    "pop di\n"  // 330a: 5f
    "add di, 0x8\n"  // 330b: 83c708
    "sub di, [bp - 0x3c]\n"  // 330e: 2b7ec4
    "rol [bp - 0xa], 0x1\n"  // 3311: d046f6
    "cmp [bp - 0xa], 0x1\n"  // 3314: 807ef601
    "jne 0x331d\n"  // 3318: 7503
    "inc [bp - 0xc]\n"  // 331a: ff46f4
    "inc [bp - 0x34]\n"  // 331d: ff46cc
    "pop cx\n"  // 3320: 59
    "loop 0x333a\n"  // 3321: e217
    "pop cx\n"  // 3323: 59
    "add [bp - 0xe], 0xa00\n"  // 3324: 8146f2000a
    "mov ax, [bp - 0x3e]\n"  // 3329: 8b46c2
    "sub [bp - 0xe], ax\n"  // 332c: 2946f2
    "inc [bp - 0x36]\n"  // 332f: ff46ca
    "mov [bp - 0x3a], 0x80\n"  // 3332: c646c680
    "loop 0x333d\n"  // 3336: e205
    "pop es\n"  // 3338: 07
    "ret \n"  // 3339: c3
    "jmp 0x3250\n"  // 333a: e913ff
    "jmp 0x3236\n"  // 333d: e9f6fe
        ".att_syntax");
}

/* math_loc_3340 (0x3340-0x3360) */
void math_loc_3340(void)
{
    u16 ax, u16 bx, u16 cx, u16 dx;
    u8 al, u8 dl;

    *(uint8 *)&al = (uint8)0x80;
    *(uint8 *)&dl = (uint8)al;
    ax ^= ax;
    local_62 = ax;
    bx = local_54;
    cx = 0x8;
    *(uint8 *)&al = (uint8)*bx;
    *(uint8 *)&al &= (uint8)dl;
    local_62 += 0x140;
}

/* math_loc_3360 (0x3360-0x3822) — inline asm */
void math_loc_3360(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8, u16 arg9, u16 arg10, u16 arg11, u16 arg12, u8 arg13)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "xor ax, ax\n"  // 3360: 33c0
    "mov [bp - 0x3c], ax\n"  // 3362: 8946c4
    "mov dl, 0x80\n"  // 3365: b280
    "mov bx, [bp - 0x34]\n"  // 3367: 8b5ecc
    "mov cx, 0x8\n"  // 336a: b90800
    "mov al, [cs:bx]\n"  // 336d: 2e8a07
    "and al, dl\n"  // 3370: 22c2
    "je 0x3377\n"  // 3372: 7403
    "inc [bp - 0x3c]\n"  // 3374: ff46c4
    "ror dl, 0x1\n"  // 3377: d0ca
    "loop 0x336d\n"  // 3379: e2f2
    "ret \n"  // 337b: c3
    "mov ax, [bp - 0x2a]\n"  // 337c: 8b46d6
    "sub [bp - 0xe], ax\n"  // 337f: 2946f2
    "mov ax, [bp - 0x24]\n"  // 3382: 8b46dc
    "mov bx, 0x140\n"  // 3385: bb4001
    "mul bx\n"  // 3388: f7e3
    "add [bp - 0xe], ax\n"  // 338a: 0146f2
    "mov ax, [bp - 0x22]\n"  // 338d: 8b46de
    "mov di, [bp - 0xe]\n"  // 3390: 8b7ef2
    "add di, [bp - 0x1e]\n"  // 3393: 037ee2
    "cmp di, ax\n"  // 3396: 3bf8
    "jb 0x339d\n"  // 3398: 7203
    "jmp 0x3490\n"  // 339a: e9f300
    "push cx\n"  // 339d: 51
    "call 0x3340\n"  // 339e: e89fff
    "mov ax, 0x2e2b\n"  // 33a1: b82b2e
    "mov [bp - 0x34], ax\n"  // 33a4: 8946cc
    "mov cx, [bp - 0x2]\n"  // 33a7: 8b4efe
    "push cx\n"  // 33aa: 51
    "call 0x3360\n"  // 33ab: e8b2ff
    "mov bx, [bp - 0xc]\n"  // 33ae: 8b5ef4
    "mov al, [bx]\n"  // 33b1: 8a07
    "and al, [bp - 0xa]\n"  // 33b3: 2246f6
    "jne 0x33bb\n"  // 33b6: 7503
    "jmp 0x3463\n"  // 33b8: e9a800
    "mov bx, [bp - 0x34]\n"  // 33bb: 8b5ecc
    "mov al, [cs:bx]\n"  // 33be: 2e8a07
    "cmp al, 0xff\n"  // 33c1: 3cff
    "jne 0x33cb\n"  // 33c3: 7506
    "add si, 0x40\n"  // 33c5: 83c640
    "jmp 0x3463\n"  // 33c8: e99800
    "push di\n"  // 33cb: 57
    "push si\n"  // 33cc: 56
    "mov al, 0x80\n"  // 33cd: b080
    "mov [bp - 0x38], al\n"  // 33cf: 8846c8
    "mov cx, 0x8\n"  // 33d2: b90800
    "cmp di, [bp - 0x22]\n"  // 33d5: 3b7ede
    "jb 0x33dd\n"  // 33d8: 7203
    "jmp 0x345e\n"  // 33da: e98100
    "mov bx, [bp - 0x36]\n"  // 33dd: 8b5eca
    "mov al, [cs:bx]\n"  // 33e0: 2e8a07
    "and al, [bp - 0x38]\n"  // 33e3: 2246c8
    "je 0x33eb\n"  // 33e6: 7403
    "jmp 0x3459\n"  // 33e8: e96e00
    "push cx\n"  // 33eb: 51
    "push di\n"  // 33ec: 57
    "mov al, 0x80\n"  // 33ed: b080
    "mov [bp - 0x32], al\n"  // 33ef: 8846ce
    "mov cx, 0x8\n"  // 33f2: b90800
    "mov bx, [bp - 0x34]\n"  // 33f5: 8b5ecc
    "mov al, [cs:bx]\n"  // 33f8: 2e8a07
    "and al, [bp - 0x32]\n"  // 33fb: 2246ce
    "jne 0x3451\n"  // 33fe: 7551
    "mov al, [si]\n"  // 3400: 8a04
    "cmp al, 0xff\n"  // 3402: 3cff
    "je 0x343d\n"  // 3404: 7437
    "cmp [bp + 0x1e], 0x2\n"  // 3406: 807e1e02
    "jne 0x3422\n"  // 340a: 7516
    "mov al, [es:di]\n"  // 340c: 268a05
    "mov bx, 0x381b\n"  // 340f: bb1b38
    "add bx, ax\n"  // 3412: 03d8
    "add al, [si]\n"  // 3414: 0204
    "jb 0x341d\n"  // 3416: 7205
    "cmp al, [cs:bx]\n"  // 3418: 2e3a07
    "jb 0x343a\n"  // 341b: 721d
    "mov al, [cs:bx]\n"  // 341d: 2e8a07
    "jmp 0x343a\n"  // 3420: eb18
    "cmp [bp - 0x30], 0x0\n"  // 3422: 807ed000
    "je 0x343a\n"  // 3426: 7412
    "mov bx, 0x381b\n"  // 3428: bb1b38
    "add bx, ax\n"  // 342b: 03d8
    "add al, [bp - 0x30]\n"  // 342d: 0246d0
    "jb 0x3437\n"  // 3430: 7205
    "cmp al, [cs:bx]\n"  // 3432: 2e3a07
    "jb 0x343a\n"  // 3435: 7203
    "mov al, [cs:bx]\n"  // 3437: 2e8a07
    "mov [es:di], al\n"  // 343a: 268805
    "inc si\n"  // 343d: 46
    "dec di\n"  // 343e: 4f
    "ror [bp - 0x32], 0x1\n"  // 343f: d04ece
    "loop 0x33f5\n"  // 3442: e2b1
    "pop di\n"  // 3444: 5f
    "pop cx\n"  // 3445: 59
    "add di, 0x140\n"  // 3446: 81c74001
    "ror [bp - 0x38], 0x1\n"  // 344a: d04ec8
    "loop 0x33d5\n"  // 344d: e286
    "jmp 0x345e\n"  // 344f: eb0d
    "inc si\n"  // 3451: 46
    "ror [bp - 0x32], 0x1\n"  // 3452: d04ece
    "loop 0x33f5\n"  // 3455: e29e
    "jmp 0x3444\n"  // 3457: ebeb
    "add si, 0x8\n"  // 3459: 83c608
    "jmp 0x344a\n"  // 345c: ebec
    "pop si\n"  // 345e: 5e
    "add si, 0x40\n"  // 345f: 83c640
    "pop di\n"  // 3462: 5f
    "sub di, 0x8\n"  // 3463: 83ef08
    "add di, [bp - 0x3c]\n"  // 3466: 037ec4
    "rol [bp - 0xa], 0x1\n"  // 3469: d046f6
    "cmp [bp - 0xa], 0x1\n"  // 346c: 807ef601
    "jne 0x3475\n"  // 3470: 7503
    "inc [bp - 0xc]\n"  // 3472: ff46f4
    "inc [bp - 0x34]\n"  // 3475: ff46cc
    "pop cx\n"  // 3478: 59
    "loop 0x3492\n"  // 3479: e217
    "pop cx\n"  // 347b: 59
    "add [bp - 0xe], 0xa00\n"  // 347c: 8146f2000a
    "mov ax, [bp - 0x3e]\n"  // 3481: 8b46c2
    "sub [bp - 0xe], ax\n"  // 3484: 2946f2
    "inc [bp - 0x36]\n"  // 3487: ff46ca
    "mov [bp - 0x3a], 0x80\n"  // 348a: c646c680
    "loop 0x3495\n"  // 348e: e205
    "pop es\n"  // 3490: 07
    "ret \n"  // 3491: c3
    "jmp 0x33aa\n"  // 3492: e915ff
    "jmp 0x338d\n"  // 3495: e9f5fe
    "mov ax, [bp - 0x4]\n"  // 3498: 8b46fc
    "mov cx, 0xa00\n"  // 349b: b9000a
    "mul cx\n"  // 349e: f7e1
    "sub ax, 0x140\n"  // 34a0: 2d4001
    "add ax, [bp - 0x6]\n"  // 34a3: 0346fa
    "mov [bp - 0xe], ax\n"  // 34a6: 8946f2
    "mov si, [bx]\n"  // 34a9: 8b37
    "add si, bx\n"  // 34ab: 03f3
    "mov [bp - 0xa], 0x1\n"  // 34ad: c746f60100
    "lea ax, [bx + 0x4]\n"  // 34b2: 8d4704
    "mov [bp - 0xc], ax\n"  // 34b5: 8946f4
    "mov cx, [bp - 0x4]\n"  // 34b8: 8b4efc
    "mov [bp - 0x3a], 0x80\n"  // 34bb: c646c680
    "mov ax, [bp - 0x28]\n"  // 34bf: 8b46d8
    "add [bp - 0xe], ax\n"  // 34c2: 0146f2
    "mov ax, [bp - 0x2c]\n"  // 34c5: 8b46d4
    "mov bx, 0x140\n"  // 34c8: bb4001
    "mul bx\n"  // 34cb: f7e3
    "sub [bp - 0xe], ax\n"  // 34cd: 2946f2
    "mov ax, [bp - 0x2e]\n"  // 34d0: 8b46d2
    "mov di, [bp - 0xe]\n"  // 34d3: 8b7ef2
    "cmp ax, di\n"  // 34d6: 3bc7
    "jbe 0x34dd\n"  // 34d8: 7603
    "jmp 0x35d0\n"  // 34da: e9f300
    "push cx\n"  // 34dd: 51
    "call 0x3340\n"  // 34de: e85ffe
    "mov ax, 0x2e2b\n"  // 34e1: b82b2e
    "mov [bp - 0x34], ax\n"  // 34e4: 8946cc
    "mov cx, [bp - 0x2]\n"  // 34e7: 8b4efe
    "push cx\n"  // 34ea: 51
    "call 0x3360\n"  // 34eb: e872fe
    "mov bx, [bp - 0xc]\n"  // 34ee: 8b5ef4
    "mov al, [bx]\n"  // 34f1: 8a07
    "and al, [bp - 0xa]\n"  // 34f3: 2246f6
    "jne 0x34fb\n"  // 34f6: 7503
    "jmp 0x35a3\n"  // 34f8: e9a800
    "mov bx, [bp - 0x34]\n"  // 34fb: 8b5ecc
    "mov al, [cs:bx]\n"  // 34fe: 2e8a07
    "cmp al, 0xff\n"  // 3501: 3cff
    "jne 0x350b\n"  // 3503: 7506
    "add si, 0x40\n"  // 3505: 83c640
    "jmp 0x35a3\n"  // 3508: e99800
    "push di\n"  // 350b: 57
    "push si\n"  // 350c: 56
    "mov al, 0x80\n"  // 350d: b080
    "mov [bp - 0x38], al\n"  // 350f: 8846c8
    "mov cx, 0x8\n"  // 3512: b90800
    "cmp [bp - 0x2e], di\n"  // 3515: 397ed2
    "jbe 0x351d\n"  // 3518: 7603
    "jmp 0x359e\n"  // 351a: e98100
    "mov bx, [bp - 0x36]\n"  // 351d: 8b5eca
    "mov al, [cs:bx]\n"  // 3520: 2e8a07
    "and al, [bp - 0x38]\n"  // 3523: 2246c8
    "je 0x352b\n"  // 3526: 7403
    "jmp 0x3599\n"  // 3528: e96e00
    "push cx\n"  // 352b: 51
    "push di\n"  // 352c: 57
    "mov al, 0x80\n"  // 352d: b080
    "mov [bp - 0x32], al\n"  // 352f: 8846ce
    "mov cx, 0x8\n"  // 3532: b90800
    "mov bx, [bp - 0x34]\n"  // 3535: 8b5ecc
    "mov al, [cs:bx]\n"  // 3538: 2e8a07
    "and al, [bp - 0x32]\n"  // 353b: 2246ce
    "jne 0x3591\n"  // 353e: 7551
    "mov al, [si]\n"  // 3540: 8a04
    "cmp al, 0xff\n"  // 3542: 3cff
    "je 0x357d\n"  // 3544: 7437
    "cmp [bp + 0x1e], 0x2\n"  // 3546: 807e1e02
    "jne 0x3562\n"  // 354a: 7516
    "mov al, [es:di]\n"  // 354c: 268a05
    "mov bx, 0x381b\n"  // 354f: bb1b38
    "add bx, ax\n"  // 3552: 03d8
    "add al, [si]\n"  // 3554: 0204
    "jb 0x355d\n"  // 3556: 7205
    "cmp al, [cs:bx]\n"  // 3558: 2e3a07
    "jb 0x357a\n"  // 355b: 721d
    "mov al, [cs:bx]\n"  // 355d: 2e8a07
    "jmp 0x357a\n"  // 3560: eb18
    "cmp [bp - 0x30], 0x0\n"  // 3562: 807ed000
    "je 0x357a\n"  // 3566: 7412
    "mov bx, 0x381b\n"  // 3568: bb1b38
    "add bx, ax\n"  // 356b: 03d8
    "add al, [bp - 0x30]\n"  // 356d: 0246d0
    "jb 0x3577\n"  // 3570: 7205
    "cmp al, [cs:bx]\n"  // 3572: 2e3a07
    "jb 0x357a\n"  // 3575: 7203
    "mov al, [cs:bx]\n"  // 3577: 2e8a07
    "mov [es:di], al\n"  // 357a: 268805
    "inc si\n"  // 357d: 46
    "inc di\n"  // 357e: 47
    "ror [bp - 0x32], 0x1\n"  // 357f: d04ece
    "loop 0x3535\n"  // 3582: e2b1
    "pop di\n"  // 3584: 5f
    "sub di, 0x140\n"  // 3585: 81ef4001
    "pop cx\n"  // 3589: 59
    "ror [bp - 0x38], 0x1\n"  // 358a: d04ec8
    "loop 0x3515\n"  // 358d: e286
    "jmp 0x359e\n"  // 358f: eb0d
    "inc si\n"  // 3591: 46
    "ror [bp - 0x32], 0x1\n"  // 3592: d04ece
    "loop 0x3535\n"  // 3595: e29e
    "jmp 0x3584\n"  // 3597: ebeb
    "add si, 0x8\n"  // 3599: 83c608
    "jmp 0x358a\n"  // 359c: ebec
    "pop si\n"  // 359e: 5e
    "add si, 0x40\n"  // 359f: 83c640
    "pop di\n"  // 35a2: 5f
    "add di, 0x8\n"  // 35a3: 83c708
    "sub di, [bp - 0x3c]\n"  // 35a6: 2b7ec4
    "rol [bp - 0xa], 0x1\n"  // 35a9: d046f6
    "cmp [bp - 0xa], 0x1\n"  // 35ac: 807ef601
    "jne 0x35b5\n"  // 35b0: 7503
    "inc [bp - 0xc]\n"  // 35b2: ff46f4
    "inc [bp - 0x34]\n"  // 35b5: ff46cc
    "pop cx\n"  // 35b8: 59
    "loop 0x35d2\n"  // 35b9: e217
    "pop cx\n"  // 35bb: 59
    "sub [bp - 0xe], 0xa00\n"  // 35bc: 816ef2000a
    "mov ax, [bp - 0x3e]\n"  // 35c1: 8b46c2
    "add [bp - 0xe], ax\n"  // 35c4: 0146f2
    "inc [bp - 0x36]\n"  // 35c7: ff46ca
    "mov [bp - 0x3a], 0x80\n"  // 35ca: c646c680
    "loop 0x35d5\n"  // 35ce: e205
    "pop es\n"  // 35d0: 07
    "ret \n"  // 35d1: c3
    "jmp 0x34ea\n"  // 35d2: e915ff
    "jmp 0x34d0\n"  // 35d5: e9f8fe
    "mov ax, [bp - 0x4]\n"  // 35d8: 8b46fc
    "mov cx, 0xa00\n"  // 35db: b9000a
    "mul cx\n"  // 35de: f7e1
    "sub ax, 0x140\n"  // 35e0: 2d4001
    "add ax, [bp - 0x6]\n"  // 35e3: 0346fa
    "mov [bp - 0xe], ax\n"  // 35e6: 8946f2
    "mov si, [bx]\n"  // 35e9: 8b37
    "add si, bx\n"  // 35eb: 03f3
    "mov [bp - 0xa], 0x1\n"  // 35ed: c746f60100
    "lea ax, [bx + 0x4]\n"  // 35f2: 8d4704
    "mov [bp - 0xc], ax\n"  // 35f5: 8946f4
    "mov cx, [bp - 0x4]\n"  // 35f8: 8b4efc
    "mov [bp - 0x3a], 0x80\n"  // 35fb: c646c680
    "mov ax, [bp - 0x2a]\n"  // 35ff: 8b46d6
    "sub [bp - 0xe], ax\n"  // 3602: 2946f2
    "mov ax, [bp - 0x2c]\n"  // 3605: 8b46d4
    "mov bx, 0x140\n"  // 3608: bb4001
    "mul bx\n"  // 360b: f7e3
    "sub [bp - 0xe], ax\n"  // 360d: 2946f2
    "mov ax, [bp - 0x2e]\n"  // 3610: 8b46d2
    "mov di, [bp - 0xe]\n"  // 3613: 8b7ef2
    "add di, [bp - 0x1e]\n"  // 3616: 037ee2
    "cmp ax, di\n"  // 3619: 3bc7
    "jb 0x3620\n"  // 361b: 7203
    "jmp 0x3713\n"  // 361d: e9f300
    "push cx\n"  // 3620: 51
    "call 0x3340\n"  // 3621: e81cfd
    "mov ax, 0x2e2b\n"  // 3624: b82b2e
    "mov [bp - 0x34], ax\n"  // 3627: 8946cc
    "mov cx, [bp - 0x2]\n"  // 362a: 8b4efe
    "push cx\n"  // 362d: 51
    "call 0x3360\n"  // 362e: e82ffd
    "mov bx, [bp - 0xc]\n"  // 3631: 8b5ef4
    "mov al, [bx]\n"  // 3634: 8a07
    "and al, [bp - 0xa]\n"  // 3636: 2246f6
    "jne 0x363e\n"  // 3639: 7503
    "jmp 0x36e6\n"  // 363b: e9a800
    "mov bx, [bp - 0x34]\n"  // 363e: 8b5ecc
    "mov al, [cs:bx]\n"  // 3641: 2e8a07
    "cmp al, 0xff\n"  // 3644: 3cff
    "jne 0x364e\n"  // 3646: 7506
    "add si, 0x40\n"  // 3648: 83c640
    "jmp 0x36e6\n"  // 364b: e99800
    "push di\n"  // 364e: 57
    "push si\n"  // 364f: 56
    "mov al, 0x80\n"  // 3650: b080
    "mov [bp - 0x38], al\n"  // 3652: 8846c8
    "mov cx, 0x8\n"  // 3655: b90800
    "cmp [bp - 0x2e], di\n"  // 3658: 397ed2
    "jbe 0x3660\n"  // 365b: 7603
    "jmp 0x36e1\n"  // 365d: e98100
    "mov bx, [bp - 0x36]\n"  // 3660: 8b5eca
    "mov al, [cs:bx]\n"  // 3663: 2e8a07
    "and al, [bp - 0x38]\n"  // 3666: 2246c8
    "je 0x366e\n"  // 3669: 7403
    "jmp 0x36dc\n"  // 366b: e96e00
    "push cx\n"  // 366e: 51
    "push di\n"  // 366f: 57
    "mov al, 0x80\n"  // 3670: b080
    "mov [bp - 0x32], al\n"  // 3672: 8846ce
    "mov cx, 0x8\n"  // 3675: b90800
    "mov bx, [bp - 0x34]\n"  // 3678: 8b5ecc
    "mov al, [cs:bx]\n"  // 367b: 2e8a07
    "and al, [bp - 0x32]\n"  // 367e: 2246ce
    "jne 0x36d4\n"  // 3681: 7551
    "mov al, [si]\n"  // 3683: 8a04
    "cmp al, 0xff\n"  // 3685: 3cff
    "je 0x36c0\n"  // 3687: 7437
    "cmp [bp + 0x1e], 0x2\n"  // 3689: 807e1e02
    "jne 0x36a5\n"  // 368d: 7516
    "mov al, [es:di]\n"  // 368f: 268a05
    "mov bx, 0x381b\n"  // 3692: bb1b38
    "add bx, ax\n"  // 3695: 03d8
    "add al, [si]\n"  // 3697: 0204
    "jb 0x36a0\n"  // 3699: 7205
    "cmp al, [cs:bx]\n"  // 369b: 2e3a07
    "jb 0x36bd\n"  // 369e: 721d
    "mov al, [cs:bx]\n"  // 36a0: 2e8a07
    "jmp 0x36bd\n"  // 36a3: eb18
    "cmp [bp - 0x30], 0x0\n"  // 36a5: 807ed000
    "je 0x36bd\n"  // 36a9: 7412
    "mov bx, 0x381b\n"  // 36ab: bb1b38
    "add bx, ax\n"  // 36ae: 03d8
    "add al, [bp - 0x30]\n"  // 36b0: 0246d0
    "jb 0x36ba\n"  // 36b3: 7205
    "cmp al, [cs:bx]\n"  // 36b5: 2e3a07
    "jb 0x36bd\n"  // 36b8: 7203
    "mov al, [cs:bx]\n"  // 36ba: 2e8a07
    "mov [es:di], al\n"  // 36bd: 268805
    "inc si\n"  // 36c0: 46
    "dec di\n"  // 36c1: 4f
    "ror [bp - 0x32], 0x1\n"  // 36c2: d04ece
    "loop 0x3678\n"  // 36c5: e2b1
    "pop di\n"  // 36c7: 5f
    "sub di, 0x140\n"  // 36c8: 81ef4001
    "pop cx\n"  // 36cc: 59
    "ror [bp - 0x38], 0x1\n"  // 36cd: d04ec8
    "loop 0x3658\n"  // 36d0: e286
    "jmp 0x36e1\n"  // 36d2: eb0d
    "inc si\n"  // 36d4: 46
    "ror [bp - 0x32], 0x1\n"  // 36d5: d04ece
    "loop 0x3678\n"  // 36d8: e29e
    "jmp 0x36c7\n"  // 36da: ebeb
    "add si, 0x8\n"  // 36dc: 83c608
    "jmp 0x36cd\n"  // 36df: ebec
    "pop si\n"  // 36e1: 5e
    "add si, 0x40\n"  // 36e2: 83c640
    "pop di\n"  // 36e5: 5f
    "sub di, 0x8\n"  // 36e6: 83ef08
    "add di, [bp - 0x3c]\n"  // 36e9: 037ec4
    "rol [bp - 0xa], 0x1\n"  // 36ec: d046f6
    "cmp [bp - 0xa], 0x1\n"  // 36ef: 807ef601
    "jne 0x36f8\n"  // 36f3: 7503
    "inc [bp - 0xc]\n"  // 36f5: ff46f4
    "inc [bp - 0x34]\n"  // 36f8: ff46cc
    "pop cx\n"  // 36fb: 59
    "loop 0x3715\n"  // 36fc: e217
    "pop cx\n"  // 36fe: 59
    "sub [bp - 0xe], 0xa00\n"  // 36ff: 816ef2000a
    "mov ax, [bp - 0x3e]\n"  // 3704: 8b46c2
    "add [bp - 0xe], ax\n"  // 3707: 0146f2
    "inc [bp - 0x36]\n"  // 370a: ff46ca
    "mov [bp - 0x3a], 0x80\n"  // 370d: c646c680
    "loop 0x3718\n"  // 3711: e205
    "pop es\n"  // 3713: 07
    "ret \n"  // 3714: c3
    "jmp 0x362d\n"  // 3715: e915ff
    "jmp 0x3610\n"  // 3718: e9f5fe
    "mov ax, cs\n"  // 381b: 8cc8
    "mov ds, ax\n"  // 381d: 8ed8
    "mov dx, 0x392b\n"  // 381f: ba2b39
        ".att_syntax");
}

/* dos_con_loc_3822 (0x3822-0x385f) */
void dos_con_loc_3822(void)
{
    u16 ax;
    u8 ah;

    *(uint8 *)&ah = (uint8)0x9;
}

/* dos_write_file_2 (0x385f-0x3b1f) — inline asm */
void dos_write_file_2(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8, u16 arg9)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 385f: 55
    "mov bp, sp\n"  // 3860: 8bec
    "sub sp, 0xe\n"  // 3862: 83ec0e
    "push es\n"  // 3865: 06
    "push ds\n"  // 3866: 1e
    "push di\n"  // 3867: 57
    "push si\n"  // 3868: 56
    "mov ax, ds\n"  // 3869: 8cd8
    "mov es, ax\n"  // 386b: 8ec0
    "cmp [bp + 0x14], 0x3\n"  // 386d: 837e1403
    "jne 0x38e9\n"  // 3871: 7576
    "mov ax, [bp + 0x10]\n"  // 3873: 8b4610
    "sub ax, [bp + 0xc]\n"  // 3876: 2b460c
    "inc ax\n"  // 3879: 40
    "mov [bp - 0x6], ax\n"  // 387a: 8946fa
    "mov bx, [bp + 0x12]\n"  // 387d: 8b5e12
    "sub bx, [bp + 0xe]\n"  // 3880: 2b5e0e
    "inc bx\n"  // 3883: 43
    "mov [bp - 0x4], bx\n"  // 3884: 895efc
    "mul bx\n"  // 3887: f7e3
    "mov [bp - 0x8], ax\n"  // 3889: 8946f8
    "mov [bp - 0xa], dx\n"  // 388c: 8956f6
    "mov ax, [bp + 0xe]\n"  // 388f: 8b460e
    "mov bx, 0x140\n"  // 3892: bb4001
    "mul bx\n"  // 3895: f7e3
    "add ax, [bp + 0xc]\n"  // 3897: 03460c
    "mov [bp - 0x2], ax\n"  // 389a: 8946fe
    "lea bx, [bp - 0xa]\n"  // 389d: 8d5ef6
    "mov dx, bx\n"  // 38a0: 8bd3
    "mov ax, ss\n"  // 38a2: 8cd0
    "mov ds, ax\n"  // 38a4: 8ed8
    "mov cx, 0xa\n"  // 38a6: b90a00
    "mov bx, [bp + 0x16]\n"  // 38a9: 8b5e16
    "mov ah, 0x40\n"  // 38ac: b440
    "int 0x21\n"  // 38ae: cd21
    "jae 0x38b5\n"  // 38b0: 7303
    "jmp 0x381b\n"  // 38b2: e966ff
    "mov ax, [cs:0x1e5]\n"  // 38b5: 2ea1e501
    "mov ds, ax\n"  // 38b9: 8ed8
    "mov cx, [bp - 0x4]\n"  // 38bb: 8b4efc
    "push cx\n"  // 38be: 51
    "mov dx, [bp - 0x2]\n"  // 38bf: 8b56fe
    "add [bp - 0x2], 0x140\n"  // 38c2: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 38c7: 8b4efa
    "mov bx, [bp + 0x16]\n"  // 38ca: 8b5e16
    "mov ah, 0x40\n"  // 38cd: b440
    "int 0x21\n"  // 38cf: cd21
    "jae 0x38d6\n"  // 38d1: 7303
    "jmp 0x381b\n"  // 38d3: e945ff
    "cmp ax, [bp - 0x6]\n"  // 38d6: 3b46fa
    "je 0x38de\n"  // 38d9: 7403
    "jmp 0x381b\n"  // 38db: e93dff
    "pop cx\n"  // 38de: 59
    "loop 0x38be\n"  // 38df: e2dd
    "xor ax, ax\n"  // 38e1: 33c0
    "mov dx, [bp + 0x14]\n"  // 38e3: 8b5614
    "jmp 0x3ae6\n"  // 38e6: e9fd01
    "cmp [bp + 0x14], 0x2\n"  // 38e9: 837e1402
    "je 0x38f2\n"  // 38ed: 7403
    "jmp 0x39be\n"  // 38ef: e9cc00
    "mov ax, [bp + 0x10]\n"  // 38f2: 8b4610
    "sub ax, [bp + 0xc]\n"  // 38f5: 2b460c
    "inc ax\n"  // 38f8: 40
    "mov [bp - 0x6], ax\n"  // 38f9: 8946fa
    "mov bx, [bp + 0x12]\n"  // 38fc: 8b5e12
    "sub bx, [bp + 0xe]\n"  // 38ff: 2b5e0e
    "inc bx\n"  // 3902: 43
    "mov [bp - 0x4], bx\n"  // 3903: 895efc
    "mul bx\n"  // 3906: f7e3
    "mov [bp - 0x8], ax\n"  // 3908: 8946f8
    "mov [bp - 0xa], dx\n"  // 390b: 8956f6
    "add ax, 0xc\n"  // 390e: 050c00
    "add ax, 0xf\n"  // 3911: 050f00
    "mov cl, 0x4\n"  // 3914: b104
    "shr ax, cl\n"  // 3916: d3e8
    "mov [bp - 0x2], ax\n"  // 3918: 8946fe
    "add ax, [cs:0xcac]\n"  // 391b: 2e0306ac0c
    "cmp ax, 0x4180\n"  // 3920: 3d8041
    "jbe 0x3928\n"  // 3923: 7603
    "jmp 0x3b1f\n"  // 3925: e9f701
    "mov bx, [cs:0xcac]\n"  // 3928: 2e8b1eac0c
    "mov [bp - 0xe], bx\n"  // 392d: 895ef2
    "mov [cs:0xcac], ax\n"  // 3930: 2ea3ac0c
    "mov bx, 0x25b\n"  // 3934: bb5b02
    "mov cx, 0x10\n"  // 3937: b91000
    "xor dx, dx\n"  // 393a: 33d2
    "mov ax, [cs:bx]\n"  // 393c: 2e8b07
    "or ax, ax\n"  // 393f: 0bc0
    "je 0x394c\n"  // 3941: 7409
    "inc dx\n"  // 3943: 42
    "add bx, 0x2\n"  // 3944: 83c302
    "loop 0x393c\n"  // 3947: e2f3
    "jmp 0x3b5c\n"  // 3949: e91002
    "mov [bp - 0xc], dx\n"  // 394c: 8956f4
    "mov ax, [cs:0xcaa]\n"  // 394f: 2ea1aa0c
    "inc ax\n"  // 3953: 40
    "mov [cs:0xcaa], ax\n"  // 3954: 2ea3aa0c
    "mov [cs:bx], ax\n"  // 3958: 2e8907
    "dec ax\n"  // 395b: 48
    "mov cl, 0x2\n"  // 395c: b102
    "shl ax, cl\n"  // 395e: d3e0
    "mov bx, 0xbda\n"  // 3960: bbda0b
    "add bx, ax\n"  // 3963: 03d8
    "mov ax, [bp - 0xe]\n"  // 3965: 8b46f2
    "mov [cs:bx], ax\n"  // 3968: 2e8907
    "add ax, [cs:0x1e1]\n"  // 396b: 2e0306e101
    "mov es, ax\n"  // 3970: 8ec0
    "mov ax, [bp - 0x2]\n"  // 3972: 8b46fe
    "mov [cs:bx + 0x2], ax\n"  // 3975: 2e894702
    "mov ax, [cs:0x1e5]\n"  // 3979: 2ea1e501
    "mov ds, ax\n"  // 397d: 8ed8
    "mov ax, [bp + 0xe]\n"  // 397f: 8b460e
    "mov bx, 0x140\n"  // 3982: bb4001
    "mul bx\n"  // 3985: f7e3
    "add ax, [bp + 0xc]\n"  // 3987: 03460c
    "mov [bp - 0x2], ax\n"  // 398a: 8946fe
    "xor di, di\n"  // 398d: 33ff
    "stosw [es:di], ax\n"  // 398f: ab
    "xor ax, ax\n"  // 3990: 33c0
    "stosw [es:di], ax\n"  // 3992: ab
    "mov ax, [bp - 0x4]\n"  // 3993: 8b46fc
    "stosw [es:di], ax\n"  // 3996: ab
    "mov ax, [bp - 0x6]\n"  // 3997: 8b46fa
    "stosw [es:di], ax\n"  // 399a: ab
    "mov ax, [bp - 0x8]\n"  // 399b: 8b46f8
    "stosw [es:di], ax\n"  // 399e: ab
    "mov ax, [bp - 0xa]\n"  // 399f: 8b46f6
    "stosw [es:di], ax\n"  // 39a2: ab
    "mov si, [bp - 0x2]\n"  // 39a3: 8b76fe
    "add [bp - 0x2], 0x140\n"  // 39a6: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 39ab: 8b4efa
    "rep movsb [es:di], [si]\n"  // 39ae: f3a4
    "dec [bp - 0x4]\n"  // 39b0: ff4efc
    "jne 0x39a3\n"  // 39b3: 75ee
    "mov ax, [bp - 0xc]\n"  // 39b5: 8b46f4
    "mov dx, [bp + 0x14]\n"  // 39b8: 8b5614
    "jmp 0x3ae6\n"  // 39bb: e92801
    "mov ax, [bp + 0x10]\n"  // 39be: 8b4610
    "sub ax, [bp + 0xc]\n"  // 39c1: 2b460c
    "inc ax\n"  // 39c4: 40
    "mov [bp - 0x6], ax\n"  // 39c5: 8946fa
    "mov bx, [bp + 0x12]\n"  // 39c8: 8b5e12
    "sub bx, [bp + 0xe]\n"  // 39cb: 2b5e0e
    "inc bx\n"  // 39ce: 43
    "mov [bp - 0x4], bx\n"  // 39cf: 895efc
    "mul bx\n"  // 39d2: f7e3
    "mov [bp - 0x8], ax\n"  // 39d4: 8946f8
    "mov [bp - 0xa], dx\n"  // 39d7: 8956f6
    "add ax, 0xc\n"  // 39da: 050c00
    "add ax, 0xf\n"  // 39dd: 050f00
    "mov cl, 0x4\n"  // 39e0: b104
    "shr ax, cl\n"  // 39e2: d3e8
    "mov [bp - 0x2], ax\n"  // 39e4: 8946fe
    "add ax, [cs:0x391]\n"  // 39e7: 2e03069103
    "cmp ax, [cs:0x1ff]\n"  // 39ec: 2e3b06ff01
    "jbe 0x39f6\n"  // 39f1: 7603
    "jmp 0x3ab7\n"  // 39f3: e9c100
    "mov bx, [cs:0x391]\n"  // 39f6: 2e8b1e9103
    "mov [bp - 0xe], bx\n"  // 39fb: 895ef2
    "mov [cs:0x391], ax\n"  // 39fe: 2ea39103
    "mov bx, 0x29b\n"  // 3a02: bb9b02
    "mov cx, 0x14\n"  // 3a05: b91400
    "xor dx, dx\n"  // 3a08: 33d2
    "mov ax, [cs:bx]\n"  // 3a0a: 2e8b07
    "or ax, ax\n"  // 3a0d: 0bc0
    "je 0x3a1a\n"  // 3a0f: 7409
    "inc dx\n"  // 3a11: 42
    "add bx, 0x2\n"  // 3a12: 83c302
    "loop 0x3a0a\n"  // 3a15: e2f3
    "jmp 0x3aee\n"  // 3a17: e9d400
    "mov [bp - 0xc], dx\n"  // 3a1a: 8956f4
    "mov ax, [cs:0x38f]\n"  // 3a1d: 2ea18f03
    "inc ax\n"  // 3a21: 40
    "mov [cs:0x38f], ax\n"  // 3a22: 2ea38f03
    "mov [cs:bx], ax\n"  // 3a26: 2e8907
    "dec ax\n"  // 3a29: 48
    "mov cl, 0x2\n"  // 3a2a: b102
    "shl ax, cl\n"  // 3a2c: d3e0
    "mov bx, 0x2eb\n"  // 3a2e: bbeb02
    "add bx, ax\n"  // 3a31: 03d8
    "mov ax, [bp - 0xe]\n"  // 3a33: 8b46f2
    "mov [cs:bx], ax\n"  // 3a36: 2e8907
    "mov ax, [bp - 0x2]\n"  // 3a39: 8b46fe
    "mov [cs:bx + 0x2], ax\n"  // 3a3c: 2e894702
    "mov ax, [cs:0x203]\n"  // 3a40: 2ea10302
    "mov es, ax\n"  // 3a44: 8ec0
    "mov ax, [bp - 0xe]\n"  // 3a46: 8b46f2
    "mov di, ax\n"  // 3a49: 8bf8
    "and di, 0x3ff\n"  // 3a4b: 81e7ff03
    "mov cl, 0x4\n"  // 3a4f: b104
    "shl di, cl\n"  // 3a51: d3e7
    "mov cl, 0xa\n"  // 3a53: b10a
    "shr ax, cl\n"  // 3a55: d3e8
    "mov [cs:0x3c8e], ax\n"  // 3a57: 2ea38e3c
    "call 0x3b90\n"  // 3a5b: e83201
    "mov ax, [cs:0x1e5]\n"  // 3a5e: 2ea1e501
    "mov ds, ax\n"  // 3a62: 8ed8
    "mov ax, [bp + 0xe]\n"  // 3a64: 8b460e
    "mov bx, 0x140\n"  // 3a67: bb4001
    "mul bx\n"  // 3a6a: f7e3
    "add ax, [bp + 0xc]\n"  // 3a6c: 03460c
    "mov [bp - 0x2], ax\n"  // 3a6f: 8946fe
    "stosw [es:di], ax\n"  // 3a72: ab
    "xor ax, ax\n"  // 3a73: 33c0
    "stosw [es:di], ax\n"  // 3a75: ab
    "mov ax, [bp - 0x4]\n"  // 3a76: 8b46fc
    "stosw [es:di], ax\n"  // 3a79: ab
    "mov ax, [bp - 0x6]\n"  // 3a7a: 8b46fa
    "stosw [es:di], ax\n"  // 3a7d: ab
    "mov ax, [bp - 0x8]\n"  // 3a7e: 8b46f8
    "stosw [es:di], ax\n"  // 3a81: ab
    "mov ax, [bp - 0xa]\n"  // 3a82: 8b46f6
    "stosw [es:di], ax\n"  // 3a85: ab
    "mov si, [bp - 0x2]\n"  // 3a86: 8b76fe
    "add [bp - 0x2], 0x140\n"  // 3a89: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 3a8e: 8b4efa
    "rep movsb [es:di], [si]\n"  // 3a91: f3a4
    "test di, 0xc000\n"  // 3a93: f7c700c0
    "je 0x3aa9\n"  // 3a97: 7410
    "inc [cs:0x3c8e]\n"  // 3a99: 2eff068e3c
    "mov ax, [cs:0x3c8e]\n"  // 3a9e: 2ea18e3c
    "call 0x3b90\n"  // 3aa2: e8eb00
    "and di, 0x3fff\n"  // 3aa5: 81e7ff3f
    "dec [bp - 0x4]\n"  // 3aa9: ff4efc
    "jne 0x3a86\n"  // 3aac: 75d8
    "mov ax, [bp - 0xc]\n"  // 3aae: 8b46f4
    "mov dx, [bp + 0x14]\n"  // 3ab1: 8b5614
    "jmp 0x3ae6\n"  // 3ab4: e92f00
    "pop si\n"  // 3ae6: 5e
    "pop di\n"  // 3ae7: 5f
    "pop ds\n"  // 3ae8: 1f
    "pop es\n"  // 3ae9: 07
    "mov sp, bp\n"  // 3aea: 8be5
    "pop bp\n"  // 3aec: 5d
    "ret \n"  // 3aed: c3
        ".att_syntax");
}

/* dos_con_loc_3b1f (0x3b1f-0x3b90) — inline asm */
void dos_con_loc_3b1f(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov ax, cs\n"  // 3b1f: 8cc8
        ".att_syntax");
}

/* dos_file_loc_3b90 (0x3b90-0x3ba5) — inline asm */
void dos_file_loc_3b90(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ax\n"  // 3b90: 50
    "mov ah, 0x44\n"  // 3b91: b444
    "mov al, 0x0\n"  // 3b93: b000
    "pop bx\n"  // 3b95: 5b
    "mov dx, [cs:0x201]\n"  // 3b96: 2e8b160102
    "int 0x67\n"  // 3b9b: cd67
    "inc bx\n"  // 3b9d: 43
    "mov ah, 0x44\n"  // 3b9e: b444
    "mov al, 0x1\n"  // 3ba0: b001
    "int 0x67\n"  // 3ba2: cd67
    "ret \n"  // 3ba4: c3
        ".att_syntax");
}

/* dos_read_file_4 (0x3ba5-0x3d0b) — inline asm */
void dos_read_file_4(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 3ba5: 55
    "mov bp, sp\n"  // 3ba6: 8bec
    "sub sp, 0xe\n"  // 3ba8: 83ec0e
    "push es\n"  // 3bab: 06
    "push ds\n"  // 3bac: 1e
    "push di\n"  // 3bad: 57
    "push si\n"  // 3bae: 56
    "mov ax, ds\n"  // 3baf: 8cd8
    "mov es, ax\n"  // 3bb1: 8ec0
    "cmp [bp + 0xe], 0x3\n"  // 3bb3: 837e0e03
    "jne 0x3bee\n"  // 3bb7: 7535
    "lea bx, [bp - 0xa]\n"  // 3bb9: 8d5ef6
    "mov dx, bx\n"  // 3bbc: 8bd3
    "mov ax, ss\n"  // 3bbe: 8cd0
    "mov ds, ax\n"  // 3bc0: 8ed8
    "mov cx, 0xa\n"  // 3bc2: b90a00
    "mov bx, [bp + 0x12]\n"  // 3bc5: 8b5e12
    "mov ah, 0x3f\n"  // 3bc8: b43f
    "int 0x21\n"  // 3bca: cd21
    "mov ax, [cs:0x1e5]\n"  // 3bcc: 2ea1e501
    "mov ds, ax\n"  // 3bd0: 8ed8
    "mov cx, [bp - 0x4]\n"  // 3bd2: 8b4efc
    "push cx\n"  // 3bd5: 51
    "mov dx, [bp - 0x2]\n"  // 3bd6: 8b56fe
    "add [bp - 0x2], 0x140\n"  // 3bd9: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 3bde: 8b4efa
    "mov bx, [bp + 0x12]\n"  // 3be1: 8b5e12
    "mov ah, 0x3f\n"  // 3be4: b43f
    "int 0x21\n"  // 3be6: cd21
    "pop cx\n"  // 3be8: 59
    "loop 0x3bd5\n"  // 3be9: e2ea
    "jmp 0x3d03\n"  // 3beb: e91501
    "cmp [bp + 0xe], 0x2\n"  // 3bee: 837e0e02
    "je 0x3bf7\n"  // 3bf2: 7403
    "jmp 0x3c64\n"  // 3bf4: e96d00
    "mov ax, [bp + 0xc]\n"  // 3bf7: 8b460c
    "shl ax, 0x1\n"  // 3bfa: d1e0
    "mov bx, 0x25b\n"  // 3bfc: bb5b02
    "add bx, ax\n"  // 3bff: 03d8
    "mov ax, [cs:bx]\n"  // 3c01: 2e8b07
    "dec ax\n"  // 3c04: 48
    "mov cl, 0x2\n"  // 3c05: b102
    "shl ax, cl\n"  // 3c07: d3e0
    "mov bx, 0xbda\n"  // 3c09: bbda0b
    "add bx, ax\n"  // 3c0c: 03d8
    "mov ax, [cs:bx]\n"  // 3c0e: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 3c11: 2e0306e101
    "mov ds, ax\n"  // 3c16: 8ed8
    "mov ax, [cs:0x1e5]\n"  // 3c18: 2ea1e501
    "mov es, ax\n"  // 3c1c: 8ec0
    "xor si, si\n"  // 3c1e: 33f6
    "lodsw ax, [si]\n"  // 3c20: ad
    "mov [bp - 0x2], ax\n"  // 3c21: 8946fe
    "lodsw ax, [si]\n"  // 3c24: ad
    "lodsw ax, [si]\n"  // 3c25: ad
    "mov [bp - 0x4], ax\n"  // 3c26: 8946fc
    "lodsw ax, [si]\n"  // 3c29: ad
    "mov [bp - 0x6], ax\n"  // 3c2a: 8946fa
    "lodsw ax, [si]\n"  // 3c2d: ad
    "lodsw ax, [si]\n"  // 3c2e: ad
    "mov di, [bp - 0x2]\n"  // 3c2f: 8b7efe
    "add [bp - 0x2], 0x140\n"  // 3c32: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 3c37: 8b4efa
    "rep movsb [es:di], [si]\n"  // 3c3a: f3a4
    "dec [bp - 0x4]\n"  // 3c3c: ff4efc
    "jne 0x3c2f\n"  // 3c3f: 75ee
    "cmp [bp + 0x10], 0x0\n"  // 3c41: 837e1000
    "je 0x3c61\n"  // 3c45: 741a
    "mov ax, [bp + 0xc]\n"  // 3c47: 8b460c
    "shl ax, 0x1\n"  // 3c4a: d1e0
    "mov bx, 0x25b\n"  // 3c4c: bb5b02
    "add bx, ax\n"  // 3c4f: 03d8
    "mov ax, [cs:bx]\n"  // 3c51: 2e8b07
    "mov [cs:bx], 0x0\n"  // 3c54: 2ec7070000
    "dec [cs:0xcaa]\n"  // 3c59: 2eff0eaa0c
    "call 0x43e1\n"  // 3c5e: e88007
    "jmp 0x3d03\n"  // 3c61: e99f00
    "mov ax, [bp + 0xc]\n"  // 3c64: 8b460c
    "shl ax, 0x1\n"  // 3c67: d1e0
    "mov bx, 0x29b\n"  // 3c69: bb9b02
    "add bx, ax\n"  // 3c6c: 03d8
    "mov ax, [cs:bx]\n"  // 3c6e: 2e8b07
    "dec ax\n"  // 3c71: 48
    "mov cl, 0x2\n"  // 3c72: b102
    "shl ax, cl\n"  // 3c74: d3e0
    "mov bx, 0x2eb\n"  // 3c76: bbeb02
    "add bx, ax\n"  // 3c79: 03d8
    "mov ax, [cs:bx]\n"  // 3c7b: 2e8b07
    "mov [bp - 0x2], ax\n"  // 3c7e: 8946fe
    "mov cl, 0xa\n"  // 3c81: b10a
    "shr ax, cl\n"  // 3c83: d3e8
    "mov [cs:0x3c8e], ax\n"  // 3c85: 2ea38e3c
    "call 0x3b90\n"  // 3c89: e804ff
    "mov si, [bp - 0x2]\n"  // 3c8c: 8b76fe
    "and si, 0x3ff\n"  // 3c8f: 81e6ff03
    "mov cl, 0x4\n"  // 3c93: b104
    "shl si, cl\n"  // 3c95: d3e6
    "mov ax, [cs:0x1e5]\n"  // 3c97: 2ea1e501
    "mov es, ax\n"  // 3c9b: 8ec0
    "mov ax, [cs:0x203]\n"  // 3c9d: 2ea10302
    "mov ds, ax\n"  // 3ca1: 8ed8
    "lodsw ax, [si]\n"  // 3ca3: ad
    "mov [bp - 0x2], ax\n"  // 3ca4: 8946fe
    "lodsw ax, [si]\n"  // 3ca7: ad
    "lodsw ax, [si]\n"  // 3ca8: ad
    "mov [bp - 0x4], ax\n"  // 3ca9: 8946fc
    "lodsw ax, [si]\n"  // 3cac: ad
    "mov [bp - 0x6], ax\n"  // 3cad: 8946fa
    "lodsw ax, [si]\n"  // 3cb0: ad
    "lodsw ax, [si]\n"  // 3cb1: ad
    "mov di, [bp - 0x2]\n"  // 3cb2: 8b7efe
    "add [bp - 0x2], 0x140\n"  // 3cb5: 8146fe4001
    "mov cx, [bp - 0x6]\n"  // 3cba: 8b4efa
    "rep movsb [es:di], [si]\n"  // 3cbd: f3a4
    "test si, 0xc000\n"  // 3cbf: f7c600c0
    "je 0x3cd5\n"  // 3cc3: 7410
    "inc [cs:0x3c8e]\n"  // 3cc5: 2eff068e3c
    "mov ax, [cs:0x3c8e]\n"  // 3cca: 2ea18e3c
    "call 0x3b90\n"  // 3cce: e8bffe
    "and si, 0x3fff\n"  // 3cd1: 81e6ff3f
    "dec [bp - 0x4]\n"  // 3cd5: ff4efc
    "jne 0x3cb2\n"  // 3cd8: 75d8
    "cmp [bp + 0x10], 0x0\n"  // 3cda: 837e1000
    "je 0x3d03\n"  // 3cde: 7423
    "mov cx, [cs:0x38f]\n"  // 3ce0: 2e8b0e8f03
    "dec cx\n"  // 3ce5: 49
    "mov [cs:0x38f], cx\n"  // 3ce6: 2e890e8f03
    "mov ax, [bp + 0xc]\n"  // 3ceb: 8b460c
    "shl ax, 0x1\n"  // 3cee: d1e0
    "mov bx, 0x29b\n"  // 3cf0: bb9b02
    "add bx, ax\n"  // 3cf3: 03d8
    "mov ax, [cs:bx]\n"  // 3cf5: 2e8b07
    "mov [cs:bx], 0x0\n"  // 3cf8: 2ec7070000
    "call 0xe34\n"  // 3cfd: e834d1
    "call 0xe71\n"  // 3d00: e86ed1
    "pop si\n"  // 3d03: 5e
    "pop di\n"  // 3d04: 5f
    "pop ds\n"  // 3d05: 1f
    "pop es\n"  // 3d06: 07
    "mov sp, bp\n"  // 3d07: 8be5
    "pop bp\n"  // 3d09: 5d
    "ret \n"  // 3d0a: c3
        ".att_syntax");
}

/* dos_file_loc_3d0b (0x3d0b-0x3d72) — inline asm */
void dos_file_loc_3d0b(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ds\n"  // 3d0b: 1e
    "push es\n"  // 3d0c: 06
    "push si\n"  // 3d0d: 56
    "push di\n"  // 3d0e: 57
    "mov dx, [cs:0x1e9]\n"  // 3d0f: 2e8b16e901
    "mov ds, dx\n"  // 3d14: 8eda
    "xor dx, dx\n"  // 3d16: 33d2
    "mov cx, 0x1000\n"  // 3d18: b90010
    "mov bx, [bp - 0x2]\n"  // 3d1b: 8b5efe
    "mov ah, 0x3f\n"  // 3d1e: b43f
    "int 0x21\n"  // 3d20: cd21
    "or ax, ax\n"  // 3d22: 0bc0
    "je 0x3d6d\n"  // 3d24: 7447
    "mov cx, ax\n"  // 3d26: 8bc8
    "push ax\n"  // 3d28: 50
    "mov bx, [bp - 0x4]\n"  // 3d29: 8b5efc
    "xor dx, dx\n"  // 3d2c: 33d2
    "mov ah, 0x40\n"  // 3d2e: b440
    "int 0x21\n"  // 3d30: cd21
    "jb 0x3d39\n"  // 3d32: 7205
    "pop cx\n"  // 3d34: 59
    "cmp cx, ax\n"  // 3d35: 3bc8
    "je 0x3d16\n"  // 3d37: 74dd
    "pop di\n"  // 3d6d: 5f
    "pop si\n"  // 3d6e: 5e
    "pop es\n"  // 3d6f: 07
    "pop ds\n"  // 3d70: 1f
    "ret \n"  // 3d71: c3
        ".att_syntax");
}

/* dos_read_file_5 (0x3d72-0x3f45) — inline asm */
void dos_read_file_5(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 3d72: 55
    "mov bp, sp\n"  // 3d73: 8bec
    "sub sp, 0x14\n"  // 3d75: 83ec14
    "push es\n"  // 3d78: 06
    "push ds\n"  // 3d79: 1e
    "push di\n"  // 3d7a: 57
    "push si\n"  // 3d7b: 56
    "mov ax, ds\n"  // 3d7c: 8cd8
    "mov es, ax\n"  // 3d7e: 8ec0
    "mov ax, [bp + 0xc]\n"  // 3d80: 8b460c
    "test ah, 0x80\n"  // 3d83: f6c480
    "je 0x3da8\n"  // 3d86: 7420
    "dec [cs:0x38f]\n"  // 3d88: 2eff0e8f03
    "mov ax, [bp + 0xe]\n"  // 3d8d: 8b460e
    "shl ax, 0x1\n"  // 3d90: d1e0
    "mov bx, 0x2c3\n"  // 3d92: bbc302
    "add bx, ax\n"  // 3d95: 03d8
    "mov ax, [cs:bx]\n"  // 3d97: 2e8b07
    "mov [cs:bx], 0x0\n"  // 3d9a: 2ec7070000
    "call 0xe34\n"  // 3d9f: e892d0
    "call 0xe71\n"  // 3da2: e8ccd0
    "jmp 0x3eee\n"  // 3da5: e94601
    "mov [bp - 0x2], ax\n"  // 3da8: 8946fe
    "mov ax, [bp + 0x10]\n"  // 3dab: 8b4610
    "or ax, ax\n"  // 3dae: 0bc0
    "je 0x3dbe\n"  // 3db0: 740c
    "mov ax, [bp + 0xe]\n"  // 3db2: 8b460e
    "mov [bp - 0x4], ax\n"  // 3db5: 8946fc
    "call 0x3d0b\n"  // 3db8: e850ff
    "jmp 0x3eee\n"  // 3dbb: e93001
    "mov ax, [bp + 0xe]\n"  // 3dbe: 8b460e
    "shl ax, 0x1\n"  // 3dc1: d1e0
    "mov bx, 0x2c3\n"  // 3dc3: bbc302
    "add bx, ax\n"  // 3dc6: 03d8
    "mov ax, [cs:bx]\n"  // 3dc8: 2e8b07
    "or ax, ax\n"  // 3dcb: 0bc0
    "je 0x3dd2\n"  // 3dcd: 7403
    "jmp 0x3ef6\n"  // 3dcf: e92401
    "inc [cs:0x38f]\n"  // 3dd2: 2eff068f03
    "mov ax, [cs:0x38f]\n"  // 3dd7: 2ea18f03
    "mov [cs:bx], ax\n"  // 3ddb: 2e8907
    "dec ax\n"  // 3dde: 48
    "mov cl, 0x2\n"  // 3ddf: b102
    "shl ax, cl\n"  // 3de1: d3e0
    "mov bx, 0x2eb\n"  // 3de3: bbeb02
    "add bx, ax\n"  // 3de6: 03d8
    "mov [bp - 0x2], bx\n"  // 3de8: 895efe
    "mov ax, [cs:0x391]\n"  // 3deb: 2ea19103
    "mov [cs:bx], ax\n"  // 3def: 2e8907
    "mov ax, [cs:0x1e9]\n"  // 3df2: 2ea1e901
    "mov ds, ax\n"  // 3df6: 8ed8
    "xor dx, dx\n"  // 3df8: 33d2
    "mov cx, 0x1000\n"  // 3dfa: b90010
    "mov bx, [bp + 0xc]\n"  // 3dfd: 8b5e0c
    "mov ah, 0x3f\n"  // 3e00: b43f
    "int 0x21\n"  // 3e02: cd21
    "mov bx, 0x0\n"  // 3e04: bb0000
    "mov ax, [bx]\n"  // 3e07: 8b07
    "mov cx, 0x6\n"  // 3e09: b90600
    "mul cx\n"  // 3e0c: f7e1
    "add ax, 0x4\n"  // 3e0e: 050400
    "mov bx, ax\n"  // 3e11: 8bd8
    "sub bx, 0x6\n"  // 3e13: 83eb06
    "mov cl, [bx + 0x5]\n"  // 3e16: 8a4f05
    "mov al, [bx + 0x4]\n"  // 3e19: 8a4704
    "mul cl\n"  // 3e1c: f6e1
    "mov cl, 0x3\n"  // 3e1e: b103
    "shl ax, cl\n"  // 3e20: d3e0
    "mov cx, [bx + 0x2]\n"  // 3e22: 8b4f02
    "add ax, cx\n"  // 3e25: 03c1
    "push ax\n"  // 3e27: 50
    "xor dx, dx\n"  // 3e28: 33d2
    "mov ax, [bx]\n"  // 3e2a: 8b07
    "mov cx, 0x10\n"  // 3e2c: b91000
    "mul cx\n"  // 3e2f: f7e1
    "pop cx\n"  // 3e31: 59
    "add cx, 0xf\n"  // 3e32: 83c10f
    "add ax, cx\n"  // 3e35: 03c1
    "adc dx, 0x0\n"  // 3e37: 83d200
    "mov [bp - 0x6], ax\n"  // 3e3a: 8946fa
    "mov [bp - 0x8], dx\n"  // 3e3d: 8956f8
    "mov cx, 0x10\n"  // 3e40: b91000
    "div cx\n"  // 3e43: f7f1
    "mov di, [cs:0x391]\n"  // 3e45: 2e8b3e9103
    "mov bx, [bp - 0x2]\n"  // 3e4a: 8b5efe
    "mov [cs:bx + 0x2], ax\n"  // 3e4d: 2e894702
    "add [cs:0x391], ax\n"  // 3e51: 2e01069103
    "mov ax, [cs:0x391]\n"  // 3e56: 2ea19103
    "cmp ax, [cs:0x1ff]\n"  // 3e5a: 2e3b06ff01
    "jbe 0x3e64\n"  // 3e5f: 7603
    "jmp 0x3f3e\n"  // 3e61: e9da00
    "mov ax, di\n"  // 3e64: 8bc7
    "mov cl, 0xa\n"  // 3e66: b10a
    "shr ax, cl\n"  // 3e68: d3e8
    "mov [cs:0x3c8e], ax\n"  // 3e6a: 2ea38e3c
    "call 0x3b90\n"  // 3e6e: e81ffd
    "and di, 0x3ff\n"  // 3e71: 81e7ff03
    "mov cl, 0x4\n"  // 3e75: b104
    "shl di, cl\n"  // 3e77: d3e7
    "xor si, si\n"  // 3e79: 33f6
    "mov ax, [cs:0x1e9]\n"  // 3e7b: 2ea1e901
    "mov ds, ax\n"  // 3e7f: 8ed8
    "mov ax, [cs:0x203]\n"  // 3e81: 2ea10302
    "mov es, ax\n"  // 3e85: 8ec0
    "mov cx, 0x1000\n"  // 3e87: b90010
    "rep movsb [es:di], [si]\n"  // 3e8a: f3a4
    "mov ax, [bp - 0x6]\n"  // 3e8c: 8b46fa
    "mov dx, [bp - 0x8]\n"  // 3e8f: 8b56f8
    "sub ax, 0x1000\n"  // 3e92: 2d0010
    "sbb dx, 0x0\n"  // 3e95: 83da00
    "mov [bp - 0x6], ax\n"  // 3e98: 8946fa
    "mov [bp - 0x8], dx\n"  // 3e9b: 8956f8
    "mov dx, di\n"  // 3e9e: 8bd7
    "test dx, 0xc000\n"  // 3ea0: f7c200c0
    "je 0x3eb6\n"  // 3ea4: 7410
    "sub di, 0x4000\n"  // 3ea6: 81ef0040
    "inc [cs:0x3c8e]\n"  // 3eaa: 2eff068e3c
    "mov ax, [cs:0x3c8e]\n"  // 3eaf: 2ea18e3c
    "call 0x3b90\n"  // 3eb3: e8dafc
    "mov ax, [bp - 0x6]\n"  // 3eb6: 8b46fa
    "mov dx, [bp - 0x8]\n"  // 3eb9: 8b56f8
    "or ax, dx\n"  // 3ebc: 0bc2
    "je 0x3eee\n"  // 3ebe: 742e
    "mov cx, 0x1000\n"  // 3ec0: b90010
    "mov ax, [bp - 0x6]\n"  // 3ec3: 8b46fa
    "or dx, dx\n"  // 3ec6: 0bd2
    "jne 0x3ed0\n"  // 3ec8: 7506
    "cmp ax, cx\n"  // 3eca: 3bc1
    "jae 0x3ed0\n"  // 3ecc: 7302
    "mov cx, ax\n"  // 3ece: 8bc8
    "sub ax, cx\n"  // 3ed0: 2bc1
    "sbb dx, 0x0\n"  // 3ed2: 83da00
    "mov [bp - 0x6], ax\n"  // 3ed5: 8946fa
    "mov [bp - 0x8], dx\n"  // 3ed8: 8956f8
    "mov dx, 0x0\n"  // 3edb: ba0000
    "mov bx, [bp + 0xc]\n"  // 3ede: 8b5e0c
    "mov ah, 0x3f\n"  // 3ee1: b43f
    "push cx\n"  // 3ee3: 51
    "int 0x21\n"  // 3ee4: cd21
    "pop cx\n"  // 3ee6: 59
    "mov si, 0x0\n"  // 3ee7: be0000
    "rep movsb [es:di], [si]\n"  // 3eea: f3a4
    "jmp 0x3e9e\n"  // 3eec: ebb0
    "pop si\n"  // 3eee: 5e
    "pop di\n"  // 3eef: 5f
    "pop ds\n"  // 3ef0: 1f
    "pop es\n"  // 3ef1: 07
    "mov sp, bp\n"  // 3ef2: 8be5
    "pop bp\n"  // 3ef4: 5d
    "ret \n"  // 3ef5: c3
    "mov ax, cs\n"  // 3f3e: 8cc8
    "mov ds, ax\n"  // 3f40: 8ed8
    "mov dx, 0x404e\n"  // 3f42: ba4e40
        ".att_syntax");
}

/* dos_con_loc_3f45 (0x3f45-0x3f73) */
void dos_con_loc_3f45(void)
{
    u16 ax;
    u8 ah;

    *(uint8 *)&ah = (uint8)0x9;
}

/* loc_3f73 (0x3f73-0x4088) — inline asm */
void loc_3f73(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 3f73: 55
    "mov bp, sp\n"  // 3f74: 8bec
    "sub sp, 0x14\n"  // 3f76: 83ec14
    "push es\n"  // 3f79: 06
    "push ds\n"  // 3f7a: 1e
    "push di\n"  // 3f7b: 57
    "push si\n"  // 3f7c: 56
    "mov ax, ds\n"  // 3f7d: 8cd8
    "mov es, ax\n"  // 3f7f: 8ec0
    "mov ax, [bp + 0xc]\n"  // 3f81: 8b460c
    "test ah, 0x80\n"  // 3f84: f6c480
    "je 0x3fa9\n"  // 3f87: 7420
    "dec [cs:0x38f]\n"  // 3f89: 2eff0e8f03
    "mov ax, [bp + 0xe]\n"  // 3f8e: 8b460e
    "shl ax, 0x1\n"  // 3f91: d1e0
    "mov bx, 0x2d7\n"  // 3f93: bbd702
    "add bx, ax\n"  // 3f96: 03d8
    "mov ax, [cs:bx]\n"  // 3f98: 2e8b07
    "mov [cs:bx], 0x0\n"  // 3f9b: 2ec7070000
    "call 0xe34\n"  // 3fa0: e891ce
    "call 0xe71\n"  // 3fa3: e8cbce
    "jmp 0x4079\n"  // 3fa6: e9d000
    "mov [bp - 0x2], ax\n"  // 3fa9: 8946fe
    "mov ax, [bp + 0x10]\n"  // 3fac: 8b4610
    "or ax, ax\n"  // 3faf: 0bc0
    "je 0x3fbf\n"  // 3fb1: 740c
    "mov ax, [bp + 0xe]\n"  // 3fb3: 8b460e
    "mov [bp - 0x4], ax\n"  // 3fb6: 8946fc
    "call 0x3d0b\n"  // 3fb9: e84ffd
    "jmp 0x4079\n"  // 3fbc: e9ba00
    "mov ax, [bp + 0xe]\n"  // 3fbf: 8b460e
    "shl ax, 0x1\n"  // 3fc2: d1e0
    "mov bx, 0x2d7\n"  // 3fc4: bbd702
    "add bx, ax\n"  // 3fc7: 03d8
    "mov ax, [cs:bx]\n"  // 3fc9: 2e8b07
    "or ax, ax\n"  // 3fcc: 0bc0
    "je 0x3fd3\n"  // 3fce: 7403
    "jmp 0x4081\n"  // 3fd0: e9ae00
    "inc [cs:0x38f]\n"  // 3fd3: 2eff068f03
    "mov ax, [cs:0x38f]\n"  // 3fd8: 2ea18f03
    "mov [cs:bx], ax\n"  // 3fdc: 2e8907
    "dec ax\n"  // 3fdf: 48
    "mov cl, 0x2\n"  // 3fe0: b102
    "shl ax, cl\n"  // 3fe2: d3e0
    "mov bx, 0x2eb\n"  // 3fe4: bbeb02
    "add bx, ax\n"  // 3fe7: 03d8
    "mov [bp - 0x2], bx\n"  // 3fe9: 895efe
    "mov ax, [cs:0x391]\n"  // 3fec: 2ea19103
    "mov [cs:bx], ax\n"  // 3ff0: 2e8907
    "mov ax, 0xfa0\n"  // 3ff3: b8a00f
    "mov [cs:bx + 0x2], ax\n"  // 3ff6: 2e894702
    "mov di, [cs:0x391]\n"  // 3ffa: 2e8b3e9103
    "add [cs:0x391], ax\n"  // 3fff: 2e01069103
    "mov ax, [cs:0x391]\n"  // 4004: 2ea19103
    "cmp ax, [cs:0x1ff]\n"  // 4008: 2e3b06ff01
    "jbe 0x4012\n"  // 400d: 7603
    "jmp 0x40cb\n"  // 400f: e9b900
    "mov ax, 0xfa00\n"  // 4012: b800fa
    "mov [bp - 0x6], ax\n"  // 4015: 8946fa
    "mov ax, di\n"  // 4018: 8bc7
    "mov cl, 0xa\n"  // 401a: b10a
    "shr ax, cl\n"  // 401c: d3e8
    "mov [cs:0x3c8e], ax\n"  // 401e: 2ea38e3c
    "call 0x3b90\n"  // 4022: e86bfb
    "and di, 0x3ff\n"  // 4025: 81e7ff03
    "mov cl, 0x4\n"  // 4029: b104
    "shl di, cl\n"  // 402b: d3e7
    "mov dx, di\n"  // 402d: 8bd7
    "test dx, 0xc000\n"  // 402f: f7c200c0
    "je 0x4045\n"  // 4033: 7410
    "sub di, 0x4000\n"  // 4035: 81ef0040
    "inc [cs:0x3c8e]\n"  // 4039: 2eff068e3c
    "mov ax, [cs:0x3c8e]\n"  // 403e: 2ea18e3c
    "call 0x3b90\n"  // 4042: e84bfb
    "mov ax, [bp - 0x6]\n"  // 4045: 8b46fa
    "or ax, ax\n"  // 4048: 0bc0
    "je 0x4079\n"  // 404a: 742d
    "mov cx, 0x1000\n"  // 404c: b90010
    "cmp ax, cx\n"  // 404f: 3bc1
    "jae 0x4055\n"  // 4051: 7302
    "mov cx, ax\n"  // 4053: 8bc8
    "sub ax, cx\n"  // 4055: 2bc1
    "mov [bp - 0x6], ax\n"  // 4057: 8946fa
    "mov ax, [cs:0x203]\n"  // 405a: 2ea10302
    "mov es, ax\n"  // 405e: 8ec0
    "mov ax, [cs:0x1e9]\n"  // 4060: 2ea1e901
    "mov ds, ax\n"  // 4064: 8ed8
    "mov dx, 0x0\n"  // 4066: ba0000
    "mov bx, [bp + 0xc]\n"  // 4069: 8b5e0c
    "mov ah, 0x3f\n"  // 406c: b43f
    "push cx\n"  // 406e: 51
    "int 0x21\n"  // 406f: cd21
    "pop cx\n"  // 4071: 59
    "mov si, 0x0\n"  // 4072: be0000
    "rep movsb [es:di], [si]\n"  // 4075: f3a4
    "jmp 0x402d\n"  // 4077: ebb4
    "pop si\n"  // 4079: 5e
    "pop di\n"  // 407a: 5f
    "pop ds\n"  // 407b: 1f
    "pop es\n"  // 407c: 07
    "mov sp, bp\n"  // 407d: 8be5
    "pop bp\n"  // 407f: 5d
    "ret \n"  // 4080: c3
    "mov ax, cs\n"  // 4081: 8cc8
    "mov ds, ax\n"  // 4083: 8ed8
    "mov dx, 0x4191\n"  // 4085: ba9141
        ".att_syntax");
}

/* dos_con_loc_4088 (0x4088-0x40d2) — inline asm */
void dos_con_loc_4088(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov ah, 0x9\n"  // 4088: b409
    "mov ax, cs\n"  // 40cb: 8cc8
    "mov ds, ax\n"  // 40cd: 8ed8
    "mov dx, 0x41db\n"  // 40cf: badb41
        ".att_syntax");
}

/* dos_con_loc_40d2 (0x40d2-0x4156) */
void dos_con_loc_40d2(void)
{
    u16 ax;
    u8 ah;

    *(uint8 *)&ah = (uint8)0x9;
}

/* dos_read_file_6 (0x4156-0x422f) — inline asm */
void dos_read_file_6(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 4156: 55
    "mov bp, sp\n"  // 4157: 8bec
    "sub sp, 0xa\n"  // 4159: 83ec0a
    "push ds\n"  // 415c: 1e
    "push es\n"  // 415d: 06
    "push si\n"  // 415e: 56
    "push di\n"  // 415f: 57
    "mov ax, ds\n"  // 4160: 8cd8
    "mov es, ax\n"  // 4162: 8ec0
    "mov bx, [bp + 0xe]\n"  // 4164: 8b5e0e
    "shl bx, 0x1\n"  // 4167: d1e3
    "shl bx, 0x1\n"  // 4169: d1e3
    "add bx, 0x4202\n"  // 416b: 81c30242
    "mov [bp - 0x2], bx\n"  // 416f: 895efe
    "mov ax, [cs:bx]\n"  // 4172: 2e8b07
    "or ax, ax\n"  // 4175: 0bc0
    "je 0x417c\n"  // 4177: 7403
    "jmp 0x4228\n"  // 4179: e9ac00
    "mov ax, [cs:0xcaa]\n"  // 417c: 2ea1aa0c
    "inc ax\n"  // 4180: 40
    "mov [cs:0xcaa], ax\n"  // 4181: 2ea3aa0c
    "mov bx, [bp - 0x2]\n"  // 4185: 8b5efe
    "mov [cs:bx], ax\n"  // 4188: 2e8907
    "dec ax\n"  // 418b: 48
    "mov cl, 0x2\n"  // 418c: b102
    "shl ax, cl\n"  // 418e: d3e0
    "mov bx, 0xbda\n"  // 4190: bbda0b
    "add bx, ax\n"  // 4193: 03d8
    "mov [bp - 0xa], bx\n"  // 4195: 895ef6
    "mov ax, [cs:0xcac]\n"  // 4198: 2ea1ac0c
    "mov [cs:bx], ax\n"  // 419c: 2e8907
    "mov ah, 0x42\n"  // 419f: b442
    "mov al, 0x2\n"  // 41a1: b002
    "mov bx, [bp + 0xc]\n"  // 41a3: 8b5e0c
    "xor cx, cx\n"  // 41a6: 33c9
    "mov dx, cx\n"  // 41a8: 8bd1
    "int 0x21\n"  // 41aa: cd21
    "mov [bp - 0x4], ax\n"  // 41ac: 8946fc
    "mov [bp - 0x6], dx\n"  // 41af: 8956fa
    "mov ah, 0x42\n"  // 41b2: b442
    "mov al, 0x0\n"  // 41b4: b000
    "mov bx, [bp + 0xc]\n"  // 41b6: 8b5e0c
    "xor cx, cx\n"  // 41b9: 33c9
    "mov dx, cx\n"  // 41bb: 8bd1
    "int 0x21\n"  // 41bd: cd21
    "mov ax, [cs:0x1e9]\n"  // 41bf: 2ea1e901
    "mov ds, ax\n"  // 41c3: 8ed8
    "xor dx, dx\n"  // 41c5: 33d2
    "mov bx, [bp + 0xc]\n"  // 41c7: 8b5e0c
    "mov cx, 0x2\n"  // 41ca: b90200
    "mov ah, 0x3f\n"  // 41cd: b43f
    "int 0x21\n"  // 41cf: cd21
    "xor bx, bx\n"  // 41d1: 33db
    "mov ax, [bx]\n"  // 41d3: 8b07
    "or ax, ax\n"  // 41d5: 0bc0
    "je 0x41dc\n"  // 41d7: 7403
    "jmp 0x42a0\n"  // 41d9: e9c400
    "mov bx, [bp - 0x2]\n"  // 41dc: 8b5efe
    "mov ax, [bp - 0x4]\n"  // 41df: 8b46fc
    "sub ax, 0x2\n"  // 41e2: 2d0200
    "mov [cs:bx + 0x2], ax\n"  // 41e5: 2e894702
    "add ax, 0xf\n"  // 41e9: 050f00
    "mov cl, 0x4\n"  // 41ec: b104
    "shr ax, cl\n"  // 41ee: d3e8
    "mov bx, [bp - 0xa]\n"  // 41f0: 8b5ef6
    "mov [cs:bx + 0x2], ax\n"  // 41f3: 2e894702
    "add ax, [cs:0xcac]\n"  // 41f7: 2e0306ac0c
    "cmp ax, 0x4180\n"  // 41fc: 3d8041
    "jae 0x4264\n"  // 41ff: 7363
    "mov [cs:0xcac], ax\n"  // 4201: 2ea3ac0c
    "mov ax, [cs:bx]\n"  // 4205: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 4208: 2e0306e101
    "mov ds, ax\n"  // 420d: 8ed8
    "xor dx, dx\n"  // 420f: 33d2
    "mov bx, [bp + 0xc]\n"  // 4211: 8b5e0c
    "mov cx, [bp - 0x4]\n"  // 4214: 8b4efc
    "sub cx, 0x2\n"  // 4217: 83e902
    "mov ah, 0x3f\n"  // 421a: b43f
    "int 0x21\n"  // 421c: cd21
    "xor ax, ax\n"  // 421e: 33c0
    "pop di\n"  // 4220: 5f
    "pop si\n"  // 4221: 5e
    "pop es\n"  // 4222: 07
    "pop ds\n"  // 4223: 1f
    "mov sp, bp\n"  // 4224: 8be5
    "pop bp\n"  // 4226: 5d
    "ret \n"  // 4227: c3
    "mov ax, cs\n"  // 4228: 8cc8
    "mov ds, ax\n"  // 422a: 8ed8
    "mov dx, 0x4338\n"  // 422c: ba3843
        ".att_syntax");
}

/* dos_con_loc_422f (0x422f-0x4245) */
void dos_con_loc_422f(void)
{
    u16 ax;
    u8 ah;

    *(uint8 *)&ah = (uint8)0x9;
}

/* dos_read_file_7 (0x4245-0x426b) — inline asm */
void dos_read_file_7(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8, u16 arg9, u16 arg10, u16 arg11, u16 arg12, u16 arg13, u16 arg14, u16 arg15, u16 arg16, u16 arg17, u16 arg18, u16 arg19, u16 arg20, u16 arg21, u16 arg22, u16 arg23, u16 arg24, u16 arg25, u16 arg26, u16 arg27, u16 arg28, u16 arg29, u16 arg30, u16 arg31, u16 arg32, u16 arg33, u16 arg34, u16 arg35, u16 arg36, u16 arg37, u16 arg38, u16 arg39, u16 arg40, u16 arg41, u16 arg42, u16 arg43, u16 arg44, u16 arg45, u16 arg46, u16 arg47, u16 arg48, u16 arg49, u16 arg50, u16 arg51, u8 arg52)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 4245: 55
    "dec si\n"  // 4246: 4e
    "inc sp\n"  // 4247: 44
    "sub [bx + di], ch\n"  // 4248: 2829
    "and [0x2e2e], ch\n"  // 424a: 202e2e2e
    "and [bp + di + 0x6c], dh\n"  // 424e: 20736c
    "outsw dx, [si]\n"  // 4251: 6f
    "je 0x4274\n"  // 4252: 7420
    "popaw \n"  // 4254: 61
    "insb [es:di], dx\n"  // 4255: 6c
    "jb 0x42bd\n"  // 4256: 7265
    "popaw \n"  // 4258: 61
    "jns 0x427c\n"  // 4259: 647920
    "jne 0x42d1\n"  // 425c: 7573
    "add [cs:bp + si], cl\n"  // 425e: 65642e000a
    "and al, 0x8c\n"  // 4263: 248c
    "enter 10098, 70\n"  // 4265: c88ed8ba
    "je 0x42ae\n"  // 4269: 7443
        ".att_syntax");
}

/* dos_con_loc_426b (0x426b-0x4300) — inline asm */
void dos_con_loc_426b(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7, u16 arg8, u16 arg9, u16 arg10, u16 arg11, u16 arg12, u16 arg13, u16 arg14, u16 arg15, u16 arg16, u16 arg17, u16 arg18, u16 arg19, u16 arg20, u16 arg21, u16 arg22, u16 arg23, u16 arg24, u16 arg25, u16 arg26, u16 arg27, u16 arg28, u16 arg29, u16 arg30, u16 arg31, u16 arg32, u16 arg33, u16 arg34, u16 arg35, u16 arg36, u16 arg37, u16 arg38, u16 arg39, u16 arg40, u16 arg41, u16 arg42, u16 arg43, u16 arg44, u16 arg45, u16 arg46, u16 arg47, u16 arg48, u16 arg49, u16 arg50, u16 arg51, u16 arg52, u16 arg53, u8 arg53_hi, u16 arg54, u16 arg55, u16 arg56, u16 arg57, u16 arg58, u16 arg59, u16 arg60, u16 arg61, u16 arg62, u16 arg63, u16 arg64, u16 arg65, u16 arg66, u16 arg67, u16 arg68, u16 arg69, u16 arg70, u16 arg71, u16 arg72, u16 arg73, u16 arg74, u16 arg75, u16 arg76, u16 arg77, u16 arg78, u16 arg79, u16 arg80, u16 arg81, u16 arg82, u16 arg83, u16 arg84, u16 arg85, u16 arg86, u16 arg87, u16 arg88, u16 arg89, u16 arg90, u16 arg91, u16 arg92, u16 arg93, u16 arg94, u16 arg95, u16 arg96, u16 arg97, u16 arg98, u16 arg99, u16 arg100, u16 arg101, u16 arg102, u16 arg103, u16 arg104, u16 arg105, u16 arg106, u16 arg107, u16 arg108, u16 arg109, u16 arg110, u16 arg111, u16 arg112, u16 arg113, u16 arg114, u16 arg115, u16 arg116, u16 arg117, u16 arg118, u16 arg119, u16 arg120, u16 arg121, u16 arg122, u16 arg123, u16 arg124, u16 arg125, u16 arg126, u16 arg127, u16 arg128, u16 arg129, u16 arg130, u16 arg131, u16 arg132, u16 arg133, u16 arg134, u16 arg135, u16 arg136, u16 arg137, u16 arg138, u16 arg139, u16 arg140, u16 arg141, u16 arg142, u16 arg143, u16 arg144, u16 arg145, u16 arg146, u16 arg147, u16 arg148, u16 arg149, u16 arg150, u16 arg151, u16 arg152, u16 arg153, u16 arg154, u16 arg155, u16 arg156, u16 arg157, u16 arg158, u16 arg159, u16 arg160, u16 arg161, u16 arg162, u16 arg163, u16 arg164, u16 arg165, u16 arg166, u16 arg167, u16 arg168, u16 arg169, u16 arg170, u16 arg171, u16 arg172, u16 arg173, u16 arg174, u16 arg175, u16 arg176, u16 arg177, u16 arg178, u16 arg179, u16 arg180, u16 arg181, u16 arg182, u16 arg183, u16 arg184, u16 arg185, u16 arg186, u16 arg187, u16 arg188, u16 arg189, u16 arg190, u16 arg191, u16 arg192, u16 arg193, u16 arg194, u16 arg195, u16 arg196, u16 arg197, u16 arg198, u16 arg199, u16 arg200, u16 arg201, u16 arg202, u16 arg203, u16 arg204, u16 arg205, u16 arg206, u16 arg207, u16 arg208, u16 arg209, u16 arg210, u16 arg211, u16 arg212, u16 arg213, u16 arg214, u16 arg215, u16 arg216, u16 arg217, u16 arg218, u16 arg219, u16 arg220, u16 arg221, u16 arg222, u16 arg223, u16 arg224, u16 arg225, u16 arg226, u16 arg227, u16 arg228, u16 arg229, u16 arg230, u16 arg231, u16 arg232, u16 arg233, u16 arg234, u16 arg235, u16 arg236, u16 arg237, u16 arg238, u16 arg239, u16 arg240, u16 arg241, u16 arg242, u16 arg243, u16 arg244, u16 arg245, u16 arg246, u16 arg247, u16 arg248, u16 arg249, u16 arg250, u16 arg251, u16 arg252, u16 arg253, u16 arg254, u16 arg255, u16 arg256, u16 arg257, u16 arg258, u16 arg259, u16 arg260, u16 arg261, u16 arg262, u16 arg263, u16 arg264, u16 arg265, u16 arg266, u16 arg267, u16 arg268, u16 arg269, u16 arg270, u16 arg271, u16 arg272, u16 arg273, u16 arg274, u16 arg275, u16 arg276, u16 arg277, u16 arg278, u16 arg279, u16 arg280, u16 arg281, u16 arg282, u16 arg283, u16 arg284, u16 arg285, u16 arg286, u16 arg287, u16 arg288, u16 arg289, u16 arg290, u16 arg291, u16 arg292, u16 arg293, u16 arg294, u16 arg295, u16 arg296, u16 arg297, u16 arg298, u16 arg299, u16 arg300, u16 arg301, u16 arg302, u16 arg303, u16 arg304, u16 arg305, u16 arg306, u16 arg307, u16 arg308, u16 arg309, u16 arg310, u16 arg311, u16 arg312, u16 arg313, u16 arg314, u16 arg315, u16 arg316, u16 arg317, u16 arg318, u16 arg319, u16 arg320, u16 arg321, u16 arg322, u16 arg323, u16 arg324, u16 arg325, u16 arg326, u16 arg327, u16 arg328, u16 arg329, u16 arg330, u16 arg331, u16 arg332, u16 arg333, u16 arg334, u16 arg335, u16 arg336, u16 arg337, u16 arg338, u16 arg339, u16 arg340, u16 arg341, u16 arg342, u16 arg343, u16 arg344, u16 arg345, u16 arg346, u16 arg347, u16 arg348, u16 arg349, u16 arg350, u16 arg351, u16 arg352, u16 arg353, u16 arg354, u16 arg355, u16 arg356, u16 arg357, u16 arg358, u16 arg359, u16 arg360, u16 arg361, u16 arg362, u16 arg363, u16 arg364, u16 arg365, u16 arg366, u16 arg367, u16 arg368, u16 arg369, u16 arg370, u16 arg371, u16 arg372, u16 arg373, u16 arg374, u16 arg375, u16 arg376, u16 arg377, u16 arg378, u16 arg379, u16 arg380, u16 arg381, u16 arg382, u16 arg383, u16 arg384, u16 arg385, u16 arg386, u16 arg387, u16 arg388, u16 arg389, u16 arg390, u16 arg391, u16 arg392, u16 arg393, u16 arg394, u16 arg395, u16 arg396, u16 arg397, u16 arg398, u16 arg399, u16 arg400, u16 arg401, u16 arg402, u16 arg403, u16 arg404, u16 arg405, u16 arg406, u16 arg407, u16 arg408, u16 arg409, u16 arg410, u16 arg411, u16 arg412, u16 arg413, u16 arg414, u16 arg415, u16 arg416, u16 arg417, u16 arg418, u16 arg419, u16 arg420, u16 arg421, u16 arg422, u16 arg423, u16 arg424, u16 arg425, u16 arg426, u16 arg427, u16 arg428, u16 arg429, u16 arg430, u16 arg431, u16 arg432, u16 arg433, u16 arg434, u16 arg435, u16 arg436, u16 arg437, u16 arg438, u16 arg439, u16 arg440, u16 arg441, u16 arg442, u16 arg443, u16 arg444, u16 arg445, u16 arg446, u16 arg447, u16 arg448, u16 arg449, u16 arg450, u16 arg451, u16 arg452, u16 arg453, u16 arg454, u16 arg455, u16 arg456, u16 arg457, u16 arg458, u16 arg459, u16 arg460, u16 arg461, u16 arg462, u16 arg463, u16 arg464, u16 arg465, u16 arg466, u16 arg467, u16 arg468, u16 arg469, u16 arg470, u16 arg471, u16 arg472, u16 arg473, u16 arg474, u16 arg475, u16 arg476, u16 arg477, u16 arg478, u16 arg479, u16 arg480, u16 arg481, u16 arg482, u16 arg483, u16 arg484, u16 arg485, u16 arg486, u16 arg487, u16 arg488, u16 arg489, u16 arg490, u16 arg491, u16 arg492, u16 arg493, u16 arg494, u16 arg495, u16 arg496, u16 arg497, u16 arg498, u16 arg499, u16 arg500, u16 arg501, u16 arg502, u16 arg503, u16 arg504, u16 arg505, u16 arg506, u16 arg507, u16 arg508, u16 arg509, u16 arg510, u16 arg511, u16 arg512, u16 arg513, u16 arg514, u16 arg515, u16 arg516, u16 arg517, u16 arg518, u16 arg519, u16 arg520, u16 arg521, u16 arg522, u16 arg523, u16 arg524, u16 arg525, u16 arg526, u16 arg527, u16 arg528, u16 arg529, u16 arg530, u16 arg531, u16 arg532, u16 arg533, u16 arg534, u16 arg535, u16 arg536, u16 arg537, u16 arg538, u16 arg539, u16 arg540, u16 arg541, u16 arg542, u16 arg543, u16 arg544, u16 arg545, u16 arg546, u16 arg547, u16 arg548, u16 arg549, u16 arg550, u16 arg551, u16 arg552, u16 arg553, u16 arg554, u16 arg555, u16 arg556, u16 arg557, u16 arg558, u16 arg559, u16 arg560, u16 arg561, u16 arg562, u16 arg563, u16 arg564, u16 arg565, u16 arg566, u16 arg567, u16 arg568, u16 arg569, u16 arg570, u16 arg571, u16 arg572, u16 arg573, u16 arg574, u16 arg575, u16 arg576, u16 arg577, u16 arg578, u16 arg579, u16 arg580, u16 arg581, u16 arg582, u16 arg583, u16 arg584, u16 arg585, u16 arg586, u16 arg587, u16 arg588, u16 arg589, u16 arg590, u16 arg591, u16 arg592, u16 arg593, u16 arg594, u16 arg595, u16 arg596, u16 arg597, u16 arg598, u16 arg599, u16 arg600, u16 arg601, u16 arg602, u16 arg603, u16 arg604, u16 arg605, u16 arg606, u16 arg607, u16 arg608, u16 arg609, u16 arg610, u16 arg611, u16 arg612, u16 arg613, u16 arg614, u16 arg615, u16 arg616, u16 arg617, u16 arg618, u16 arg619, u16 arg620, u16 arg621, u16 arg622, u16 arg623, u16 arg624, u16 arg625, u16 arg626, u16 arg627, u16 arg628, u16 arg629, u16 arg630, u16 arg631, u16 arg632, u16 arg633, u16 arg634, u16 arg635, u16 arg636, u16 arg637, u16 arg638, u16 arg639, u16 arg640, u16 arg641, u16 arg642, u16 arg643, u16 arg644, u16 arg645, u16 arg646, u16 arg647, u16 arg648, u16 arg649, u16 arg650, u16 arg651, u16 arg652, u16 arg653, u16 arg654, u16 arg655, u16 arg656, u16 arg657, u16 arg658, u16 arg659, u16 arg660, u16 arg661, u16 arg662, u16 arg663, u16 arg664, u16 arg665, u16 arg666, u16 arg667, u16 arg668, u16 arg669, u16 arg670, u16 arg671, u16 arg672, u16 arg673, u16 arg674, u16 arg675, u16 arg676, u16 arg677, u16 arg678, u16 arg679, u16 arg680, u16 arg681, u16 arg682, u16 arg683, u16 arg684, u16 arg685, u16 arg686, u16 arg687, u16 arg688, u16 arg689, u16 arg690, u16 arg691, u16 arg692, u16 arg693, u16 arg694, u16 arg695, u16 arg696, u16 arg697, u16 arg698, u16 arg699, u16 arg700, u16 arg701, u16 arg702, u16 arg703, u16 arg704, u16 arg705, u16 arg706, u16 arg707, u16 arg708, u16 arg709, u16 arg710, u16 arg711, u16 arg712, u16 arg713, u16 arg714, u16 arg715, u16 arg716, u16 arg717, u16 arg718, u16 arg719, u16 arg720, u16 arg721, u16 arg722, u16 arg723, u16 arg724, u16 arg725, u16 arg726, u16 arg727, u16 arg728, u16 arg729, u16 arg730, u16 arg731, u16 arg732, u16 arg733, u16 arg734, u16 arg735, u16 arg736, u16 arg737, u16 arg738, u16 arg739, u16 arg740, u16 arg741, u16 arg742, u16 arg743, u16 arg744, u16 arg745, u16 arg746, u16 arg747, u16 arg748, u16 arg749, u16 arg750, u16 arg751, u16 arg752, u16 arg753, u16 arg754, u16 arg755, u16 arg756, u16 arg757, u16 arg758, u16 arg759, u16 arg760, u16 arg761, u16 arg762, u16 arg763, u16 arg764, u16 arg765, u16 arg766, u16 arg767, u16 arg768, u16 arg769, u16 arg770, u16 arg771, u16 arg772, u16 arg773, u16 arg774, u16 arg775, u16 arg776, u16 arg777, u16 arg778, u16 arg779, u16 arg780, u16 arg781, u16 arg782, u16 arg783, u16 arg784, u16 arg785, u16 arg786, u16 arg787, u16 arg788, u16 arg789, u16 arg790, u16 arg791, u16 arg792, u16 arg793, u16 arg794, u16 arg795, u16 arg796, u16 arg797, u16 arg798, u16 arg799, u16 arg800, u16 arg801, u16 arg802, u16 arg803, u16 arg804, u16 arg805, u16 arg806, u16 arg807, u16 arg808, u16 arg809, u16 arg810, u16 arg811, u16 arg812, u16 arg813, u16 arg814, u16 arg815, u16 arg816, u16 arg817, u16 arg818, u16 arg819, u16 arg820, u16 arg821, u16 arg822, u16 arg823, u16 arg824, u16 arg825, u16 arg826, u16 arg827, u16 arg828, u16 arg829, u16 arg830, u16 arg831, u16 arg832, u16 arg833, u16 arg834, u16 arg835, u16 arg836, u16 arg837, u16 arg838, u16 arg839, u16 arg840, u16 arg841, u16 arg842, u16 arg843, u16 arg844, u16 arg845, u16 arg846, u16 arg847, u16 arg848, u16 arg849, u16 arg850, u16 arg851, u16 arg852, u16 arg853, u16 arg854, u16 arg855, u16 arg856, u16 arg857, u16 arg858, u16 arg859, u16 arg860, u16 arg861, u16 arg862, u16 arg863, u16 arg864, u16 arg865, u16 arg866, u16 arg867, u16 arg868, u16 arg869, u16 arg870, u16 arg871, u16 arg872, u16 arg873, u16 arg874, u16 arg875, u16 arg876, u16 arg877, u16 arg878, u16 arg879, u16 arg880, u16 arg881, u16 arg882, u16 arg883, u16 arg884, u16 arg885, u16 arg886, u16 arg887, u16 arg888, u16 arg889, u16 arg890, u16 arg891, u16 arg892, u16 arg893, u16 arg894, u16 arg895, u16 arg896, u16 arg897, u16 arg898, u16 arg899, u16 arg900, u16 arg901, u16 arg902, u16 arg903, u16 arg904, u16 arg905, u16 arg906, u16 arg907, u16 arg908, u16 arg909, u16 arg910, u16 arg911, u16 arg912, u16 arg913, u16 arg914, u16 arg915, u16 arg916, u16 arg917, u16 arg918, u16 arg919, u16 arg920, u16 arg921, u16 arg922, u16 arg923, u16 arg924, u16 arg925, u16 arg926, u16 arg927, u16 arg928, u16 arg929, u16 arg930, u16 arg931, u16 arg932, u16 arg933, u16 arg934, u16 arg935, u16 arg936, u16 arg937, u16 arg938, u16 arg939, u16 arg940, u16 arg941, u16 arg942, u16 arg943, u16 arg944, u16 arg945, u16 arg946, u16 arg947, u16 arg948, u16 arg949, u16 arg950, u16 arg951, u16 arg952, u16 arg953, u16 arg954, u16 arg955, u16 arg956, u16 arg957, u16 arg958, u16 arg959, u16 arg960, u16 arg961, u16 arg962, u16 arg963, u16 arg964, u16 arg965, u16 arg966, u16 arg967, u16 arg968, u16 arg969, u16 arg970, u16 arg971, u16 arg972, u16 arg973, u16 arg974, u16 arg975, u16 arg976, u16 arg977, u16 arg978, u16 arg979, u16 arg980, u16 arg981, u16 arg982, u16 arg983, u16 arg984, u16 arg985, u16 arg986, u16 arg987, u16 arg988, u16 arg989, u16 arg990, u16 arg991, u16 arg992, u16 arg993, u16 arg994, u16 arg995, u16 arg996, u16 arg997, u16 arg998, u16 arg999, u16 arg1000, u16 arg1001, u16 arg1002, u16 arg1003, u16 arg1004, u16 arg1005, u16 arg1006, u16 arg1007, u16 arg1008, u16 arg1009, u16 arg1010, u16 arg1011, u16 arg1012, u16 arg1013, u16 arg1014, u16 arg1015, u16 arg1016, u16 arg1017, u16 arg1018, u16 arg1019, u16 arg1020, u16 arg1021, u16 arg1022, u16 arg1023, u16 arg1024, u16 arg1025, u16 arg1026, u16 arg1027, u16 arg1028, u16 arg1029, u16 arg1030, u16 arg1031, u16 arg1032, u16 arg1033, u16 arg1034, u16 arg1035, u16 arg1036, u16 arg1037, u16 arg1038, u16 arg1039, u16 arg1040, u16 arg1041, u16 arg1042, u16 arg1043, u16 arg1044, u16 arg1045, u16 arg1046, u16 arg1047, u16 arg1048, u16 arg1049, u16 arg1050, u16 arg1051, u16 arg1052, u16 arg1053, u16 arg1054, u16 arg1055, u16 arg1056, u16 arg1057, u16 arg1058, u16 arg1059, u16 arg1060, u16 arg1061, u16 arg1062, u16 arg1063, u16 arg1064, u16 arg1065, u16 arg1066, u16 arg1067, u16 arg1068, u16 arg1069, u16 arg1070, u16 arg1071, u16 arg1072, u16 arg1073, u16 arg1074, u16 arg1075, u16 arg1076, u16 arg1077, u16 arg1078, u16 arg1079, u16 arg1080, u16 arg1081, u16 arg1082, u16 arg1083, u16 arg1084, u16 arg1085, u16 arg1086, u16 arg1087, u16 arg1088, u16 arg1089, u16 arg1090, u16 arg1091, u16 arg1092, u16 arg1093, u16 arg1094, u16 arg1095, u16 arg1096, u16 arg1097, u16 arg1098, u16 arg1099, u16 arg1100, u16 arg1101, u16 arg1102, u16 arg1103, u16 arg1104, u16 arg1105, u16 arg1106, u16 arg1107, u16 arg1108, u16 arg1109, u16 arg1110, u16 arg1111, u16 arg1112, u16 arg1113, u16 arg1114, u16 arg1115, u16 arg1116, u16 arg1117, u16 arg1118, u16 arg1119, u16 arg1120, u16 arg1121, u16 arg1122, u16 arg1123, u16 arg1124, u16 arg1125, u16 arg1126, u16 arg1127, u16 arg1128, u16 arg1129, u16 arg1130, u16 arg1131, u16 arg1132, u16 arg1133, u16 arg1134, u16 arg1135, u16 arg1136, u16 arg1137, u16 arg1138, u16 arg1139, u16 arg1140, u16 arg1141, u16 arg1142, u16 arg1143, u16 arg1144, u16 arg1145, u16 arg1146, u16 arg1147, u16 arg1148, u16 arg1149, u16 arg1150, u16 arg1151, u16 arg1152, u16 arg1153, u16 arg1154, u16 arg1155, u16 arg1156, u16 arg1157, u16 arg1158, u16 arg1159, u16 arg1160, u16 arg1161, u16 arg1162, u16 arg1163, u16 arg1164, u16 arg1165, u16 arg1166, u16 arg1167, u16 arg1168, u16 arg1169, u16 arg1170, u16 arg1171, u16 arg1172, u16 arg1173, u16 arg1174, u16 arg1175, u16 arg1176, u16 arg1177, u16 arg1178, u16 arg1179, u16 arg1180, u16 arg1181, u16 arg1182, u16 arg1183, u16 arg1184, u16 arg1185, u16 arg1186, u16 arg1187, u16 arg1188, u16 arg1189, u16 arg1190, u16 arg1191, u16 arg1192, u16 arg1193, u16 arg1194, u16 arg1195, u16 arg1196, u16 arg1197, u16 arg1198, u16 arg1199, u16 arg1200, u16 arg1201, u16 arg1202, u16 arg1203, u16 arg1204, u16 arg1205, u16 arg1206, u16 arg1207, u16 arg1208, u16 arg1209, u16 arg1210, u16 arg1211, u16 arg1212, u16 arg1213, u16 arg1214, u16 arg1215, u16 arg1216, u16 arg1217, u16 arg1218, u16 arg1219, u16 arg1220, u16 arg1221, u16 arg1222, u16 arg1223, u16 arg1224, u16 arg1225, u16 arg1226, u16 arg1227, u16 arg1228, u16 arg1229, u16 arg1230, u16 arg1231, u16 arg1232, u16 arg1233, u16 arg1234, u16 arg1235, u16 arg1236, u16 arg1237, u16 arg1238, u16 arg1239, u16 arg1240, u16 arg1241, u16 arg1242, u16 arg1243, u16 arg1244, u16 arg1245, u16 arg1246, u16 arg1247, u16 arg1248, u16 arg1249, u16 arg1250, u16 arg1251, u16 arg1252, u16 arg1253, u16 arg1254, u16 arg1255, u16 arg1256, u16 arg1257, u16 arg1258, u16 arg1259, u16 arg1260, u16 arg1261, u16 arg1262, u16 arg1263, u16 arg1264, u16 arg1265, u16 arg1266, u16 arg1267, u16 arg1268, u16 arg1269, u16 arg1270, u16 arg1271, u16 arg1272, u16 arg1273, u16 arg1274, u16 arg1275, u16 arg1276, u16 arg1277, u16 arg1278, u16 arg1279, u16 arg1280, u16 arg1281, u16 arg1282, u16 arg1283, u16 arg1284, u16 arg1285, u16 arg1286, u16 arg1287, u16 arg1288, u16 arg1289, u16 arg1290, u16 arg1291, u16 arg1292, u16 arg1293, u16 arg1294, u16 arg1295, u16 arg1296, u16 arg1297, u16 arg1298, u16 arg1299, u16 arg1300, u16 arg1301, u16 arg1302, u16 arg1303, u16 arg1304, u16 arg1305, u16 arg1306, u16 arg1307, u16 arg1308, u16 arg1309, u16 arg1310, u16 arg1311, u16 arg1312, u16 arg1313, u16 arg1314, u16 arg1315, u16 arg1316, u16 arg1317, u16 arg1318, u16 arg1319, u16 arg1320, u16 arg1321, u16 arg1322, u16 arg1323, u16 arg1324, u16 arg1325, u16 arg1326, u16 arg1327, u16 arg1328, u16 arg1329, u16 arg1330, u16 arg1331, u16 arg1332, u16 arg1333, u16 arg1334, u16 arg1335, u16 arg1336, u16 arg1337, u16 arg1338, u16 arg1339, u16 arg1340, u16 arg1341, u16 arg1342, u16 arg1343, u16 arg1344, u16 arg1345, u16 arg1346, u16 arg1347, u16 arg1348, u16 arg1349, u16 arg1350, u16 arg1351, u16 arg1352, u16 arg1353, u16 arg1354, u16 arg1355, u16 arg1356, u16 arg1357, u16 arg1358, u16 arg1359, u16 arg1360, u16 arg1361, u16 arg1362, u16 arg1363, u16 arg1364, u16 arg1365, u16 arg1366, u16 arg1367, u16 arg1368, u16 arg1369, u16 arg1370, u16 arg1371, u16 arg1372, u16 arg1373, u16 arg1374, u16 arg1375, u16 arg1376, u16 arg1377, u16 arg1378, u16 arg1379, u16 arg1380, u16 arg1381, u16 arg1382, u16 arg1383, u16 arg1384, u16 arg1385, u16 arg1386, u16 arg1387, u16 arg1388, u16 arg1389, u16 arg1390, u16 arg1391, u16 arg1392, u16 arg1393, u16 arg1394, u16 arg1395, u16 arg1396, u16 arg1397, u16 arg1398, u16 arg1399, u16 arg1400, u16 arg1401, u16 arg1402, u16 arg1403, u16 arg1404, u16 arg1405, u16 arg1406, u16 arg1407, u16 arg1408, u16 arg1409, u16 arg1410, u16 arg1411, u16 arg1412, u16 arg1413, u16 arg1414, u16 arg1415, u16 arg1416, u16 arg1417, u16 arg1418, u16 arg1419, u16 arg1420, u16 arg1421, u16 arg1422, u16 arg1423, u16 arg1424, u16 arg1425, u16 arg1426, u16 arg1427, u16 arg1428, u16 arg1429, u16 arg1430, u16 arg1431, u16 arg1432, u16 arg1433, u16 arg1434, u16 arg1435, u16 arg1436, u16 arg1437, u16 arg1438, u16 arg1439, u16 arg1440, u16 arg1441, u16 arg1442, u16 arg1443, u16 arg1444, u16 arg1445, u16 arg1446, u16 arg1447, u16 arg1448, u16 arg1449, u16 arg1450, u16 arg1451, u16 arg1452, u16 arg1453, u16 arg1454, u16 arg1455, u16 arg1456, u16 arg1457, u16 arg1458, u16 arg1459, u16 arg1460, u16 arg1461, u16 arg1462, u16 arg1463, u16 arg1464, u16 arg1465, u16 arg1466, u16 arg1467, u16 arg1468, u16 arg1469, u16 arg1470, u16 arg1471, u16 arg1472, u16 arg1473, u16 arg1474, u16 arg1475, u16 arg1476, u16 arg1477, u16 arg1478, u16 arg1479, u16 arg1480, u16 arg1481, u16 arg1482, u16 arg1483, u16 arg1484, u16 arg1485, u16 arg1486, u16 arg1487, u16 arg1488, u16 arg1489, u16 arg1490, u16 arg1491, u16 arg1492, u16 arg1493, u16 arg1494, u16 arg1495, u16 arg1496, u16 arg1497, u16 arg1498, u16 arg1499, u16 arg1500, u16 arg1501, u16 arg1502, u16 arg1503, u16 arg1504, u16 arg1505, u16 arg1506, u16 arg1507, u16 arg1508, u16 arg1509, u16 arg1510, u16 arg1511, u16 arg1512, u16 arg1513, u16 arg1514, u16 arg1515, u16 arg1516, u16 arg1517, u16 arg1518, u16 arg1519, u16 arg1520, u16 arg1521, u16 arg1522, u16 arg1523, u16 arg1524, u16 arg1525, u16 arg1526, u16 arg1527, u16 arg1528, u16 arg1529, u16 arg1530, u16 arg1531, u16 arg1532, u16 arg1533, u16 arg1534, u16 arg1535, u16 arg1536, u16 arg1537, u16 arg1538, u16 arg1539, u16 arg1540, u16 arg1541, u16 arg1542, u16 arg1543, u16 arg1544, u16 arg1545, u16 arg1546, u16 arg1547, u16 arg1548, u16 arg1549, u16 arg1550, u16 arg1551, u16 arg1552, u16 arg1553, u16 arg1554, u16 arg1555, u16 arg1556, u16 arg1557, u16 arg1558, u16 arg1559, u16 arg1560, u16 arg1561, u16 arg1562, u16 arg1563, u16 arg1564, u16 arg1565, u16 arg1566, u16 arg1567, u16 arg1568, u16 arg1569, u16 arg1570, u16 arg1571, u16 arg1572, u16 arg1573, u16 arg1574, u16 arg1575, u16 arg1576, u16 arg1577, u16 arg1578, u16 arg1579, u16 arg1580, u8 arg1581, u16 arg1582, u16 arg1583, u16 arg1584, u16 arg1585, u16 arg1586, u16 arg1587, u16 arg1588, u16 arg1589, u16 arg1590, u16 arg1591, u16 arg1592, u16 arg1593, u16 arg1594, u16 arg1595, u16 arg1596, u16 arg1597, u16 arg1598, u16 arg1599, u16 arg1600, u16 arg1601, u16 arg1602, u16 arg1603, u16 arg1604, u16 arg1605, u16 arg1606, u16 arg1607, u16 arg1608, u16 arg1609, u16 arg1610, u16 arg1611, u16 arg1612, u16 arg1613, u16 arg1614, u16 arg1615, u16 arg1616, u16 arg1617, u16 arg1618, u16 arg1619, u16 arg1620, u16 arg1621, u16 arg1622, u16 arg1623, u16 arg1624, u16 arg1625, u16 arg1626, u16 arg1627, u16 arg1628, u16 arg1629, u16 arg1630, u16 arg1631, u16 arg1632, u16 arg1633, u16 arg1634, u16 arg1635, u16 arg1636, u16 arg1637, u16 arg1638, u16 arg1639, u16 arg1640, u16 arg1641, u16 arg1642, u16 arg1643, u16 arg1644, u16 arg1645, u16 arg1646, u16 arg1647, u16 arg1648, u16 arg1649, u16 arg1650, u16 arg1651, u16 arg1652, u16 arg1653, u16 arg1654, u16 arg1655, u16 arg1656, u16 arg1657, u16 arg1658, u16 arg1659, u16 arg1660, u16 arg1661, u16 arg1662, u16 arg1663, u16 arg1664, u16 arg1665, u16 arg1666, u16 arg1667, u16 arg1668, u16 arg1669, u16 arg1670, u16 arg1671, u16 arg1672, u16 arg1673, u16 arg1674, u16 arg1675, u16 arg1676, u16 arg1677, u16 arg1678, u16 arg1679, u16 arg1680, u16 arg1681, u16 arg1682, u16 arg1683, u16 arg1684, u16 arg1685, u16 arg1686, u16 arg1687, u16 arg1688, u16 arg1689, u16 arg1690, u16 arg1691, u16 arg1692, u16 arg1693, u16 arg1694, u16 arg1695, u16 arg1696, u16 arg1697, u16 arg1698, u16 arg1699, u16 arg1700, u16 arg1701, u16 arg1702, u16 arg1703, u16 arg1704, u16 arg1705, u16 arg1706, u16 arg1707, u16 arg1708, u16 arg1709, u16 arg1710, u16 arg1711, u16 arg1712, u16 arg1713, u16 arg1714, u16 arg1715, u16 arg1716, u16 arg1717, u16 arg1718, u16 arg1719, u16 arg1720, u16 arg1721, u16 arg1722, u16 arg1723, u16 arg1724, u16 arg1725, u16 arg1726, u16 arg1727, u16 arg1728, u16 arg1729, u16 arg1730, u16 arg1731, u16 arg1732, u16 arg1733, u16 arg1734, u16 arg1735, u16 arg1736, u16 arg1737, u16 arg1738, u16 arg1739, u16 arg1740, u16 arg1741, u16 arg1742, u16 arg1743, u16 arg1744, u16 arg1745, u16 arg1746, u16 arg1747, u16 arg1748, u16 arg1749, u16 arg1750, u16 arg1751, u16 arg1752, u16 arg1753, u16 arg1754, u16 arg1755, u16 arg1756, u16 arg1757, u16 arg1758, u16 arg1759, u16 arg1760, u16 arg1761, u16 arg1762, u16 arg1763, u16 arg1764, u16 arg1765, u16 arg1766, u16 arg1767, u16 arg1768, u16 arg1769, u16 arg1770, u16 arg1771, u16 arg1772, u16 arg1773, u16 arg1774, u16 arg1775, u16 arg1776, u16 arg1777, u16 arg1778, u16 arg1779, u16 arg1780, u16 arg1781, u16 arg1782, u16 arg1783, u16 arg1784, u16 arg1785, u16 arg1786, u16 arg1787, u16 arg1788, u16 arg1789, u16 arg1790, u16 arg1791, u16 arg1792, u16 arg1793, u16 arg1794, u16 arg1795, u16 arg1796, u16 arg1797, u16 arg1798, u16 arg1799, u16 arg1800, u16 arg1801, u16 arg1802, u16 arg1803, u16 arg1804, u16 arg1805, u16 arg1806, u16 arg1807, u16 arg1808, u16 arg1809, u16 arg1810, u16 arg1811, u16 arg1812, u16 arg1813, u16 arg1814, u16 arg1815, u16 arg1816, u16 arg1817, u16 arg1818, u16 arg1819, u16 arg1820, u16 arg1821, u16 arg1822, u16 arg1823, u16 arg1824, u16 arg1825, u16 arg1826, u16 arg1827, u16 arg1828, u16 arg1829, u16 arg1830, u16 arg1831, u16 arg1832, u16 arg1833, u16 arg1834, u16 arg1835, u16 arg1836, u16 arg1837, u16 arg1838, u16 arg1839, u16 arg1840, u16 arg1841, u16 arg1842, u16 arg1843, u16 arg1844, u16 arg1845, u16 arg1846, u16 arg1847, u16 arg1848, u16 arg1849, u16 arg1850, u16 arg1851, u16 arg1852, u16 arg1853, u16 arg1854, u16 arg1855, u16 arg1856, u16 arg1857, u16 arg1858, u16 arg1859, u16 arg1860, u16 arg1861, u16 arg1862, u16 arg1863, u16 arg1864, u16 arg1865, u16 arg1866, u16 arg1867, u16 arg1868, u16 arg1869, u16 arg1870, u16 arg1871, u16 arg1872, u16 arg1873, u16 arg1874, u16 arg1875, u16 arg1876, u16 arg1877, u16 arg1878, u16 arg1879, u16 arg1880, u16 arg1881, u16 arg1882, u16 arg1883, u16 arg1884, u16 arg1885, u16 arg1886, u16 arg1887, u16 arg1888, u16 arg1889, u16 arg1890, u16 arg1891, u16 arg1892, u16 arg1893, u16 arg1894, u16 arg1895, u16 arg1896, u16 arg1897, u16 arg1898, u16 arg1899, u16 arg1900, u16 arg1901, u16 arg1902, u16 arg1903, u16 arg1904, u16 arg1905, u16 arg1906, u16 arg1907, u16 arg1908, u16 arg1909, u16 arg1910, u16 arg1911, u16 arg1912, u16 arg1913, u16 arg1914, u16 arg1915, u16 arg1916, u16 arg1917, u16 arg1918, u16 arg1919, u16 arg1920, u16 arg1921, u16 arg1922, u16 arg1923, u16 arg1924, u16 arg1925, u16 arg1926, u16 arg1927, u16 arg1928, u16 arg1929, u16 arg1930, u16 arg1931, u16 arg1932, u16 arg1933, u16 arg1934, u16 arg1935, u16 arg1936, u16 arg1937, u16 arg1938, u16 arg1939, u16 arg1940, u16 arg1941, u16 arg1942, u16 arg1943, u16 arg1944, u16 arg1945, u16 arg1946, u16 arg1947, u16 arg1948, u16 arg1949, u16 arg1950, u16 arg1951, u16 arg1952, u16 arg1953, u16 arg1954, u16 arg1955, u16 arg1956, u16 arg1957, u16 arg1958, u16 arg1959, u16 arg1960, u16 arg1961, u16 arg1962, u16 arg1963, u16 arg1964, u16 arg1965, u16 arg1966, u16 arg1967, u16 arg1968, u16 arg1969, u16 arg1970, u16 arg1971, u16 arg1972, u16 arg1973, u16 arg1974, u16 arg1975, u16 arg1976, u16 arg1977, u16 arg1978, u16 arg1979, u16 arg1980, u16 arg1981, u16 arg1982, u16 arg1983, u16 arg1984, u16 arg1985, u16 arg1986, u16 arg1987, u16 arg1988, u16 arg1989, u16 arg1990, u16 arg1991, u16 arg1992, u16 arg1993, u16 arg1994, u16 arg1995, u16 arg1996, u16 arg1997, u16 arg1998, u16 arg1999, u16 arg2000, u16 arg2001, u16 arg2002, u16 arg2003, u16 arg2004, u16 arg2005, u16 arg2006, u16 arg2007, u16 arg2008, u16 arg2009, u16 arg2010, u16 arg2011, u16 arg2012, u16 arg2013, u16 arg2014, u16 arg2015, u16 arg2016, u16 arg2017, u16 arg2018, u16 arg2019, u16 arg2020, u16 arg2021, u16 arg2022, u16 arg2023, u16 arg2024, u16 arg2025, u16 arg2026, u16 arg2027, u16 arg2028, u16 arg2029, u16 arg2030, u16 arg2031, u16 arg2032, u16 arg2033, u16 arg2034, u16 arg2035, u16 arg2036, u16 arg2037, u16 arg2038, u16 arg2039, u16 arg2040, u16 arg2041, u16 arg2042, u16 arg2043, u16 arg2044, u16 arg2045, u16 arg2046, u16 arg2047, u16 arg2048, u16 arg2049, u16 arg2050, u16 arg2051, u16 arg2052, u16 arg2053, u16 arg2054, u16 arg2055, u16 arg2056, u16 arg2057, u16 arg2058, u16 arg2059, u16 arg2060, u16 arg2061, u16 arg2062, u16 arg2063, u16 arg2064, u16 arg2065, u16 arg2066, u16 arg2067, u16 arg2068, u16 arg2069, u16 arg2070, u16 arg2071, u16 arg2072, u16 arg2073, u16 arg2074, u16 arg2075, u16 arg2076, u16 arg2077, u16 arg2078, u16 arg2079, u16 arg2080, u16 arg2081, u16 arg2082, u16 arg2083, u16 arg2084, u16 arg2085, u16 arg2086, u16 arg2087, u16 arg2088, u16 arg2089, u16 arg2090, u16 arg2091, u16 arg2092, u16 arg2093, u16 arg2094, u16 arg2095, u16 arg2096, u16 arg2097, u16 arg2098, u16 arg2099, u16 arg2100, u16 arg2101, u16 arg2102, u16 arg2103, u16 arg2104, u16 arg2105, u16 arg2106, u16 arg2107, u16 arg2108, u16 arg2109, u16 arg2110, u16 arg2111, u16 arg2112, u16 arg2113, u16 arg2114, u16 arg2115, u16 arg2116, u16 arg2117, u16 arg2118, u16 arg2119, u16 arg2120, u16 arg2121, u16 arg2122, u16 arg2123, u16 arg2124, u16 arg2125, u16 arg2126, u16 arg2127, u16 arg2128, u16 arg2129, u16 arg2130, u16 arg2131, u16 arg2132, u16 arg2133, u16 arg2134, u16 arg2135, u16 arg2136, u16 arg2137, u16 arg2138, u16 arg2139, u16 arg2140, u16 arg2141, u16 arg2142, u16 arg2143, u16 arg2144, u16 arg2145, u16 arg2146, u16 arg2147, u16 arg2148, u16 arg2149, u16 arg2150, u16 arg2151, u16 arg2152, u16 arg2153, u16 arg2154, u16 arg2155, u16 arg2156, u16 arg2157, u16 arg2158, u16 arg2159, u16 arg2160, u16 arg2161, u16 arg2162, u16 arg2163, u16 arg2164, u16 arg2165, u16 arg2166, u16 arg2167, u16 arg2168, u16 arg2169, u16 arg2170, u16 arg2171, u16 arg2172, u16 arg2173, u16 arg2174, u16 arg2175, u16 arg2176, u16 arg2177, u16 arg2178, u16 arg2179, u16 arg2180, u16 arg2181, u16 arg2182, u16 arg2183, u16 arg2184, u16 arg2185, u16 arg2186, u16 arg2187, u16 arg2188, u16 arg2189, u16 arg2190, u16 arg2191, u16 arg2192, u16 arg2193, u16 arg2194, u16 arg2195, u16 arg2196, u16 arg2197, u16 arg2198, u16 arg2199, u16 arg2200, u16 arg2201, u16 arg2202, u16 arg2203, u16 arg2204, u16 arg2205, u16 arg2206, u16 arg2207, u16 arg2208, u16 arg2209, u16 arg2210, u16 arg2211, u16 arg2212, u16 arg2213, u16 arg2214, u16 arg2215, u16 arg2216, u16 arg2217, u16 arg2218, u16 arg2219, u16 arg2220, u16 arg2221, u16 arg2222, u16 arg2223, u16 arg2224, u16 arg2225, u16 arg2226, u16 arg2227, u16 arg2228, u16 arg2229, u16 arg2230, u16 arg2231, u16 arg2232, u16 arg2233, u16 arg2234, u16 arg2235, u16 arg2236, u16 arg2237, u16 arg2238, u16 arg2239, u16 arg2240, u16 arg2241, u16 arg2242, u16 arg2243, u16 arg2244, u16 arg2245, u16 arg2246, u16 arg2247, u16 arg2248, u16 arg2249, u16 arg2250, u16 arg2251, u16 arg2252, u16 arg2253, u16 arg2254, u16 arg2255, u16 arg2256, u16 arg2257, u16 arg2258, u16 arg2259, u16 arg2260, u16 arg2261, u16 arg2262, u16 arg2263, u16 arg2264, u16 arg2265, u16 arg2266, u16 arg2267, u16 arg2268, u16 arg2269, u16 arg2270, u16 arg2271, u16 arg2272, u16 arg2273, u16 arg2274, u16 arg2275, u16 arg2276, u16 arg2277, u16 arg2278, u16 arg2279, u16 arg2280, u16 arg2281, u16 arg2282, u16 arg2283, u16 arg2284, u16 arg2285, u16 arg2286, u16 arg2287, u16 arg2288, u16 arg2289, u16 arg2290, u16 arg2291, u16 arg2292, u16 arg2293, u16 arg2294, u16 arg2295, u16 arg2296, u16 arg2297, u16 arg2298, u16 arg2299, u16 arg2300, u16 arg2301, u16 arg2302, u16 arg2303, u16 arg2304, u16 arg2305, u16 arg2306, u16 arg2307, u16 arg2308, u16 arg2309, u16 arg2310, u16 arg2311, u16 arg2312, u16 arg2313, u16 arg2314, u16 arg2315, u16 arg2316, u16 arg2317, u16 arg2318, u16 arg2319, u16 arg2320, u16 arg2321, u16 arg2322, u16 arg2323, u16 arg2324, u16 arg2325, u16 arg2326, u16 arg2327, u16 arg2328, u16 arg2329, u16 arg2330, u16 arg2331, u16 arg2332, u16 arg2333, u16 arg2334, u16 arg2335, u16 arg2336, u16 arg2337, u16 arg2338, u16 arg2339, u16 arg2340, u16 arg2341, u16 arg2342, u16 arg2343, u16 arg2344, u16 arg2345, u16 arg2346, u16 arg2347, u16 arg2348, u16 arg2349, u16 arg2350, u16 arg2351, u16 arg2352, u16 arg2353, u16 arg2354, u16 arg2355, u16 arg2356, u16 arg2357, u16 arg2358, u16 arg2359, u16 arg2360, u16 arg2361, u16 arg2362, u16 arg2363, u16 arg2364, u16 arg2365, u16 arg2366, u16 arg2367, u16 arg2368, u16 arg2369, u16 arg2370, u16 arg2371, u16 arg2372, u16 arg2373, u16 arg2374, u16 arg2375, u16 arg2376, u16 arg2377, u16 arg2378, u16 arg2379, u16 arg2380, u16 arg2381, u16 arg2382, u16 arg2383, u16 arg2384, u16 arg2385, u16 arg2386, u16 arg2387, u16 arg2388, u16 arg2389, u16 arg2390, u16 arg2391, u16 arg2392, u16 arg2393, u16 arg2394, u16 arg2395, u16 arg2396, u16 arg2397, u16 arg2398, u16 arg2399, u16 arg2400, u16 arg2401, u16 arg2402, u16 arg2403, u16 arg2404, u16 arg2405, u16 arg2406, u16 arg2407, u16 arg2408, u16 arg2409, u16 arg2410, u16 arg2411, u16 arg2412, u16 arg2413, u16 arg2414, u16 arg2415, u16 arg2416, u16 arg2417, u16 arg2418, u16 arg2419, u16 arg2420, u16 arg2421, u16 arg2422, u16 arg2423, u16 arg2424, u16 arg2425, u16 arg2426, u16 arg2427, u16 arg2428, u16 arg2429, u16 arg2430, u16 arg2431, u16 arg2432, u16 arg2433, u16 arg2434, u16 arg2435, u16 arg2436, u16 arg2437, u16 arg2438, u16 arg2439, u16 arg2440, u16 arg2441, u16 arg2442, u16 arg2443, u16 arg2444, u16 arg2445, u16 arg2446, u16 arg2447, u16 arg2448, u16 arg2449, u16 arg2450, u16 arg2451, u16 arg2452, u16 arg2453, u16 arg2454, u16 arg2455, u16 arg2456, u16 arg2457, u16 arg2458, u16 arg2459, u16 arg2460, u16 arg2461, u16 arg2462, u16 arg2463, u16 arg2464, u16 arg2465, u16 arg2466, u16 arg2467, u16 arg2468, u16 arg2469, u16 arg2470, u16 arg2471, u16 arg2472, u16 arg2473, u16 arg2474, u16 arg2475, u16 arg2476, u16 arg2477, u16 arg2478, u16 arg2479, u16 arg2480, u16 arg2481, u16 arg2482, u16 arg2483, u16 arg2484, u16 arg2485, u16 arg2486, u16 arg2487, u16 arg2488, u16 arg2489, u16 arg2490, u16 arg2491, u16 arg2492, u16 arg2493, u16 arg2494, u16 arg2495, u16 arg2496, u16 arg2497, u16 arg2498, u16 arg2499, u16 arg2500, u16 arg2501, u16 arg2502, u16 arg2503, u16 arg2504, u16 arg2505, u16 arg2506, u16 arg2507, u16 arg2508, u16 arg2509, u16 arg2510, u16 arg2511, u16 arg2512, u16 arg2513, u16 arg2514, u16 arg2515, u16 arg2516, u16 arg2517, u16 arg2518, u16 arg2519, u16 arg2520, u16 arg2521, u16 arg2522, u16 arg2523, u16 arg2524, u16 arg2525, u16 arg2526, u16 arg2527, u16 arg2528, u16 arg2529, u16 arg2530, u16 arg2531, u16 arg2532, u16 arg2533, u16 arg2534, u16 arg2535, u16 arg2536, u16 arg2537, u16 arg2538, u16 arg2539, u16 arg2540, u16 arg2541, u16 arg2542, u16 arg2543, u16 arg2544, u16 arg2545, u16 arg2546, u16 arg2547, u16 arg2548, u16 arg2549, u16 arg2550, u16 arg2551, u16 arg2552, u16 arg2553, u16 arg2554, u16 arg2555, u16 arg2556, u16 arg2557, u16 arg2558, u16 arg2559, u16 arg2560, u16 arg2561, u16 arg2562, u16 arg2563, u16 arg2564, u16 arg2565, u16 arg2566, u16 arg2567, u16 arg2568, u16 arg2569, u16 arg2570, u16 arg2571, u16 arg2572, u16 arg2573, u16 arg2574, u16 arg2575, u16 arg2576, u16 arg2577, u16 arg2578, u16 arg2579, u16 arg2580, u16 arg2581, u16 arg2582, u16 arg2583, u16 arg2584, u16 arg2585, u16 arg2586, u16 arg2587, u16 arg2588, u16 arg2589, u16 arg2590, u16 arg2591, u16 arg2592, u16 arg2593, u16 arg2594, u16 arg2595, u16 arg2596, u16 arg2597, u16 arg2598, u16 arg2599, u16 arg2600, u16 arg2601, u16 arg2602, u16 arg2603, u16 arg2604, u16 arg2605, u16 arg2606, u16 arg2607, u16 arg2608, u16 arg2609, u16 arg2610, u16 arg2611, u16 arg2612, u16 arg2613, u16 arg2614, u16 arg2615, u16 arg2616, u16 arg2617, u16 arg2618, u16 arg2619, u16 arg2620, u16 arg2621, u16 arg2622, u16 arg2623, u16 arg2624, u16 arg2625, u16 arg2626, u16 arg2627, u16 arg2628, u16 arg2629, u16 arg2630, u16 arg2631, u16 arg2632, u16 arg2633, u16 arg2634, u16 arg2635, u16 arg2636, u16 arg2637, u16 arg2638, u16 arg2639, u16 arg2640, u16 arg2641, u16 arg2642, u16 arg2643, u16 arg2644, u16 arg2645, u16 arg2646, u16 arg2647, u16 arg2648, u16 arg2649, u16 arg2650, u16 arg2651, u16 arg2652, u16 arg2653, u16 arg2654, u16 arg2655, u16 arg2656, u16 arg2657, u16 arg2658, u16 arg2659, u16 arg2660, u16 arg2661, u16 arg2662, u16 arg2663, u16 arg2664, u16 arg2665, u16 arg2666, u16 arg2667, u16 arg2668, u16 arg2669, u16 arg2670, u16 arg2671, u16 arg2672, u16 arg2673, u16 arg2674, u16 arg2675, u16 arg2676, u16 arg2677, u16 arg2678, u16 arg2679, u16 arg2680, u16 arg2681, u16 arg2682, u16 arg2683, u16 arg2684, u16 arg2685, u16 arg2686, u16 arg2687, u16 arg2688, u16 arg2689, u16 arg2690, u16 arg2691, u16 arg2692, u16 arg2693, u16 arg2694, u16 arg2695, u16 arg2696, u16 arg2697, u16 arg2698, u16 arg2699, u16 arg2700, u16 arg2701, u16 arg2702, u16 arg2703, u16 arg2704, u16 arg2705, u16 arg2706, u16 arg2707, u16 arg2708, u16 arg2709, u16 arg2710, u16 arg2711, u16 arg2712, u16 arg2713, u16 arg2714, u16 arg2715, u16 arg2716, u16 arg2717, u16 arg2718, u16 arg2719, u16 arg2720, u16 arg2721, u16 arg2722, u16 arg2723, u16 arg2724, u16 arg2725, u16 arg2726, u16 arg2727, u16 arg2728, u16 arg2729, u16 arg2730, u16 arg2731, u16 arg2732, u16 arg2733, u16 arg2734, u16 arg2735, u16 arg2736, u16 arg2737, u16 arg2738, u16 arg2739, u16 arg2740, u16 arg2741, u16 arg2742, u16 arg2743, u16 arg2744, u16 arg2745, u16 arg2746, u16 arg2747, u16 arg2748, u16 arg2749, u16 arg2750, u16 arg2751, u16 arg2752, u16 arg2753, u16 arg2754, u16 arg2755, u16 arg2756, u16 arg2757, u16 arg2758, u16 arg2759, u16 arg2760, u16 arg2761, u16 arg2762, u16 arg2763, u16 arg2764, u16 arg2765, u16 arg2766, u16 arg2767, u16 arg2768, u16 arg2769, u16 arg2770, u16 arg2771, u16 arg2772, u16 arg2773, u16 arg2774, u16 arg2775, u16 arg2776, u16 arg2777, u16 arg2778, u16 arg2779, u16 arg2780, u16 arg2781, u16 arg2782, u16 arg2783, u16 arg2784, u16 arg2785, u16 arg2786, u16 arg2787, u16 arg2788, u16 arg2789, u16 arg2790, u16 arg2791, u16 arg2792, u16 arg2793, u16 arg2794, u16 arg2795, u16 arg2796, u16 arg2797, u16 arg2798, u16 arg2799, u16 arg2800, u16 arg2801, u16 arg2802, u16 arg2803, u16 arg2804, u16 arg2805, u16 arg2806, u16 arg2807, u16 arg2808, u16 arg2809, u16 arg2810, u16 arg2811, u16 arg2812, u16 arg2813, u16 arg2814, u16 arg2815, u16 arg2816, u16 arg2817, u16 arg2818, u16 arg2819, u16 arg2820, u16 arg2821, u16 arg2822, u16 arg2823, u16 arg2824, u16 arg2825, u16 arg2826, u16 arg2827, u16 arg2828, u16 arg2829, u16 arg2830, u16 arg2831, u16 arg2832, u16 arg2833, u16 arg2834, u16 arg2835, u16 arg2836, u16 arg2837, u16 arg2838, u16 arg2839, u16 arg2840, u16 arg2841, u16 arg2842, u16 arg2843, u16 arg2844, u16 arg2845, u16 arg2846, u16 arg2847, u16 arg2848, u16 arg2849, u16 arg2850, u16 arg2851, u16 arg2852, u16 arg2853, u16 arg2854, u16 arg2855, u16 arg2856, u16 arg2857, u16 arg2858, u16 arg2859, u16 arg2860, u16 arg2861, u16 arg2862, u16 arg2863, u16 arg2864, u16 arg2865, u16 arg2866, u16 arg2867, u16 arg2868, u16 arg2869, u16 arg2870, u16 arg2871, u16 arg2872, u16 arg2873, u16 arg2874, u16 arg2875, u16 arg2876, u16 arg2877, u16 arg2878, u16 arg2879, u16 arg2880, u16 arg2881, u16 arg2882, u16 arg2883, u16 arg2884, u16 arg2885, u16 arg2886, u16 arg2887, u16 arg2888, u16 arg2889, u16 arg2890, u16 arg2891, u16 arg2892, u16 arg2893, u16 arg2894, u16 arg2895, u16 arg2896, u16 arg2897, u16 arg2898, u16 arg2899, u16 arg2900, u16 arg2901, u16 arg2902, u16 arg2903, u16 arg2904, u16 arg2905, u16 arg2906, u16 arg2907, u16 arg2908, u16 arg2909, u16 arg2910, u16 arg2911, u16 arg2912, u16 arg2913, u16 arg2914, u16 arg2915, u16 arg2916, u16 arg2917, u16 arg2918, u16 arg2919, u16 arg2920, u16 arg2921, u16 arg2922, u16 arg2923, u16 arg2924, u16 arg2925, u16 arg2926, u16 arg2927, u16 arg2928, u16 arg2929, u16 arg2930, u16 arg2931, u16 arg2932, u16 arg2933, u16 arg2934, u16 arg2935, u16 arg2936, u16 arg2937, u16 arg2938, u16 arg2939, u16 arg2940, u16 arg2941, u16 arg2942, u16 arg2943, u16 arg2944, u16 arg2945, u16 arg2946, u16 arg2947, u16 arg2948, u16 arg2949, u16 arg2950, u16 arg2951, u16 arg2952, u16 arg2953, u16 arg2954, u16 arg2955, u16 arg2956, u16 arg2957, u16 arg2958, u16 arg2959, u16 arg2960, u16 arg2961, u16 arg2962, u16 arg2963, u16 arg2964, u16 arg2965, u16 arg2966, u16 arg2967, u16 arg2968, u16 arg2969, u16 arg2970, u16 arg2971, u16 arg2972, u16 arg2973, u16 arg2974, u16 arg2975, u16 arg2976, u16 arg2977, u16 arg2978, u16 arg2979, u16 arg2980, u16 arg2981, u16 arg2982, u16 arg2983, u16 arg2984, u16 arg2985, u16 arg2986, u16 arg2987, u16 arg2988, u16 arg2989, u16 arg2990, u16 arg2991, u16 arg2992, u16 arg2993, u16 arg2994, u16 arg2995, u16 arg2996, u16 arg2997, u16 arg2998, u16 arg2999, u16 arg3000, u16 arg3001, u16 arg3002, u16 arg3003, u16 arg3004, u16 arg3005, u16 arg3006, u16 arg3007, u16 arg3008, u16 arg3009, u16 arg3010, u16 arg3011, u16 arg3012, u16 arg3013, u16 arg3014, u16 arg3015, u16 arg3016, u16 arg3017, u16 arg3018, u16 arg3019, u16 arg3020, u16 arg3021, u16 arg3022, u16 arg3023, u16 arg3024, u16 arg3025, u16 arg3026, u16 arg3027, u16 arg3028, u16 arg3029, u16 arg3030, u16 arg3031, u16 arg3032, u16 arg3033, u16 arg3034, u16 arg3035, u16 arg3036, u16 arg3037, u16 arg3038, u16 arg3039, u16 arg3040, u16 arg3041, u16 arg3042, u16 arg3043, u16 arg3044, u16 arg3045, u16 arg3046, u16 arg3047, u16 arg3048, u16 arg3049, u16 arg3050, u16 arg3051, u16 arg3052, u16 arg3053, u16 arg3054, u16 arg3055, u16 arg3056, u16 arg3057, u16 arg3058, u16 arg3059, u16 arg3060, u16 arg3061, u16 arg3062, u16 arg3063, u16 arg3064, u16 arg3065, u16 arg3066, u16 arg3067, u16 arg3068, u16 arg3069, u16 arg3070, u16 arg3071, u16 arg3072, u16 arg3073, u16 arg3074, u16 arg3075, u16 arg3076, u16 arg3077, u16 arg3078, u16 arg3079, u16 arg3080, u16 arg3081, u16 arg3082, u16 arg3083, u16 arg3084, u16 arg3085, u16 arg3086, u16 arg3087, u16 arg3088, u16 arg3089, u16 arg3090, u16 arg3091, u16 arg3092, u16 arg3093, u16 arg3094, u16 arg3095, u16 arg3096, u16 arg3097, u16 arg3098, u16 arg3099, u16 arg3100, u16 arg3101, u16 arg3102, u16 arg3103, u16 arg3104, u16 arg3105, u16 arg3106, u16 arg3107, u16 arg3108, u16 arg3109, u16 arg3110, u16 arg3111, u16 arg3112, u16 arg3113, u16 arg3114, u16 arg3115, u16 arg3116, u16 arg3117, u16 arg3118, u16 arg3119, u16 arg3120, u16 arg3121, u16 arg3122, u16 arg3123, u16 arg3124, u16 arg3125, u16 arg3126, u16 arg3127, u16 arg3128, u16 arg3129, u16 arg3130, u16 arg3131, u16 arg3132, u16 arg3133, u16 arg3134, u16 arg3135, u16 arg3136, u16 arg3137, u16 arg3138, u16 arg3139, u16 arg3140, u16 arg3141, u16 arg3142, u16 arg3143, u16 arg3144, u16 arg3145, u16 arg3146, u16 arg3147, u16 arg3148, u16 arg3149, u16 arg3150, u16 arg3151, u16 arg3152, u16 arg3153, u16 arg3154, u16 arg3155, u16 arg3156, u16 arg3157, u16 arg3158, u16 arg3159, u16 arg3160, u16 arg3161, u16 arg3162, u16 arg3163, u16 arg3164, u16 arg3165, u16 arg3166, u16 arg3167, u16 arg3168, u16 arg3169, u16 arg3170, u16 arg3171, u16 arg3172, u16 arg3173, u16 arg3174, u16 arg3175, u16 arg3176, u16 arg3177, u16 arg3178, u16 arg3179, u16 arg3180, u16 arg3181, u16 arg3182, u16 arg3183, u16 arg3184, u16 arg3185, u16 arg3186, u16 arg3187, u16 arg3188, u16 arg3189, u16 arg3190, u16 arg3191, u16 arg3192, u16 arg3193, u16 arg3194, u16 arg3195, u16 arg3196, u16 arg3197, u16 arg3198, u16 arg3199, u16 arg3200, u16 arg3201, u16 arg3202, u16 arg3203, u16 arg3204, u16 arg3205, u16 arg3206, u16 arg3207, u16 arg3208, u16 arg3209, u16 arg3210, u16 arg3211, u16 arg3212, u16 arg3213, u16 arg3214, u16 arg3215, u16 arg3216, u16 arg3217, u16 arg3218, u16 arg3219, u16 arg3220, u16 arg3221, u16 arg3222, u16 arg3223, u16 arg3224, u16 arg3225, u16 arg3226, u16 arg3227, u16 arg3228, u16 arg3229, u16 arg3230, u16 arg3231, u16 arg3232, u16 arg3233, u16 arg3234, u16 arg3235, u16 arg3236, u16 arg3237, u16 arg3238, u16 arg3239, u16 arg3240, u16 arg3241, u16 arg3242, u16 arg3243, u16 arg3244, u16 arg3245, u16 arg3246, u16 arg3247, u16 arg3248, u16 arg3249, u16 arg3250, u16 arg3251, u16 arg3252, u16 arg3253, u16 arg3254, u16 arg3255, u16 arg3256, u16 arg3257, u16 arg3258, u16 arg3259, u16 arg3260, u16 arg3261, u16 arg3262, u16 arg3263, u16 arg3264, u16 arg3265, u16 arg3266, u16 arg3267, u16 arg3268, u16 arg3269, u16 arg3270, u16 arg3271, u16 arg3272, u16 arg3273, u16 arg3274, u16 arg3275, u16 arg3276, u16 arg3277, u16 arg3278, u16 arg3279, u16 arg3280, u16 arg3281, u16 arg3282, u16 arg3283, u16 arg3284, u16 arg3285, u16 arg3286, u16 arg3287, u16 arg3288, u16 arg3289, u16 arg3290, u16 arg3291, u16 arg3292, u16 arg3293, u16 arg3294, u16 arg3295, u16 arg3296, u16 arg3297, u16 arg3298, u16 arg3299, u16 arg3300, u16 arg3301, u16 arg3302, u16 arg3303, u16 arg3304, u16 arg3305, u16 arg3306, u16 arg3307, u16 arg3308, u16 arg3309, u16 arg3310, u16 arg3311, u16 arg3312, u16 arg3313, u16 arg3314, u16 arg3315, u16 arg3316, u16 arg3317, u16 arg3318, u16 arg3319, u16 arg3320, u16 arg3321, u16 arg3322, u16 arg3323, u16 arg3324, u16 arg3325, u16 arg3326, u16 arg3327, u16 arg3328, u16 arg3329, u16 arg3330, u16 arg3331, u16 arg3332, u16 arg3333, u16 arg3334, u16 arg3335, u16 arg3336, u16 arg3337, u16 arg3338, u16 arg3339, u16 arg3340, u16 arg3341, u16 arg3342, u16 arg3343, u16 arg3344, u16 arg3345, u16 arg3346, u16 arg3347, u16 arg3348, u16 arg3349, u16 arg3350, u16 arg3351, u16 arg3352, u16 arg3353, u16 arg3354, u16 arg3355, u16 arg3356, u16 arg3357, u16 arg3358, u16 arg3359, u16 arg3360, u16 arg3361, u16 arg3362, u16 arg3363, u16 arg3364, u16 arg3365, u16 arg3366, u16 arg3367, u16 arg3368, u16 arg3369, u16 arg3370, u16 arg3371, u16 arg3372, u16 arg3373, u16 arg3374, u16 arg3375, u16 arg3376, u16 arg3377, u16 arg3378, u16 arg3379, u16 arg3380, u16 arg3381, u16 arg3382, u16 arg3383, u16 arg3384, u16 arg3385, u16 arg3386, u16 arg3387, u16 arg3388, u16 arg3389, u16 arg3390, u16 arg3391, u16 arg3392, u16 arg3393, u16 arg3394, u16 arg3395, u16 arg3396, u16 arg3397, u16 arg3398, u16 arg3399, u16 arg3400, u16 arg3401, u16 arg3402, u16 arg3403, u16 arg3404, u16 arg3405, u16 arg3406, u16 arg3407, u16 arg3408, u16 arg3409, u16 arg3410, u16 arg3411, u16 arg3412, u16 arg3413, u16 arg3414, u16 arg3415, u16 arg3416, u16 arg3417, u16 arg3418, u16 arg3419, u16 arg3420, u16 arg3421, u16 arg3422, u16 arg3423, u16 arg3424, u16 arg3425, u16 arg3426, u16 arg3427, u16 arg3428, u16 arg3429, u16 arg3430, u16 arg3431, u16 arg3432, u16 arg3433, u16 arg3434, u16 arg3435, u16 arg3436, u16 arg3437, u16 arg3438, u16 arg3439, u16 arg3440, u16 arg3441, u16 arg3442, u16 arg3443, u16 arg3444, u16 arg3445, u16 arg3446, u16 arg3447, u16 arg3448, u16 arg3449, u16 arg3450, u16 arg3451, u16 arg3452, u16 arg3453, u16 arg3454, u16 arg3455, u16 arg3456, u16 arg3457, u16 arg3458, u16 arg3459, u16 arg3460, u16 arg3461, u16 arg3462, u16 arg3463, u16 arg3464, u16 arg3465, u16 arg3466, u16 arg3467, u16 arg3468, u16 arg3469, u16 arg3470, u16 arg3471, u16 arg3472, u16 arg3473, u16 arg3474, u16 arg3475, u16 arg3476, u16 arg3477, u16 arg3478, u16 arg3479, u16 arg3480, u16 arg3481, u16 arg3482, u16 arg3483, u16 arg3484, u16 arg3485, u16 arg3486, u16 arg3487, u16 arg3488, u16 arg3489, u16 arg3490, u16 arg3491, u16 arg3492, u16 arg3493, u16 arg3494, u16 arg3495, u16 arg3496, u16 arg3497, u16 arg3498, u16 arg3499, u16 arg3500, u16 arg3501, u16 arg3502, u16 arg3503, u16 arg3504, u16 arg3505, u16 arg3506, u16 arg3507, u16 arg3508, u16 arg3509, u16 arg3510, u16 arg3511, u16 arg3512, u16 arg3513, u16 arg3514, u16 arg3515, u16 arg3516, u16 arg3517, u16 arg3518, u16 arg3519, u16 arg3520, u16 arg3521, u16 arg3522, u16 arg3523, u16 arg3524, u16 arg3525, u16 arg3526, u16 arg3527, u16 arg3528, u16 arg3529, u16 arg3530, u16 arg3531, u16 arg3532, u16 arg3533, u16 arg3534, u16 arg3535, u16 arg3536, u16 arg3537, u16 arg3538, u16 arg3539, u16 arg3540, u16 arg3541, u16 arg3542, u16 arg3543, u16 arg3544, u16 arg3545, u16 arg3546, u16 arg3547, u16 arg3548, u16 arg3549, u16 arg3550, u16 arg3551, u16 arg3552, u16 arg3553, u16 arg3554, u16 arg3555, u16 arg3556, u16 arg3557, u16 arg3558, u16 arg3559, u16 arg3560, u16 arg3561, u16 arg3562, u16 arg3563, u16 arg3564, u16 arg3565, u16 arg3566, u16 arg3567, u16 arg3568, u16 arg3569, u16 arg3570, u16 arg3571, u16 arg3572, u16 arg3573, u16 arg3574, u16 arg3575, u16 arg3576, u16 arg3577, u16 arg3578, u16 arg3579, u16 arg3580, u16 arg3581, u16 arg3582, u16 arg3583, u16 arg3584, u16 arg3585, u16 arg3586, u16 arg3587, u16 arg3588, u16 arg3589, u16 arg3590, u16 arg3591, u16 arg3592, u16 arg3593, u16 arg3594, u16 arg3595, u16 arg3596, u16 arg3597, u16 arg3598, u16 arg3599, u16 arg3600, u16 arg3601, u16 arg3602, u16 arg3603, u16 arg3604, u16 arg3605, u16 arg3606, u16 arg3607, u16 arg3608, u16 arg3609, u16 arg3610, u16 arg3611, u16 arg3612, u16 arg3613, u16 arg3614, u16 arg3615, u16 arg3616, u16 arg3617, u16 arg3618, u16 arg3619, u16 arg3620, u16 arg3621, u16 arg3622, u16 arg3623, u16 arg3624, u16 arg3625, u16 arg3626, u16 arg3627, u16 arg3628, u16 arg3629, u16 arg3630, u16 arg3631, u16 arg3632, u16 arg3633, u16 arg3634, u16 arg3635, u16 arg3636, u16 arg3637, u16 arg3638, u16 arg3639, u16 arg3640, u16 arg3641, u16 arg3642, u16 arg3643, u16 arg3644, u16 arg3645, u16 arg3646, u16 arg3647, u16 arg3648, u16 arg3649, u16 arg3650, u16 arg3651, u16 arg3652, u16 arg3653, u16 arg3654, u16 arg3655, u16 arg3656, u16 arg3657, u16 arg3658, u16 arg3659, u16 arg3660, u16 arg3661, u16 arg3662, u16 arg3663, u16 arg3664, u16 arg3665, u16 arg3666, u16 arg3667, u16 arg3668, u16 arg3669, u16 arg3670, u16 arg3671, u16 arg3672, u16 arg3673, u16 arg3674, u16 arg3675, u16 arg3676, u16 arg3677, u16 arg3678, u16 arg3679, u16 arg3680, u16 arg3681, u16 arg3682, u16 arg3683, u16 arg3684, u16 arg3685, u16 arg3686, u16 arg3687, u16 arg3688, u16 arg3689, u16 arg3690, u16 arg3691, u16 arg3692, u16 arg3693, u16 arg3694, u16 arg3695, u16 arg3696, u16 arg3697, u16 arg3698, u16 arg3699, u16 arg3700, u16 arg3701, u16 arg3702, u16 arg3703, u16 arg3704, u16 arg3705, u16 arg3706, u16 arg3707, u16 arg3708, u16 arg3709, u16 arg3710, u16 arg3711, u16 arg3712, u16 arg3713, u16 arg3714, u16 arg3715, u16 arg3716, u16 arg3717, u16 arg3718, u16 arg3719, u16 arg3720, u16 arg3721, u16 arg3722, u16 arg3723, u16 arg3724, u16 arg3725, u16 arg3726, u16 arg3727, u16 arg3728, u16 arg3729, u16 arg3730, u16 arg3731, u16 arg3732, u16 arg3733, u16 arg3734, u16 arg3735, u16 arg3736, u16 arg3737, u16 arg3738, u16 arg3739, u16 arg3740, u16 arg3741, u16 arg3742, u16 arg3743, u16 arg3744, u16 arg3745, u16 arg3746, u16 arg3747, u16 arg3748, u16 arg3749, u16 arg3750, u16 arg3751, u16 arg3752, u16 arg3753, u16 arg3754, u16 arg3755, u16 arg3756, u16 arg3757, u16 arg3758, u16 arg3759, u16 arg3760, u16 arg3761, u16 arg3762, u16 arg3763, u16 arg3764, u16 arg3765, u16 arg3766, u16 arg3767, u16 arg3768, u16 arg3769, u16 arg3770, u16 arg3771, u16 arg3772, u16 arg3773, u16 arg3774, u16 arg3775, u16 arg3776, u16 arg3777, u16 arg3778, u16 arg3779, u16 arg3780, u16 arg3781, u16 arg3782, u16 arg3783, u16 arg3784, u16 arg3785, u16 arg3786, u16 arg3787, u16 arg3788, u16 arg3789, u16 arg3790, u16 arg3791, u16 arg3792, u16 arg3793, u16 arg3794, u16 arg3795, u16 arg3796, u16 arg3797, u16 arg3798, u16 arg3799, u16 arg3800, u16 arg3801, u16 arg3802, u16 arg3803, u16 arg3804, u16 arg3805, u16 arg3806, u16 arg3807, u16 arg3808, u16 arg3809, u16 arg3810, u16 arg3811, u16 arg3812, u16 arg3813, u16 arg3814, u16 arg3815, u16 arg3816, u16 arg3817, u16 arg3818, u16 arg3819, u16 arg3820, u16 arg3821, u16 arg3822, u16 arg3823, u16 arg3824, u16 arg3825, u16 arg3826, u16 arg3827, u16 arg3828, u16 arg3829, u16 arg3830, u16 arg3831, u16 arg3832, u16 arg3833, u16 arg3834, u16 arg3835, u16 arg3836, u16 arg3837, u16 arg3838, u16 arg3839, u16 arg3840, u16 arg3841, u16 arg3842, u16 arg3843, u16 arg3844, u16 arg3845, u16 arg3846, u16 arg3847, u16 arg3848, u16 arg3849, u16 arg3850, u16 arg3851, u16 arg3852, u16 arg3853, u16 arg3854, u16 arg3855, u16 arg3856, u16 arg3857, u16 arg3858, u16 arg3859, u16 arg3860, u16 arg3861, u16 arg3862, u16 arg3863, u16 arg3864, u16 arg3865, u16 arg3866, u16 arg3867, u16 arg3868, u16 arg3869, u16 arg3870, u16 arg3871, u16 arg3872, u16 arg3873, u16 arg3874, u16 arg3875, u16 arg3876, u16 arg3877, u16 arg3878, u16 arg3879, u16 arg3880, u16 arg3881, u16 arg3882, u16 arg3883, u16 arg3884, u16 arg3885, u16 arg3886, u16 arg3887, u16 arg3888, u16 arg3889, u16 arg3890, u16 arg3891, u16 arg3892, u16 arg3893, u16 arg3894, u16 arg3895, u16 arg3896, u16 arg3897, u16 arg3898, u16 arg3899, u16 arg3900, u16 arg3901, u16 arg3902, u16 arg3903, u16 arg3904, u16 arg3905, u16 arg3906, u16 arg3907, u16 arg3908, u16 arg3909, u16 arg3910, u16 arg3911, u16 arg3912, u16 arg3913, u16 arg3914, u16 arg3915, u16 arg3916, u16 arg3917, u16 arg3918, u16 arg3919, u16 arg3920, u16 arg3921, u16 arg3922, u16 arg3923, u16 arg3924, u16 arg3925, u16 arg3926, u16 arg3927, u16 arg3928, u16 arg3929, u16 arg3930, u16 arg3931, u16 arg3932, u16 arg3933, u16 arg3934, u16 arg3935, u16 arg3936, u16 arg3937, u16 arg3938, u16 arg3939, u16 arg3940, u16 arg3941, u16 arg3942, u16 arg3943, u16 arg3944, u16 arg3945, u16 arg3946, u16 arg3947, u16 arg3948, u16 arg3949, u16 arg3950, u16 arg3951, u16 arg3952, u16 arg3953, u16 arg3954, u16 arg3955, u16 arg3956, u16 arg3957, u16 arg3958, u16 arg3959, u16 arg3960, u16 arg3961, u16 arg3962, u16 arg3963, u16 arg3964, u16 arg3965, u16 arg3966, u16 arg3967, u16 arg3968, u16 arg3969, u16 arg3970, u16 arg3971, u16 arg3972, u16 arg3973, u16 arg3974, u16 arg3975, u16 arg3976, u16 arg3977, u16 arg3978, u16 arg3979, u16 arg3980, u16 arg3981, u16 arg3982, u16 arg3983, u16 arg3984, u16 arg3985, u16 arg3986, u16 arg3987, u16 arg3988, u16 arg3989, u16 arg3990, u16 arg3991, u16 arg3992, u16 arg3993, u16 arg3994, u16 arg3995, u16 arg3996, u16 arg3997, u16 arg3998, u16 arg3999, u16 arg4000, u16 arg4001, u16 arg4002, u16 arg4003, u16 arg4004, u16 arg4005, u16 arg4006, u16 arg4007, u16 arg4008, u16 arg4009, u16 arg4010, u16 arg4011, u16 arg4012, u16 arg4013, u16 arg4014, u16 arg4015, u16 arg4016, u16 arg4017, u16 arg4018, u16 arg4019, u16 arg4020, u16 arg4021, u16 arg4022, u16 arg4023, u16 arg4024, u16 arg4025, u16 arg4026, u16 arg4027, u16 arg4028, u16 arg4029, u16 arg4030, u16 arg4031, u16 arg4032, u16 arg4033, u16 arg4034, u16 arg4035, u16 arg4036, u16 arg4037, u16 arg4038, u16 arg4039, u16 arg4040, u16 arg4041, u16 arg4042, u16 arg4043, u16 arg4044, u16 arg4045, u16 arg4046, u16 arg4047, u16 arg4048, u16 arg4049, u16 arg4050, u16 arg4051, u16 arg4052, u16 arg4053, u16 arg4054, u16 arg4055, u16 arg4056, u16 arg4057, u16 arg4058, u16 arg4059, u16 arg4060, u16 arg4061, u16 arg4062, u16 arg4063, u16 arg4064, u16 arg4065, u16 arg4066, u16 arg4067, u16 arg4068, u16 arg4069, u16 arg4070, u16 arg4071, u16 arg4072, u16 arg4073, u16 arg4074, u16 arg4075, u16 arg4076, u16 arg4077, u16 arg4078, u16 arg4079, u16 arg4080, u16 arg4081, u16 arg4082, u16 arg4083, u16 arg4084, u16 arg4085, u16 arg4086, u16 arg4087, u16 arg4088, u16 arg4089, u16 arg4090, u16 arg4091, u16 arg4092, u16 arg4093, u16 arg4094, u16 arg4095, u16 arg4096, u16 arg4097, u16 arg4098, u16 arg4099, u16 arg4100, u16 arg4101, u16 arg4102, u16 arg4103, u16 arg4104, u16 arg4105, u16 arg4106, u16 arg4107, u16 arg4108, u16 arg4109, u16 arg4110, u16 arg4111, u16 arg4112, u16 arg4113, u16 arg4114, u16 arg4115, u16 arg4116, u16 arg4117, u16 arg4118, u16 arg4119, u16 arg4120, u16 arg4121, u16 arg4122, u16 arg4123, u16 arg4124, u16 arg4125, u16 arg4126, u16 arg4127, u16 arg4128, u16 arg4129, u16 arg4130, u16 arg4131, u16 arg4132, u16 arg4133, u16 arg4134, u16 arg4135, u16 arg4136, u16 arg4137, u16 arg4138, u16 arg4139, u16 arg4140, u16 arg4141, u16 arg4142, u16 arg4143, u16 arg4144, u16 arg4145, u16 arg4146, u16 arg4147, u16 arg4148, u16 arg4149, u16 arg4150, u16 arg4151, u16 arg4152, u16 arg4153, u16 arg4154, u16 arg4155, u16 arg4156, u16 arg4157, u16 arg4158, u16 arg4159, u16 arg4160, u16 arg4161, u16 arg4162, u16 arg4163, u16 arg4164, u16 arg4165, u16 arg4166, u16 arg4167, u16 arg4168, u16 arg4169, u16 arg4170, u16 arg4171, u16 arg4172, u16 arg4173, u16 arg4174, u16 arg4175, u16 arg4176, u16 arg4177, u16 arg4178, u16 arg4179, u16 arg4180, u16 arg4181, u16 arg4182, u16 arg4183, u16 arg4184, u16 arg4185, u16 arg4186, u16 arg4187, u16 arg4188, u16 arg4189, u16 arg4190, u16 arg4191, u16 arg4192, u16 arg4193, u16 arg4194, u16 arg4195, u16 arg4196, u16 arg4197, u16 arg4198, u16 arg4199, u16 arg4200, u16 arg4201, u16 arg4202, u16 arg4203, u16 arg4204, u16 arg4205, u16 arg4206, u16 arg4207, u16 arg4208, u16 arg4209, u16 arg4210, u16 arg4211, u16 arg4212, u16 arg4213, u16 arg4214, u16 arg4215, u16 arg4216, u16 arg4217, u16 arg4218, u16 arg4219, u16 arg4220, u16 arg4221, u16 arg4222, u16 arg4223, u16 arg4224, u16 arg4225, u16 arg4226, u16 arg4227, u16 arg4228, u16 arg4229, u16 arg4230, u16 arg4231, u16 arg4232, u16 arg4233, u16 arg4234, u16 arg4235, u16 arg4236, u16 arg4237, u16 arg4238, u16 arg4239, u16 arg4240, u16 arg4241, u16 arg4242, u16 arg4243, u16 arg4244, u16 arg4245, u16 arg4246, u16 arg4247, u16 arg4248, u16 arg4249, u16 arg4250, u16 arg4251, u16 arg4252, u16 arg4253, u16 arg4254, u16 arg4255, u16 arg4256, u16 arg4257, u16 arg4258, u16 arg4259, u16 arg4260, u16 arg4261, u16 arg4262, u16 arg4263, u16 arg4264, u16 arg4265, u16 arg4266, u16 arg4267, u16 arg4268, u16 arg4269, u16 arg4270, u16 arg4271, u16 arg4272, u16 arg4273, u16 arg4274, u16 arg4275, u16 arg4276, u16 arg4277, u16 arg4278, u16 arg4279, u16 arg4280, u16 arg4281, u16 arg4282, u16 arg4283, u16 arg4284, u16 arg4285, u16 arg4286, u16 arg4287, u16 arg4288, u16 arg4289, u16 arg4290, u16 arg4291, u16 arg4292, u16 arg4293, u16 arg4294, u16 arg4295, u16 arg4296, u16 arg4297, u16 arg4298, u16 arg4299, u16 arg4300, u16 arg4301, u16 arg4302, u16 arg4303, u16 arg4304, u16 arg4305, u16 arg4306, u16 arg4307, u16 arg4308, u16 arg4309, u16 arg4310, u16 arg4311, u16 arg4312, u16 arg4313, u16 arg4314, u16 arg4315, u16 arg4316, u16 arg4317, u16 arg4318, u16 arg4319, u16 arg4320, u16 arg4321, u16 arg4322, u16 arg4323, u16 arg4324, u16 arg4325, u16 arg4326, u16 arg4327, u16 arg4328, u16 arg4329, u16 arg4330, u16 arg4331, u16 arg4332, u16 arg4333, u16 arg4334, u16 arg4335, u16 arg4336, u16 arg4337, u16 arg4338, u16 arg4339, u16 arg4340, u16 arg4341, u16 arg4342, u16 arg4343, u16 arg4344, u16 arg4345, u16 arg4346, u16 arg4347, u16 arg4348, u16 arg4349, u16 arg4350, u16 arg4351, u16 arg4352, u16 arg4353, u16 arg4354, u16 arg4355, u16 arg4356, u16 arg4357, u16 arg4358, u16 arg4359, u16 arg4360, u16 arg4361, u16 arg4362, u16 arg4363, u16 arg4364, u16 arg4365, u16 arg4366, u16 arg4367, u16 arg4368, u16 arg4369, u16 arg4370, u16 arg4371, u16 arg4372, u16 arg4373, u16 arg4374, u16 arg4375, u16 arg4376, u16 arg4377, u16 arg4378, u16 arg4379, u16 arg4380, u16 arg4381, u16 arg4382, u16 arg4383, u16 arg4384, u16 arg4385, u16 arg4386, u16 arg4387, u16 arg4388, u16 arg4389, u16 arg4390, u16 arg4391, u16 arg4392, u16 arg4393, u16 arg4394, u16 arg4395, u16 arg4396, u16 arg4397, u16 arg4398, u16 arg4399, u16 arg4400, u16 arg4401, u16 arg4402, u16 arg4403, u16 arg4404, u16 arg4405, u16 arg4406, u16 arg4407, u16 arg4408, u16 arg4409, u16 arg4410, u16 arg4411, u16 arg4412, u16 arg4413, u16 arg4414, u16 arg4415, u16 arg4416, u16 arg4417, u16 arg4418, u16 arg4419, u16 arg4420, u16 arg4421, u16 arg4422, u16 arg4423, u16 arg4424, u16 arg4425, u16 arg4426, u16 arg4427, u16 arg4428, u16 arg4429, u16 arg4430, u16 arg4431, u16 arg4432, u16 arg4433, u16 arg4434, u16 arg4435, u16 arg4436, u16 arg4437, u16 arg4438, u16 arg4439, u16 arg4440, u16 arg4441, u16 arg4442, u16 arg4443, u16 arg4444, u16 arg4445, u16 arg4446, u16 arg4447, u16 arg4448, u16 arg4449, u16 arg4450, u16 arg4451, u16 arg4452, u16 arg4453, u16 arg4454, u16 arg4455, u16 arg4456, u16 arg4457, u16 arg4458, u16 arg4459, u16 arg4460, u16 arg4461, u16 arg4462, u16 arg4463, u16 arg4464, u16 arg4465, u16 arg4466, u16 arg4467, u16 arg4468, u16 arg4469, u16 arg4470, u16 arg4471, u16 arg4472, u16 arg4473, u16 arg4474, u16 arg4475, u16 arg4476, u16 arg4477, u16 arg4478, u16 arg4479, u16 arg4480, u16 arg4481, u16 arg4482, u16 arg4483, u16 arg4484, u16 arg4485, u16 arg4486, u16 arg4487, u16 arg4488, u16 arg4489, u16 arg4490, u16 arg4491, u16 arg4492, u16 arg4493, u16 arg4494, u16 arg4495, u16 arg4496, u16 arg4497, u16 arg4498, u16 arg4499, u16 arg4500, u16 arg4501, u16 arg4502, u16 arg4503, u16 arg4504, u16 arg4505, u16 arg4506, u16 arg4507, u16 arg4508, u16 arg4509, u16 arg4510, u16 arg4511, u16 arg4512, u16 arg4513, u16 arg4514, u16 arg4515, u16 arg4516, u16 arg4517, u16 arg4518, u16 arg4519, u16 arg4520, u16 arg4521, u16 arg4522, u16 arg4523, u16 arg4524, u16 arg4525, u16 arg4526, u16 arg4527, u16 arg4528, u16 arg4529, u16 arg4530, u16 arg4531, u16 arg4532, u16 arg4533, u16 arg4534, u16 arg4535, u16 arg4536, u16 arg4537, u16 arg4538, u16 arg4539, u16 arg4540, u16 arg4541, u16 arg4542, u16 arg4543, u16 arg4544, u16 arg4545, u16 arg4546, u16 arg4547, u16 arg4548, u16 arg4549, u16 arg4550, u16 arg4551, u16 arg4552, u16 arg4553, u16 arg4554, u16 arg4555, u16 arg4556, u16 arg4557, u16 arg4558, u16 arg4559, u16 arg4560, u16 arg4561, u16 arg4562, u16 arg4563, u16 arg4564, u16 arg4565, u16 arg4566, u16 arg4567, u16 arg4568, u16 arg4569, u16 arg4570, u16 arg4571, u16 arg4572, u16 arg4573, u16 arg4574, u16 arg4575, u16 arg4576, u16 arg4577, u16 arg4578, u16 arg4579, u16 arg4580, u16 arg4581, u16 arg4582, u16 arg4583, u16 arg4584, u16 arg4585, u16 arg4586, u16 arg4587, u16 arg4588, u16 arg4589, u16 arg4590, u16 arg4591, u16 arg4592, u16 arg4593, u16 arg4594, u16 arg4595, u16 arg4596, u16 arg4597, u16 arg4598, u16 arg4599, u16 arg4600, u16 arg4601, u16 arg4602, u16 arg4603, u16 arg4604, u16 arg4605, u16 arg4606, u16 arg4607, u16 arg4608, u16 arg4609, u16 arg4610, u16 arg4611, u16 arg4612, u16 arg4613, u16 arg4614, u16 arg4615, u16 arg4616, u16 arg4617, u16 arg4618, u16 arg4619, u16 arg4620, u16 arg4621, u16 arg4622, u16 arg4623, u16 arg4624, u16 arg4625, u16 arg4626, u16 arg4627, u16 arg4628, u16 arg4629, u16 arg4630, u16 arg4631, u16 arg4632, u16 arg4633, u16 arg4634, u16 arg4635, u16 arg4636, u16 arg4637, u16 arg4638, u16 arg4639, u16 arg4640, u16 arg4641, u16 arg4642, u16 arg4643, u16 arg4644, u16 arg4645, u16 arg4646, u16 arg4647, u16 arg4648, u16 arg4649, u16 arg4650, u16 arg4651, u16 arg4652, u16 arg4653, u16 arg4654, u16 arg4655, u16 arg4656, u16 arg4657, u16 arg4658, u16 arg4659, u16 arg4660, u16 arg4661, u16 arg4662, u16 arg4663, u16 arg4664, u16 arg4665, u16 arg4666, u16 arg4667, u16 arg4668, u16 arg4669, u16 arg4670, u16 arg4671, u16 arg4672, u16 arg4673, u16 arg4674, u16 arg4675, u16 arg4676, u16 arg4677, u16 arg4678, u16 arg4679, u16 arg4680, u16 arg4681, u16 arg4682, u16 arg4683, u16 arg4684, u16 arg4685, u16 arg4686, u16 arg4687, u16 arg4688, u16 arg4689, u16 arg4690, u16 arg4691, u16 arg4692, u16 arg4693, u16 arg4694, u16 arg4695, u16 arg4696, u16 arg4697, u16 arg4698, u16 arg4699, u16 arg4700, u16 arg4701, u16 arg4702, u16 arg4703, u16 arg4704, u16 arg4705, u16 arg4706, u16 arg4707, u16 arg4708, u16 arg4709, u16 arg4710, u16 arg4711, u16 arg4712, u16 arg4713, u16 arg4714, u16 arg4715, u16 arg4716, u16 arg4717, u16 arg4718, u16 arg4719, u16 arg4720, u16 arg4721, u16 arg4722, u16 arg4723, u16 arg4724, u16 arg4725, u16 arg4726, u16 arg4727, u16 arg4728, u16 arg4729, u16 arg4730, u16 arg4731, u16 arg4732, u16 arg4733, u16 arg4734, u16 arg4735, u16 arg4736, u16 arg4737, u16 arg4738, u16 arg4739, u16 arg4740, u16 arg4741, u16 arg4742, u16 arg4743, u16 arg4744, u16 arg4745, u16 arg4746, u16 arg4747, u16 arg4748, u16 arg4749, u16 arg4750, u16 arg4751, u16 arg4752, u16 arg4753, u16 arg4754, u16 arg4755, u16 arg4756, u16 arg4757, u16 arg4758, u16 arg4759, u16 arg4760, u16 arg4761, u16 arg4762, u16 arg4763, u16 arg4764, u16 arg4765, u16 arg4766, u16 arg4767, u16 arg4768, u16 arg4769, u16 arg4770, u16 arg4771, u16 arg4772, u16 arg4773, u16 arg4774, u16 arg4775, u16 arg4776, u16 arg4777, u16 arg4778, u16 arg4779, u16 arg4780, u16 arg4781, u16 arg4782, u16 arg4783, u16 arg4784, u16 arg4785, u16 arg4786, u16 arg4787, u16 arg4788, u16 arg4789, u16 arg4790, u16 arg4791, u16 arg4792, u16 arg4793, u16 arg4794, u16 arg4795, u16 arg4796, u16 arg4797, u16 arg4798, u16 arg4799, u16 arg4800, u16 arg4801, u16 arg4802, u16 arg4803, u16 arg4804, u16 arg4805, u16 arg4806, u16 arg4807, u16 arg4808, u16 arg4809, u16 arg4810, u16 arg4811, u16 arg4812, u16 arg4813, u16 arg4814, u16 arg4815, u16 arg4816, u16 arg4817, u16 arg4818, u16 arg4819, u16 arg4820, u16 arg4821, u16 arg4822, u16 arg4823, u16 arg4824, u16 arg4825, u16 arg4826, u16 arg4827, u16 arg4828, u16 arg4829, u16 arg4830, u16 arg4831, u16 arg4832, u16 arg4833, u16 arg4834, u16 arg4835, u16 arg4836, u16 arg4837, u16 arg4838, u16 arg4839, u16 arg4840, u16 arg4841, u16 arg4842, u16 arg4843, u16 arg4844, u16 arg4845, u16 arg4846, u16 arg4847, u16 arg4848, u16 arg4849, u16 arg4850, u16 arg4851, u16 arg4852, u16 arg4853, u16 arg4854, u16 arg4855, u16 arg4856, u16 arg4857, u16 arg4858, u16 arg4859, u16 arg4860, u16 arg4861, u16 arg4862, u16 arg4863, u16 arg4864, u16 arg4865, u16 arg4866, u16 arg4867, u16 arg4868, u16 arg4869, u16 arg4870, u16 arg4871, u16 arg4872, u16 arg4873, u16 arg4874, u16 arg4875, u16 arg4876, u16 arg4877, u16 arg4878, u16 arg4879, u16 arg4880, u16 arg4881, u16 arg4882, u16 arg4883, u16 arg4884, u16 arg4885, u16 arg4886, u16 arg4887, u16 arg4888, u16 arg4889, u16 arg4890, u16 arg4891, u16 arg4892, u16 arg4893, u16 arg4894, u16 arg4895, u16 arg4896, u16 arg4897, u16 arg4898, u16 arg4899, u16 arg4900, u16 arg4901, u16 arg4902, u16 arg4903, u16 arg4904, u16 arg4905, u16 arg4906, u16 arg4907, u16 arg4908, u16 arg4909, u16 arg4910, u16 arg4911, u16 arg4912, u16 arg4913, u16 arg4914, u16 arg4915, u16 arg4916, u16 arg4917, u16 arg4918, u16 arg4919, u16 arg4920, u16 arg4921, u16 arg4922, u16 arg4923, u16 arg4924, u16 arg4925, u16 arg4926, u16 arg4927, u16 arg4928, u16 arg4929, u16 arg4930, u16 arg4931, u16 arg4932, u16 arg4933, u16 arg4934, u16 arg4935, u16 arg4936, u16 arg4937, u16 arg4938, u16 arg4939, u16 arg4940, u16 arg4941, u16 arg4942, u16 arg4943, u16 arg4944, u16 arg4945, u16 arg4946, u16 arg4947, u16 arg4948, u16 arg4949, u16 arg4950, u16 arg4951, u16 arg4952, u16 arg4953, u16 arg4954, u16 arg4955, u16 arg4956, u16 arg4957, u16 arg4958, u16 arg4959, u16 arg4960, u16 arg4961, u16 arg4962, u16 arg4963, u16 arg4964, u16 arg4965, u16 arg4966, u16 arg4967, u16 arg4968, u16 arg4969, u16 arg4970, u16 arg4971, u16 arg4972, u16 arg4973, u16 arg4974, u16 arg4975, u16 arg4976, u16 arg4977, u16 arg4978, u16 arg4979, u16 arg4980, u16 arg4981, u16 arg4982, u16 arg4983, u16 arg4984, u16 arg4985, u16 arg4986, u16 arg4987, u16 arg4988, u16 arg4989, u16 arg4990, u16 arg4991, u16 arg4992, u16 arg4993, u16 arg4994, u16 arg4995, u16 arg4996, u16 arg4997, u16 arg4998, u16 arg4999, u16 arg5000, u16 arg5001, u16 arg5002, u16 arg5003, u16 arg5004, u16 arg5005, u16 arg5006, u16 arg5007, u16 arg5008, u16 arg5009, u16 arg5010, u16 arg5011, u16 arg5012, u16 arg5013, u16 arg5014, u16 arg5015, u16 arg5016, u16 arg5017, u16 arg5018, u16 arg5019, u16 arg5020, u16 arg5021, u16 arg5022, u16 arg5023, u16 arg5024, u16 arg5025, u16 arg5026, u16 arg5027, u16 arg5028, u16 arg5029, u16 arg5030, u16 arg5031, u16 arg5032, u16 arg5033, u16 arg5034, u16 arg5035, u16 arg5036, u16 arg5037, u16 arg5038, u16 arg5039, u16 arg5040, u16 arg5041, u16 arg5042, u16 arg5043, u16 arg5044, u16 arg5045, u16 arg5046, u16 arg5047, u16 arg5048, u16 arg5049, u16 arg5050, u16 arg5051, u16 arg5052, u16 arg5053, u16 arg5054, u16 arg5055, u16 arg5056, u16 arg5057, u16 arg5058, u16 arg5059, u16 arg5060, u16 arg5061, u16 arg5062, u16 arg5063, u16 arg5064, u16 arg5065, u16 arg5066, u16 arg5067, u16 arg5068, u16 arg5069, u16 arg5070, u16 arg5071, u16 arg5072, u16 arg5073, u16 arg5074, u16 arg5075, u16 arg5076, u16 arg5077, u16 arg5078, u16 arg5079, u16 arg5080, u16 arg5081, u16 arg5082, u16 arg5083, u16 arg5084, u16 arg5085, u16 arg5086, u16 arg5087, u16 arg5088, u16 arg5089, u16 arg5090, u16 arg5091, u16 arg5092, u16 arg5093, u16 arg5094, u16 arg5095, u16 arg5096, u16 arg5097, u16 arg5098, u16 arg5099, u16 arg5100, u16 arg5101, u16 arg5102, u16 arg5103, u16 arg5104, u16 arg5105, u16 arg5106, u16 arg5107, u16 arg5108, u16 arg5109, u16 arg5110, u16 arg5111, u16 arg5112, u16 arg5113, u16 arg5114, u16 arg5115, u16 arg5116, u16 arg5117, u16 arg5118, u16 arg5119, u16 arg5120, u16 arg5121, u16 arg5122, u16 arg5123, u16 arg5124, u16 arg5125, u16 arg5126, u16 arg5127, u16 arg5128, u16 arg5129, u16 arg5130, u16 arg5131, u16 arg5132, u16 arg5133, u16 arg5134, u16 arg5135, u16 arg5136, u16 arg5137, u16 arg5138, u16 arg5139, u16 arg5140, u16 arg5141, u16 arg5142, u16 arg5143, u16 arg5144, u16 arg5145, u16 arg5146, u16 arg5147, u16 arg5148, u16 arg5149, u16 arg5150, u16 arg5151, u16 arg5152, u16 arg5153, u16 arg5154, u16 arg5155, u16 arg5156, u16 arg5157, u16 arg5158, u16 arg5159, u16 arg5160, u16 arg5161, u16 arg5162, u16 arg5163, u16 arg5164, u16 arg5165, u16 arg5166, u16 arg5167, u16 arg5168, u16 arg5169, u16 arg5170, u16 arg5171, u16 arg5172, u16 arg5173, u16 arg5174, u16 arg5175, u16 arg5176, u16 arg5177, u16 arg5178, u16 arg5179, u16 arg5180, u16 arg5181, u16 arg5182, u16 arg5183, u16 arg5184, u16 arg5185, u16 arg5186, u16 arg5187, u16 arg5188, u16 arg5189, u16 arg5190, u16 arg5191, u16 arg5192, u16 arg5193, u16 arg5194, u16 arg5195, u16 arg5196, u16 arg5197, u16 arg5198, u16 arg5199, u16 arg5200, u16 arg5201, u16 arg5202, u16 arg5203, u16 arg5204, u16 arg5205, u16 arg5206, u16 arg5207, u16 arg5208, u16 arg5209, u16 arg5210, u16 arg5211, u16 arg5212, u16 arg5213, u16 arg5214, u16 arg5215, u16 arg5216, u16 arg5217, u16 arg5218, u16 arg5219, u16 arg5220, u16 arg5221, u16 arg5222, u16 arg5223, u16 arg5224, u16 arg5225, u16 arg5226, u16 arg5227, u16 arg5228, u16 arg5229, u16 arg5230, u16 arg5231, u16 arg5232, u16 arg5233, u16 arg5234, u16 arg5235, u16 arg5236, u16 arg5237, u16 arg5238, u16 arg5239, u16 arg5240, u16 arg5241, u16 arg5242, u16 arg5243, u16 arg5244, u16 arg5245, u16 arg5246, u16 arg5247, u16 arg5248, u16 arg5249, u16 arg5250, u16 arg5251, u16 arg5252, u16 arg5253, u16 arg5254, u16 arg5255, u16 arg5256, u16 arg5257, u16 arg5258, u16 arg5259, u16 arg5260, u16 arg5261, u16 arg5262, u16 arg5263, u16 arg5264, u16 arg5265, u16 arg5266, u16 arg5267, u16 arg5268, u16 arg5269, u16 arg5270, u16 arg5271, u16 arg5272, u16 arg5273, u16 arg5274, u16 arg5275, u16 arg5276, u16 arg5277, u16 arg5278, u16 arg5279, u16 arg5280, u16 arg5281, u16 arg5282, u16 arg5283, u16 arg5284, u16 arg5285, u16 arg5286, u16 arg5287, u16 arg5288, u16 arg5289, u16 arg5290, u16 arg5291, u16 arg5292, u16 arg5293, u16 arg5294, u16 arg5295, u16 arg5296, u16 arg5297, u16 arg5298, u16 arg5299, u16 arg5300, u16 arg5301, u16 arg5302, u16 arg5303, u16 arg5304, u16 arg5305, u16 arg5306, u16 arg5307, u16 arg5308, u16 arg5309, u16 arg5310, u16 arg5311, u16 arg5312, u16 arg5313, u16 arg5314, u16 arg5315, u16 arg5316, u16 arg5317, u16 arg5318, u16 arg5319, u16 arg5320, u16 arg5321, u16 arg5322, u16 arg5323, u16 arg5324, u16 arg5325, u16 arg5326, u16 arg5327, u16 arg5328, u16 arg5329, u16 arg5330, u16 arg5331, u16 arg5332, u16 arg5333, u16 arg5334, u16 arg5335, u16 arg5336, u16 arg5337, u16 arg5338, u16 arg5339, u16 arg5340, u16 arg5341, u16 arg5342, u16 arg5343, u16 arg5344, u16 arg5345, u16 arg5346, u16 arg5347, u16 arg5348, u16 arg5349, u16 arg5350, u16 arg5351, u16 arg5352, u16 arg5353, u16 arg5354, u16 arg5355, u16 arg5356, u16 arg5357, u16 arg5358, u16 arg5359, u16 arg5360, u16 arg5361, u16 arg5362, u16 arg5363, u16 arg5364, u16 arg5365, u16 arg5366, u16 arg5367, u16 arg5368, u16 arg5369, u16 arg5370, u16 arg5371, u16 arg5372, u16 arg5373, u16 arg5374, u16 arg5375, u16 arg5376, u16 arg5377, u16 arg5378, u16 arg5379, u16 arg5380, u16 arg5381, u16 arg5382, u16 arg5383, u16 arg5384, u16 arg5385, u16 arg5386, u16 arg5387, u16 arg5388, u16 arg5389, u16 arg5390, u16 arg5391, u16 arg5392, u16 arg5393, u16 arg5394, u16 arg5395, u16 arg5396, u16 arg5397, u16 arg5398, u16 arg5399, u16 arg5400, u16 arg5401, u16 arg5402, u16 arg5403, u16 arg5404, u16 arg5405, u16 arg5406, u16 arg5407, u16 arg5408, u16 arg5409, u16 arg5410, u16 arg5411, u16 arg5412, u16 arg5413, u16 arg5414, u16 arg5415, u16 arg5416, u16 arg5417, u16 arg5418, u16 arg5419, u16 arg5420, u16 arg5421, u16 arg5422, u16 arg5423, u16 arg5424, u16 arg5425, u16 arg5426, u16 arg5427, u16 arg5428, u16 arg5429, u16 arg5430, u16 arg5431, u16 arg5432, u16 arg5433, u16 arg5434, u16 arg5435, u16 arg5436, u16 arg5437, u16 arg5438, u16 arg5439, u16 arg5440, u16 arg5441, u16 arg5442, u16 arg5443, u16 arg5444, u16 arg5445, u16 arg5446, u16 arg5447, u16 arg5448, u16 arg5449, u16 arg5450, u16 arg5451, u16 arg5452, u16 arg5453, u16 arg5454, u16 arg5455, u16 arg5456, u16 arg5457, u16 arg5458, u16 arg5459, u16 arg5460, u16 arg5461, u16 arg5462, u16 arg5463, u16 arg5464, u16 arg5465, u16 arg5466, u16 arg5467, u16 arg5468, u16 arg5469, u16 arg5470, u16 arg5471, u16 arg5472, u16 arg5473, u16 arg5474, u16 arg5475, u16 arg5476, u16 arg5477, u16 arg5478, u16 arg5479, u16 arg5480, u16 arg5481, u16 arg5482, u16 arg5483, u16 arg5484, u16 arg5485, u16 arg5486, u16 arg5487, u16 arg5488, u16 arg5489, u16 arg5490, u16 arg5491, u16 arg5492, u16 arg5493, u16 arg5494, u16 arg5495, u16 arg5496, u16 arg5497, u16 arg5498, u16 arg5499, u16 arg5500, u16 arg5501, u16 arg5502, u16 arg5503, u16 arg5504, u16 arg5505, u16 arg5506, u16 arg5507, u16 arg5508, u16 arg5509, u16 arg5510, u16 arg5511, u16 arg5512, u16 arg5513, u16 arg5514, u16 arg5515, u16 arg5516, u16 arg5517, u16 arg5518, u16 arg5519, u16 arg5520, u16 arg5521, u16 arg5522, u16 arg5523, u16 arg5524, u16 arg5525, u16 arg5526, u16 arg5527, u16 arg5528, u16 arg5529, u16 arg5530, u16 arg5531, u16 arg5532, u16 arg5533, u16 arg5534, u16 arg5535, u16 arg5536, u16 arg5537, u16 arg5538, u16 arg5539, u16 arg5540, u16 arg5541, u16 arg5542, u16 arg5543, u16 arg5544, u16 arg5545, u16 arg5546, u16 arg5547, u16 arg5548, u16 arg5549, u16 arg5550, u16 arg5551, u16 arg5552, u16 arg5553, u16 arg5554, u16 arg5555, u16 arg5556, u16 arg5557, u16 arg5558, u16 arg5559, u16 arg5560, u16 arg5561, u16 arg5562, u16 arg5563, u16 arg5564, u16 arg5565, u16 arg5566, u16 arg5567, u16 arg5568, u16 arg5569, u16 arg5570, u16 arg5571, u16 arg5572, u16 arg5573, u16 arg5574, u16 arg5575, u16 arg5576, u16 arg5577, u16 arg5578, u16 arg5579, u16 arg5580, u16 arg5581, u16 arg5582, u16 arg5583, u16 arg5584, u16 arg5585, u16 arg5586, u16 arg5587, u16 arg5588, u16 arg5589, u16 arg5590, u16 arg5591, u16 arg5592, u16 arg5593, u16 arg5594, u16 arg5595, u16 arg5596, u16 arg5597, u16 arg5598, u16 arg5599, u16 arg5600, u16 arg5601, u16 arg5602, u16 arg5603, u16 arg5604, u16 arg5605, u16 arg5606, u16 arg5607, u16 arg5608, u16 arg5609, u16 arg5610, u16 arg5611, u16 arg5612, u16 arg5613, u16 arg5614, u16 arg5615, u16 arg5616, u16 arg5617, u16 arg5618, u16 arg5619, u16 arg5620, u16 arg5621, u16 arg5622, u16 arg5623, u16 arg5624, u16 arg5625, u16 arg5626, u16 arg5627, u16 arg5628, u16 arg5629, u16 arg5630, u16 arg5631, u16 arg5632, u16 arg5633, u16 arg5634, u16 arg5635, u16 arg5636, u16 arg5637, u16 arg5638, u16 arg5639, u16 arg5640, u16 arg5641, u16 arg5642, u16 arg5643, u16 arg5644, u16 arg5645, u16 arg5646, u16 arg5647, u16 arg5648, u16 arg5649, u16 arg5650, u16 arg5651, u16 arg5652, u16 arg5653, u16 arg5654, u16 arg5655, u16 arg5656, u16 arg5657, u16 arg5658, u16 arg5659, u16 arg5660, u16 arg5661, u16 arg5662, u16 arg5663, u16 arg5664, u16 arg5665, u16 arg5666, u16 arg5667, u16 arg5668, u16 arg5669, u16 arg5670, u16 arg5671, u16 arg5672, u16 arg5673, u16 arg5674, u16 arg5675, u16 arg5676, u16 arg5677, u16 arg5678, u16 arg5679, u16 arg5680, u16 arg5681, u16 arg5682, u16 arg5683, u16 arg5684, u16 arg5685, u16 arg5686, u16 arg5687, u16 arg5688, u16 arg5689, u16 arg5690, u16 arg5691, u16 arg5692, u16 arg5693, u16 arg5694, u16 arg5695, u16 arg5696, u16 arg5697, u16 arg5698, u16 arg5699, u16 arg5700, u16 arg5701, u16 arg5702, u16 arg5703, u16 arg5704, u16 arg5705, u16 arg5706, u16 arg5707, u16 arg5708, u16 arg5709, u16 arg5710, u16 arg5711, u16 arg5712, u16 arg5713, u16 arg5714, u16 arg5715, u16 arg5716, u16 arg5717, u16 arg5718, u16 arg5719, u16 arg5720, u16 arg5721, u16 arg5722, u16 arg5723, u16 arg5724, u16 arg5725, u16 arg5726, u16 arg5727, u16 arg5728, u16 arg5729, u16 arg5730, u16 arg5731, u16 arg5732, u16 arg5733, u16 arg5734, u16 arg5735, u16 arg5736, u16 arg5737, u16 arg5738, u16 arg5739, u16 arg5740, u16 arg5741, u16 arg5742, u16 arg5743, u16 arg5744, u16 arg5745, u16 arg5746, u16 arg5747, u16 arg5748, u16 arg5749, u16 arg5750, u16 arg5751, u16 arg5752, u16 arg5753, u16 arg5754, u16 arg5755, u16 arg5756, u16 arg5757, u16 arg5758, u16 arg5759, u16 arg5760, u16 arg5761, u16 arg5762, u16 arg5763, u16 arg5764, u16 arg5765, u16 arg5766, u16 arg5767, u16 arg5768, u16 arg5769, u16 arg5770, u16 arg5771, u16 arg5772, u16 arg5773, u16 arg5774, u16 arg5775, u16 arg5776, u16 arg5777, u16 arg5778, u16 arg5779, u16 arg5780, u16 arg5781, u16 arg5782, u16 arg5783, u16 arg5784, u16 arg5785, u16 arg5786, u16 arg5787, u16 arg5788, u16 arg5789, u16 arg5790, u16 arg5791, u16 arg5792, u16 arg5793, u16 arg5794, u16 arg5795, u16 arg5796, u16 arg5797, u16 arg5798, u16 arg5799, u16 arg5800, u16 arg5801, u16 arg5802, u16 arg5803, u16 arg5804, u16 arg5805, u16 arg5806, u16 arg5807, u16 arg5808, u16 arg5809, u16 arg5810, u16 arg5811, u16 arg5812, u16 arg5813, u16 arg5814, u16 arg5815, u16 arg5816, u16 arg5817, u16 arg5818, u16 arg5819, u16 arg5820, u16 arg5821, u16 arg5822, u16 arg5823, u16 arg5824, u16 arg5825, u16 arg5826, u16 arg5827, u16 arg5828, u16 arg5829, u16 arg5830, u16 arg5831, u16 arg5832, u16 arg5833, u16 arg5834, u16 arg5835, u16 arg5836, u16 arg5837, u16 arg5838, u16 arg5839, u16 arg5840, u16 arg5841, u16 arg5842, u16 arg5843, u16 arg5844, u16 arg5845, u16 arg5846, u16 arg5847, u16 arg5848, u16 arg5849, u16 arg5850, u16 arg5851, u16 arg5852, u16 arg5853, u16 arg5854, u16 arg5855, u16 arg5856, u16 arg5857, u16 arg5858, u16 arg5859, u16 arg5860, u16 arg5861, u16 arg5862, u16 arg5863, u16 arg5864, u16 arg5865, u16 arg5866, u16 arg5867, u16 arg5868, u16 arg5869, u16 arg5870, u16 arg5871, u16 arg5872, u16 arg5873, u16 arg5874, u16 arg5875, u16 arg5876, u16 arg5877, u16 arg5878, u16 arg5879, u16 arg5880, u16 arg5881, u16 arg5882, u16 arg5883, u16 arg5884, u16 arg5885, u16 arg5886, u16 arg5887, u16 arg5888, u16 arg5889, u16 arg5890, u16 arg5891, u16 arg5892, u16 arg5893, u16 arg5894, u16 arg5895, u16 arg5896, u16 arg5897, u16 arg5898, u16 arg5899, u16 arg5900, u16 arg5901, u16 arg5902, u16 arg5903, u16 arg5904, u16 arg5905, u16 arg5906, u16 arg5907, u16 arg5908, u16 arg5909, u16 arg5910, u16 arg5911, u16 arg5912, u16 arg5913, u16 arg5914, u16 arg5915, u16 arg5916, u16 arg5917, u16 arg5918, u16 arg5919, u16 arg5920, u16 arg5921, u16 arg5922, u16 arg5923, u16 arg5924, u16 arg5925, u16 arg5926, u16 arg5927, u16 arg5928, u16 arg5929, u16 arg5930, u16 arg5931, u16 arg5932, u16 arg5933, u16 arg5934, u16 arg5935, u16 arg5936, u16 arg5937, u16 arg5938, u16 arg5939, u16 arg5940, u16 arg5941, u16 arg5942, u16 arg5943, u16 arg5944, u16 arg5945, u16 arg5946, u16 arg5947, u16 arg5948, u16 arg5949, u16 arg5950, u16 arg5951, u16 arg5952, u16 arg5953, u16 arg5954, u16 arg5955, u16 arg5956, u16 arg5957, u16 arg5958, u16 arg5959, u16 arg5960, u16 arg5961, u16 arg5962, u16 arg5963, u16 arg5964, u16 arg5965, u16 arg5966, u16 arg5967, u16 arg5968, u16 arg5969, u16 arg5970, u16 arg5971, u16 arg5972, u16 arg5973, u16 arg5974, u16 arg5975, u16 arg5976, u16 arg5977, u16 arg5978, u16 arg5979, u16 arg5980, u16 arg5981, u16 arg5982, u16 arg5983, u16 arg5984, u16 arg5985, u16 arg5986, u16 arg5987, u16 arg5988, u16 arg5989, u16 arg5990, u16 arg5991, u16 arg5992, u16 arg5993, u16 arg5994, u16 arg5995, u16 arg5996, u16 arg5997, u16 arg5998, u16 arg5999, u16 arg6000, u16 arg6001, u16 arg6002, u16 arg6003, u16 arg6004, u16 arg6005, u16 arg6006, u16 arg6007, u16 arg6008, u16 arg6009, u16 arg6010, u16 arg6011, u16 arg6012, u16 arg6013, u16 arg6014, u16 arg6015, u16 arg6016, u16 arg6017, u16 arg6018, u16 arg6019, u16 arg6020, u16 arg6021, u16 arg6022, u16 arg6023, u16 arg6024, u16 arg6025, u16 arg6026, u16 arg6027, u16 arg6028, u16 arg6029, u16 arg6030, u16 arg6031, u16 arg6032, u16 arg6033, u16 arg6034, u16 arg6035, u16 arg6036, u16 arg6037, u16 arg6038, u16 arg6039, u16 arg6040, u16 arg6041, u16 arg6042, u16 arg6043, u16 arg6044, u16 arg6045, u16 arg6046, u16 arg6047, u16 arg6048, u16 arg6049, u16 arg6050, u16 arg6051, u16 arg6052, u16 arg6053, u16 arg6054, u16 arg6055, u16 arg6056, u16 arg6057, u16 arg6058, u16 arg6059, u16 arg6060, u16 arg6061, u16 arg6062, u16 arg6063, u16 arg6064, u16 arg6065, u16 arg6066, u16 arg6067, u16 arg6068, u16 arg6069, u16 arg6070, u16 arg6071, u16 arg6072, u16 arg6073, u16 arg6074, u16 arg6075, u16 arg6076, u16 arg6077, u16 arg6078, u16 arg6079, u16 arg6080, u16 arg6081, u16 arg6082, u16 arg6083, u16 arg6084, u16 arg6085, u16 arg6086, u16 arg6087, u16 arg6088, u16 arg6089, u16 arg6090, u16 arg6091, u16 arg6092, u16 arg6093, u16 arg6094, u16 arg6095, u16 arg6096, u16 arg6097, u16 arg6098, u16 arg6099, u16 arg6100, u16 arg6101, u16 arg6102, u16 arg6103, u16 arg6104, u16 arg6105, u16 arg6106, u16 arg6107, u16 arg6108, u16 arg6109, u16 arg6110, u16 arg6111, u16 arg6112, u16 arg6113, u16 arg6114, u16 arg6115, u16 arg6116, u16 arg6117, u16 arg6118, u16 arg6119, u16 arg6120, u16 arg6121, u16 arg6122, u16 arg6123, u16 arg6124, u16 arg6125, u16 arg6126, u16 arg6127, u16 arg6128, u16 arg6129, u16 arg6130, u16 arg6131, u16 arg6132, u16 arg6133, u16 arg6134, u16 arg6135, u16 arg6136, u16 arg6137, u16 arg6138, u16 arg6139, u16 arg6140, u16 arg6141, u16 arg6142, u16 arg6143, u16 arg6144, u16 arg6145, u16 arg6146, u16 arg6147, u16 arg6148, u16 arg6149, u16 arg6150, u16 arg6151, u16 arg6152, u16 arg6153, u16 arg6154, u16 arg6155, u16 arg6156, u16 arg6157, u16 arg6158, u16 arg6159, u16 arg6160, u16 arg6161, u16 arg6162, u16 arg6163, u16 arg6164, u16 arg6165, u16 arg6166, u16 arg6167, u16 arg6168, u16 arg6169, u16 arg6170, u16 arg6171, u16 arg6172, u16 arg6173, u16 arg6174, u16 arg6175, u16 arg6176, u16 arg6177, u16 arg6178, u16 arg6179, u16 arg6180, u16 arg6181, u16 arg6182, u16 arg6183, u16 arg6184, u16 arg6185, u16 arg6186, u16 arg6187, u16 arg6188, u16 arg6189, u16 arg6190, u16 arg6191, u16 arg6192, u16 arg6193, u16 arg6194, u16 arg6195, u16 arg6196, u16 arg6197, u16 arg6198, u16 arg6199, u16 arg6200, u16 arg6201, u16 arg6202, u16 arg6203, u16 arg6204, u16 arg6205, u16 arg6206, u16 arg6207, u16 arg6208, u16 arg6209, u16 arg6210, u16 arg6211, u16 arg6212, u16 arg6213, u16 arg6214, u16 arg6215, u16 arg6216, u16 arg6217, u16 arg6218, u16 arg6219, u16 arg6220, u16 arg6221, u16 arg6222, u16 arg6223, u16 arg6224, u16 arg6225, u16 arg6226, u16 arg6227, u16 arg6228, u16 arg6229, u16 arg6230, u16 arg6231, u16 arg6232, u16 arg6233, u16 arg6234, u16 arg6235, u16 arg6236, u16 arg6237, u16 arg6238, u16 arg6239, u16 arg6240, u16 arg6241, u16 arg6242, u16 arg6243, u16 arg6244, u16 arg6245, u16 arg6246, u16 arg6247, u16 arg6248, u16 arg6249, u16 arg6250, u16 arg6251, u16 arg6252, u16 arg6253, u16 arg6254, u16 arg6255, u16 arg6256, u16 arg6257, u16 arg6258, u16 arg6259, u16 arg6260, u16 arg6261, u16 arg6262, u16 arg6263, u16 arg6264, u16 arg6265, u16 arg6266, u16 arg6267, u16 arg6268, u16 arg6269, u16 arg6270, u16 arg6271, u16 arg6272, u16 arg6273, u16 arg6274, u16 arg6275, u16 arg6276, u16 arg6277, u16 arg6278, u16 arg6279, u16 arg6280, u16 arg6281, u16 arg6282, u16 arg6283, u16 arg6284, u16 arg6285, u16 arg6286, u16 arg6287, u16 arg6288, u16 arg6289, u16 arg6290, u16 arg6291, u16 arg6292, u16 arg6293, u16 arg6294, u16 arg6295, u16 arg6296, u16 arg6297, u16 arg6298, u16 arg6299, u16 arg6300, u16 arg6301, u16 arg6302, u16 arg6303, u16 arg6304, u16 arg6305, u16 arg6306, u16 arg6307, u16 arg6308, u16 arg6309, u16 arg6310, u16 arg6311, u16 arg6312, u16 arg6313, u16 arg6314, u16 arg6315, u16 arg6316, u16 arg6317, u16 arg6318, u16 arg6319, u16 arg6320, u16 arg6321, u16 arg6322, u16 arg6323, u16 arg6324, u16 arg6325, u16 arg6326, u16 arg6327, u16 arg6328, u16 arg6329, u16 arg6330, u16 arg6331, u16 arg6332, u16 arg6333, u16 arg6334, u16 arg6335, u16 arg6336, u16 arg6337, u16 arg6338, u16 arg6339, u16 arg6340, u16 arg6341, u16 arg6342, u16 arg6343, u16 arg6344, u16 arg6345, u16 arg6346, u16 arg6347, u16 arg6348, u16 arg6349, u16 arg6350, u16 arg6351, u16 arg6352, u16 arg6353, u16 arg6354, u16 arg6355, u16 arg6356, u16 arg6357, u16 arg6358, u16 arg6359, u16 arg6360, u16 arg6361, u16 arg6362, u16 arg6363, u16 arg6364, u16 arg6365, u16 arg6366, u16 arg6367, u16 arg6368, u16 arg6369, u16 arg6370, u16 arg6371, u16 arg6372, u16 arg6373, u16 arg6374, u16 arg6375, u16 arg6376, u16 arg6377, u16 arg6378, u16 arg6379, u16 arg6380, u16 arg6381, u16 arg6382, u16 arg6383, u16 arg6384, u16 arg6385, u16 arg6386, u16 arg6387, u16 arg6388, u16 arg6389, u16 arg6390, u16 arg6391, u16 arg6392, u16 arg6393, u16 arg6394, u16 arg6395, u16 arg6396, u16 arg6397, u16 arg6398, u16 arg6399, u16 arg6400, u16 arg6401, u16 arg6402, u16 arg6403, u16 arg6404, u16 arg6405, u16 arg6406, u16 arg6407, u16 arg6408, u16 arg6409, u16 arg6410, u16 arg6411, u16 arg6412, u16 arg6413, u16 arg6414, u16 arg6415, u16 arg6416, u16 arg6417, u16 arg6418, u16 arg6419, u16 arg6420, u16 arg6421, u16 arg6422, u16 arg6423, u16 arg6424, u16 arg6425, u16 arg6426, u16 arg6427, u16 arg6428, u16 arg6429, u16 arg6430, u16 arg6431, u16 arg6432, u16 arg6433, u16 arg6434, u16 arg6435, u16 arg6436, u16 arg6437, u16 arg6438, u16 arg6439, u16 arg6440, u16 arg6441, u16 arg6442, u16 arg6443, u16 arg6444, u16 arg6445, u16 arg6446, u16 arg6447, u16 arg6448, u16 arg6449, u16 arg6450, u16 arg6451, u16 arg6452, u16 arg6453, u16 arg6454, u16 arg6455, u16 arg6456, u16 arg6457, u16 arg6458, u16 arg6459, u16 arg6460, u16 arg6461, u16 arg6462, u16 arg6463, u16 arg6464, u16 arg6465, u16 arg6466, u16 arg6467, u16 arg6468, u16 arg6469, u16 arg6470, u16 arg6471, u16 arg6472, u16 arg6473, u16 arg6474, u16 arg6475, u16 arg6476, u16 arg6477, u16 arg6478, u16 arg6479, u16 arg6480, u16 arg6481, u16 arg6482, u16 arg6483, u16 arg6484, u16 arg6485, u16 arg6486, u16 arg6487, u16 arg6488, u16 arg6489, u16 arg6490, u16 arg6491, u16 arg6492, u16 arg6493, u16 arg6494, u16 arg6495, u16 arg6496, u16 arg6497, u16 arg6498, u16 arg6499, u16 arg6500, u16 arg6501, u16 arg6502, u16 arg6503, u16 arg6504, u16 arg6505, u16 arg6506, u16 arg6507, u16 arg6508, u16 arg6509, u16 arg6510, u16 arg6511, u16 arg6512, u16 arg6513, u16 arg6514, u16 arg6515, u16 arg6516, u16 arg6517, u16 arg6518, u16 arg6519, u16 arg6520, u16 arg6521, u16 arg6522, u16 arg6523, u16 arg6524, u16 arg6525, u16 arg6526, u16 arg6527, u16 arg6528, u16 arg6529, u16 arg6530, u16 arg6531, u16 arg6532, u16 arg6533, u16 arg6534, u16 arg6535, u16 arg6536, u16 arg6537, u16 arg6538, u16 arg6539, u16 arg6540, u16 arg6541, u16 arg6542, u16 arg6543, u16 arg6544, u16 arg6545, u16 arg6546, u16 arg6547, u16 arg6548, u16 arg6549, u16 arg6550, u16 arg6551, u16 arg6552, u16 arg6553, u16 arg6554, u16 arg6555, u16 arg6556, u16 arg6557, u16 arg6558, u16 arg6559, u16 arg6560, u16 arg6561, u16 arg6562, u16 arg6563, u16 arg6564, u16 arg6565, u16 arg6566, u16 arg6567, u16 arg6568, u16 arg6569, u16 arg6570, u16 arg6571, u16 arg6572, u16 arg6573, u16 arg6574, u16 arg6575, u16 arg6576, u16 arg6577, u16 arg6578, u16 arg6579, u16 arg6580, u16 arg6581, u16 arg6582, u16 arg6583, u16 arg6584, u16 arg6585, u16 arg6586, u16 arg6587, u16 arg6588, u16 arg6589, u16 arg6590, u16 arg6591, u16 arg6592, u16 arg6593, u16 arg6594, u16 arg6595, u16 arg6596, u16 arg6597, u16 arg6598, u16 arg6599, u16 arg6600, u16 arg6601, u16 arg6602, u16 arg6603, u16 arg6604, u16 arg6605, u16 arg6606, u16 arg6607, u16 arg6608, u16 arg6609, u16 arg6610, u16 arg6611, u16 arg6612, u16 arg6613, u16 arg6614, u16 arg6615, u16 arg6616, u16 arg6617, u16 arg6618, u16 arg6619, u16 arg6620, u16 arg6621, u16 arg6622, u16 arg6623, u16 arg6624, u16 arg6625, u16 arg6626, u16 arg6627, u16 arg6628, u16 arg6629, u16 arg6630, u16 arg6631, u16 arg6632, u16 arg6633, u16 arg6634)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov ah, 0x9\n"  // 426b: b409
    "int 0x21\n"  // 426d: cd21
    "mov ax, 0x4c01\n"  // 426f: b8014c
    "int 0x21\n"  // 4272: cd21
    "or ax, 0x70a\n"  // 4274: 0d0a07
    "dec cx\n"  // 4277: 49
    "outsb dx, [si]\n"  // 4278: 6e
    "and [si + 0x4f], cl\n"  // 4279: 204c4f
    "inc cx\n"  // 427c: 41
    "inc sp\n"  // 427d: 44
    "pop di\n"  // 427e: 5f
    "push bx\n"  // 427f: 53
    "dec di\n"  // 4280: 4f
    "push bp\n"  // 4281: 55
    "dec si\n"  // 4282: 4e
    "inc sp\n"  // 4283: 44
    "sub [bx + di], ch\n"  // 4284: 2829
    "and [0x2e2e], ch\n"  // 4286: 202e2e2e
    "and [bp + 0x6f], ch\n"  // 428a: 206e6f
    "je 0x42af\n"  // 428d: 7420
    "outsb dx, [gs:si]\n"  // 428f: 656e
    "outsw dx, [si]\n"  // 4291: 6f
    "jne 0x42fb\n"  // 4292: 7567
    "push 0x6d20\n"  // 4294: 68206d
    "insw [es:di], dx\n"  // 4297: 656d
    "outsw dx, [si]\n"  // 4299: 6f
    "jb 0x4315\n"  // 429a: 7279
    "add [cs:bp + si], cl\n"  // 429c: 2e000a
    "and al, 0x8b\n"  // 429f: 248b
    "enter 24274, 23\n"  // 42a1: c82ea1e9
    "add [bp + 0x33d8], cx\n"  // 42a5: 018ed833
    "ror [bp + di + 0xc5e], cl\n"  // 42a9: d28b5e0c
    "mov ah, 0x3f\n"  // 42ad: b43f
    "int 0x21\n"  // 42af: cd21
    "mov dx, 0x400\n"  // 42b1: ba0004
    "mov bx, [bp + 0xc]\n"  // 42b4: 8b5e0c
    "mov cx, 0x1000\n"  // 42b7: b90010
    "mov ah, 0x3f\n"  // 42ba: b43f
    "int 0x21\n"  // 42bc: cd21
    "mov si, 0x400\n"  // 42be: be0004
    "mov di, 0x0\n"  // 42c1: bf0000
    "lodsw ax, [si]\n"  // 42c4: ad
    "mov [bp - 0x4], ax\n"  // 42c5: 8946fc
    "mov bx, [bp - 0x2]\n"  // 42c8: 8b5efe
    "mov [cs:bx + 0x2], ax\n"  // 42cb: 2e894702
    "add ax, 0xf\n"  // 42cf: 050f00
    "mov cl, 0x4\n"  // 42d2: b104
    "shr ax, cl\n"  // 42d4: d3e8
    "mov bx, [bp - 0xa]\n"  // 42d6: 8b5ef6
    "mov [cs:bx + 0x2], ax\n"  // 42d9: 2e894702
    "add ax, [cs:0xcac]\n"  // 42dd: 2e0306ac0c
    "cmp ax, 0x4180\n"  // 42e2: 3d8041
    "jb 0x42ea\n"  // 42e5: 7203
    "jmp 0x4264\n"  // 42e7: e97aff
    "mov [cs:0xcac], ax\n"  // 42ea: 2ea3ac0c
    "mov ax, [cs:bx]\n"  // 42ee: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 42f1: 2e0306e101
    "mov es, ax\n"  // 42f6: 8ec0
    "call 0x4300\n"  // 42f8: e80500
    "xor ax, ax\n"  // 42fb: 33c0
    "jmp 0x4220\n"  // 42fd: e920ff
        ".att_syntax");
}

/* dos_file_loc_4300 (0x4300-0x4319) — inline asm */
void dos_file_loc_4300(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov [bp - 0x2], 0x8\n"  // 4300: c746fe0800
    "lodsb al, [si]\n"  // 4305: ac
    "cmp [bp - 0x4], 0x0\n"  // 4306: 837efc00
    "je 0x4318\n"  // 430a: 740c
    "call 0x4319\n"  // 430c: e80a00
    "mov [es:di], bl\n"  // 430f: 26881d
    "inc di\n"  // 4312: 47
    "dec [bp - 0x4]\n"  // 4313: ff4efc
    "jmp 0x4306\n"  // 4316: ebee
    "ret \n"  // 4318: c3
        ".att_syntax");
}

/* dos_file_loc_4319 (0x4319-0x439a) — inline asm */
void dos_file_loc_4319(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov cx, [bp - 0x2]\n"  // 4319: 8b4efe
    "xor bx, bx\n"  // 431c: 33db
    "shl al, 0x1\n"  // 431e: d0e0
    "jb 0x435a\n"  // 4320: 7238
    "test [bx], 0x8000\n"  // 4322: f7070080
    "jne 0x432c\n"  // 4326: 7504
    "mov bx, [bx]\n"  // 4328: 8b1f
    "jmp 0x4371\n"  // 432a: eb45
    "mov bx, [bx]\n"  // 432c: 8b1f
    "neg bx\n"  // 432e: f7db
    "shl bx, 0x1\n"  // 4330: d1e3
    "shl bx, 0x1\n"  // 4332: d1e3
    "loop 0x431e\n"  // 4334: e2e8
    "mov cx, 0x8\n"  // 4336: b90800
    "lodsb al, [si]\n"  // 4339: ac
    "cmp si, 0x1400\n"  // 433a: 81fe0014
    "jb 0x431e\n"  // 433e: 72de
    "push ax\n"  // 4340: 50
    "push di\n"  // 4341: 57
    "push bx\n"  // 4342: 53
    "push cx\n"  // 4343: 51
    "mov dx, 0x400\n"  // 4344: ba0004
    "mov bx, [bp + 0xc]\n"  // 4347: 8b5e0c
    "mov cx, 0x1000\n"  // 434a: b90010
    "mov ah, 0x3f\n"  // 434d: b43f
    "int 0x21\n"  // 434f: cd21
    "mov si, 0x400\n"  // 4351: be0004
    "pop cx\n"  // 4354: 59
    "pop bx\n"  // 4355: 5b
    "pop di\n"  // 4356: 5f
    "pop ax\n"  // 4357: 58
    "jmp 0x431e\n"  // 4358: ebc4
    "test [bx + 0x2], 0x8000\n"  // 435a: f747020080
    "jne 0x4366\n"  // 435f: 7505
    "mov bx, [bx + 0x2]\n"  // 4361: 8b5f02
    "jmp 0x4371\n"  // 4364: eb0b
    "mov bx, [bx + 0x2]\n"  // 4366: 8b5f02
    "neg bx\n"  // 4369: f7db
    "shl bx, 0x1\n"  // 436b: d1e3
    "shl bx, 0x1\n"  // 436d: d1e3
    "jmp 0x4334\n"  // 436f: ebc3
    "dec cx\n"  // 4371: 49
    "jne 0x4396\n"  // 4372: 7522
    "mov cx, 0x8\n"  // 4374: b90800
    "lodsb al, [si]\n"  // 4377: ac
    "cmp si, 0x1400\n"  // 4378: 81fe0014
    "jb 0x4396\n"  // 437c: 7218
    "push ax\n"  // 437e: 50
    "push di\n"  // 437f: 57
    "push bx\n"  // 4380: 53
    "push cx\n"  // 4381: 51
    "mov dx, 0x400\n"  // 4382: ba0004
    "mov bx, [bp + 0xc]\n"  // 4385: 8b5e0c
    "mov cx, 0x1000\n"  // 4388: b90010
    "mov ah, 0x3f\n"  // 438b: b43f
    "int 0x21\n"  // 438d: cd21
    "mov si, 0x400\n"  // 438f: be0004
    "pop cx\n"  // 4392: 59
    "pop bx\n"  // 4393: 5b
    "pop di\n"  // 4394: 5f
    "pop ax\n"  // 4395: 58
    "mov [bp - 0x2], cx\n"  // 4396: 894efe
    "ret \n"  // 4399: c3
        ".att_syntax");
}

/* loc_439a (0x439a-0x43e1) — inline asm */
void loc_439a(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 439a: 55
    "mov bp, sp\n"  // 439b: 8bec
    "sub sp, 0xa\n"  // 439d: 83ec0a
    "push ds\n"  // 43a0: 1e
    "push es\n"  // 43a1: 06
    "push si\n"  // 43a2: 56
    "push di\n"  // 43a3: 57
    "mov ax, ds\n"  // 43a4: 8cd8
    "mov es, ax\n"  // 43a6: 8ec0
    "mov ax, [bp + 0xc]\n"  // 43a8: 8b460c
    "cmp ax, 0x14\n"  // 43ab: 3d1400
    "jb 0x43b3\n"  // 43ae: 7203
    "jmp 0x43d9\n"  // 43b0: e92600
    "shl ax, 0x1\n"  // 43b3: d1e0
    "shl ax, 0x1\n"  // 43b5: d1e0
    "mov bx, 0x4202\n"  // 43b7: bb0242
    "add bx, ax\n"  // 43ba: 03d8
    "mov ax, [cs:bx]\n"  // 43bc: 2e8b07
    "or ax, ax\n"  // 43bf: 0bc0
    "jne 0x43c6\n"  // 43c1: 7503
    "jmp 0x43d9\n"  // 43c3: e91300
    "mov [cs:bx], 0x0\n"  // 43c6: 2ec7070000
    "mov cx, [cs:0xcaa]\n"  // 43cb: 2e8b0eaa0c
    "dec cx\n"  // 43d0: 49
    "mov [cs:0xcaa], cx\n"  // 43d1: 2e890eaa0c
    "call 0x43e1\n"  // 43d6: e80800
    "pop di\n"  // 43d9: 5f
    "pop si\n"  // 43da: 5e
    "pop es\n"  // 43db: 07
    "pop ds\n"  // 43dc: 1f
    "mov sp, bp\n"  // 43dd: 8be5
    "pop bp\n"  // 43df: 5d
    "ret \n"  // 43e0: c3
        ".att_syntax");
}

/* loc_43e1 (0x43e1-0x43f7) */
void loc_43e1(void)
{

}

/* leaf_loc_43f7 (0x43f7-0x440c) — inline asm */
void leaf_loc_43f7(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ax\n"  // 43f7: 50
    "mov bx, 0xbc6\n"  // 43f8: bbc60b
    "mov cx, 0xa\n"  // 43fb: b90a00
    "cmp ax, [cs:bx]\n"  // 43fe: 2e3b07
    "jae 0x4406\n"  // 4401: 7303
    "dec [cs:bx]\n"  // 4403: 2eff0f
    "inc bx\n"  // 4406: 43
    "inc bx\n"  // 4407: 43
    "loop 0x43fe\n"  // 4408: e2f4
    "pop ax\n"  // 440a: 58
    "ret \n"  // 440b: c3
        ".att_syntax");
}

/* dos_con_loc_440c (0x440c-0x4421) — inline asm */
void dos_con_loc_440c(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ax\n"  // 440c: 50
    "mov bx, 0x229\n"  // 440d: bb2902
    "mov cx, 0x14\n"  // 4410: b91400
    "cmp ax, [cs:bx]\n"  // 4413: 2e3b07
    "jae 0x441b\n"  // 4416: 7303
    "dec [cs:bx]\n"  // 4418: 2eff0f
    "inc bx\n"  // 441b: 43
    "inc bx\n"  // 441c: 43
    "loop 0x4413\n"  // 441d: e2f4
    "pop ax\n"  // 441f: 58
    "ret \n"  // 4420: c3
        ".att_syntax");
}

/* dos_con_loc_4421 (0x4421-0x4436) — inline asm */
void dos_con_loc_4421(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ax\n"  // 4421: 50
    "mov bx, 0x25b\n"  // 4422: bb5b02
    "mov cx, 0x10\n"  // 4425: b91000
    "cmp ax, [cs:bx]\n"  // 4428: 2e3b07
    "jae 0x4430\n"  // 442b: 7303
    "dec [cs:bx]\n"  // 442d: 2eff0f
    "inc bx\n"  // 4430: 43
    "inc bx\n"  // 4431: 43
    "loop 0x4428\n"  // 4432: e2f4
    "pop ax\n"  // 4434: 58
    "ret \n"  // 4435: c3
        ".att_syntax");
}

/* dos_con_loc_4436 (0x4436-0x444b) — inline asm */
void dos_con_loc_4436(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ax\n"  // 4436: 50
    "mov bx, 0x251\n"  // 4437: bb5102
    "mov cx, 0x5\n"  // 443a: b90500
    "cmp ax, [cs:bx]\n"  // 443d: 2e3b07
    "jae 0x4445\n"  // 4440: 7303
    "dec [cs:bx]\n"  // 4442: 2eff0f
    "inc bx\n"  // 4445: 43
    "inc bx\n"  // 4446: 43
    "loop 0x443d\n"  // 4447: e2f4
    "pop ax\n"  // 4449: 58
    "ret \n"  // 444a: c3
        ".att_syntax");
}

/* dos_con_loc_444b (0x444b-0x4461) — inline asm */
void dos_con_loc_444b(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ax\n"  // 444b: 50
    "mov bx, 0x4202\n"  // 444c: bb0242
    "mov cx, 0x14\n"  // 444f: b91400
    "cmp ax, [cs:bx]\n"  // 4452: 2e3b07
    "jae 0x445a\n"  // 4455: 7303
    "dec [cs:bx]\n"  // 4457: 2eff0f
    "add bx, 0x4\n"  // 445a: 83c304
    "loop 0x4452\n"  // 445d: e2f3
    "pop ax\n"  // 445f: 58
    "ret \n"  // 4460: c3
        ".att_syntax");
}

/* dos_con_loc_4461 (0x4461-0x44a3) — inline asm */
void dos_con_loc_4461(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push ax\n"  // 4461: 50
    "mov bx, 0x46d9\n"  // 4462: bbd946
    "mov cx, 0x5\n"  // 4465: b90500
    "cmp ax, [cs:bx]\n"  // 4468: 2e3b07
    "jae 0x4485\n"  // 446b: 7318
    "dec [cs:bx]\n"  // 446d: 2eff0f
    "push ds\n"  // 4470: 1e
    "push ax\n"  // 4471: 50
    "push bx\n"  // 4472: 53
    "push cx\n"  // 4473: 51
    "push dx\n"  // 4474: 52
    "mov ax, cs\n"  // 4475: 8cc8
    "mov ds, ax\n"  // 4477: 8ed8
    "mov dx, 0x458c\n"  // 4479: ba8c45
    "mov ah, 0x9\n"  // 447c: b409
    "int 0x21\n"  // 447e: cd21
    "pop dx\n"  // 4480: 5a
    "pop cx\n"  // 4481: 59
    "pop bx\n"  // 4482: 5b
    "pop ax\n"  // 4483: 58
    "pop ds\n"  // 4484: 1f
    "add bx, 0x4\n"  // 4485: 83c304
    "loop 0x4468\n"  // 4488: e2de
    "pop ax\n"  // 448a: 58
    "ret \n"  // 448b: c3
        ".att_syntax");
}

/* leaf_loc_44a3 (0x44a3-0x4527) — inline asm */
void leaf_loc_44a3(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "dec ax\n"  // 44a3: 48
    "mov cl, 0x2\n"  // 44a4: b102
    "shl ax, cl\n"  // 44a6: d3e0
    "mov bx, 0xbda\n"  // 44a8: bbda0b
    "add bx, ax\n"  // 44ab: 03d8
    "mov [bp - 0x4], bx\n"  // 44ad: 895efc
    "mov ax, [cs:bx + 0x2]\n"  // 44b0: 2e8b4702
    "sub [cs:0xcac], ax\n"  // 44b4: 2e2906ac0c
    "mov [bp - 0x6], ax\n"  // 44b9: 8946fa
    "mov bx, [bp - 0x4]\n"  // 44bc: 8b5efc
    "mov dx, [cs:bx]\n"  // 44bf: 2e8b17
    "add dx, [cs:0x1e1]\n"  // 44c2: 2e0316e101
    "mov es, dx\n"  // 44c7: 8ec2
    "mov dx, [cs:bx + 0x4]\n"  // 44c9: 2e8b5704
    "add dx, [cs:0x1e1]\n"  // 44cd: 2e0316e101
    "mov ds, dx\n"  // 44d2: 8eda
    "mov cx, [cs:bx + 0x6]\n"  // 44d4: 2e8b4f06
    "or cx, cx\n"  // 44d8: 0bc9
    "je 0x451a\n"  // 44da: 743e
    "push cx\n"  // 44dc: 51
    "mov cx, 0x10\n"  // 44dd: b91000
    "xor si, si\n"  // 44e0: 33f6
    "xor di, di\n"  // 44e2: 33ff
    "rep movsb [es:di], [si]\n"  // 44e4: f3a4
    "mov cx, ds\n"  // 44e6: 8cd9
    "inc cx\n"  // 44e8: 41
    "mov ds, cx\n"  // 44e9: 8ed9
    "mov cx, es\n"  // 44eb: 8cc1
    "inc cx\n"  // 44ed: 41
    "mov es, cx\n"  // 44ee: 8ec1
    "pop cx\n"  // 44f0: 59
    "loop 0x44dc\n"  // 44f1: e2e9
    "mov bx, [bp - 0x4]\n"  // 44f3: 8b5efc
    "mov cx, [bp - 0x6]\n"  // 44f6: 8b4efa
    "mov ax, [cs:bx + 0x4]\n"  // 44f9: 2e8b4704
    "sub ax, cx\n"  // 44fd: 2bc1
    "mov [cs:bx], ax\n"  // 44ff: 2e8907
    "add ax, [cs:bx + 0x6]\n"  // 4502: 2e034706
    "mov [cs:bx + 0x4], ax\n"  // 4506: 2e894704
    "mov ax, [cs:bx + 0x6]\n"  // 450a: 2e8b4706
    "mov [cs:bx + 0x2], ax\n"  // 450e: 2e894702
    "add bx, 0x4\n"  // 4512: 83c304
    "mov [bp - 0x4], bx\n"  // 4515: 895efc
    "jmp 0x44bc\n"  // 4518: eba2
    "mov bx, [bp - 0x4]\n"  // 451a: 8b5efc
    "xor ax, ax\n"  // 451d: 33c0
    "mov [cs:bx], ax\n"  // 451f: 2e8907
    "mov [cs:bx + 0x2], ax\n"  // 4522: 2e894702
    "ret \n"  // 4526: c3
        ".att_syntax");
}

/* loc_4527 (0x4527-0x4596) — inline asm */
void loc_4527(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 4527: 55
    "mov bp, sp\n"  // 4528: 8bec
    "sub sp, 0xa\n"  // 452a: 83ec0a
    "push ds\n"  // 452d: 1e
    "push es\n"  // 452e: 06
    "push si\n"  // 452f: 56
    "push di\n"  // 4530: 57
    "mov ax, ds\n"  // 4531: 8cd8
    "mov es, ax\n"  // 4533: 8ec0
    "mov ax, [bp + 0xc]\n"  // 4535: 8b460c
    "cmp ax, 0x14\n"  // 4538: 3d1400
    "jb 0x4540\n"  // 453b: 7203
    "jmp 0x458e\n"  // 453d: e94e00
    "shl ax, 0x1\n"  // 4540: d1e0
    "shl ax, 0x1\n"  // 4542: d1e0
    "mov bx, 0x4202\n"  // 4544: bb0242
    "add bx, ax\n"  // 4547: 03d8
    "mov ax, [cs:bx + 0x2]\n"  // 4549: 2e8b4702
    "mov [bp - 0x2], ax\n"  // 454d: 8946fe
    "mov ax, [cs:bx]\n"  // 4550: 2e8b07
    "or ax, ax\n"  // 4553: 0bc0
    "jne 0x455a\n"  // 4555: 7503
    "jmp 0x458e\n"  // 4557: e93400
    "dec ax\n"  // 455a: 48
    "mov [bp - 0x4], ax\n"  // 455b: 8946fc
    "push [bp + 0x12]\n"  // 455e: ff7612
    "push [bp + 0x10]\n"  // 4561: ff7610
    "push [bp + 0xe]\n"  // 4564: ff760e
    "mov ax, [bp - 0x2]\n"  // 4567: 8b46fe
    "push ax\n"  // 456a: 50
    "xor ax, ax\n"  // 456b: 33c0
    "push ax\n"  // 456d: 50
    "mov bx, 0xbda\n"  // 456e: bbda0b
    "mov ax, [bp - 0x4]\n"  // 4571: 8b46fc
    "shl ax, 0x1\n"  // 4574: d1e0
    "shl ax, 0x1\n"  // 4576: d1e0
    "add bx, ax\n"  // 4578: 03d8
    "mov ax, [cs:bx]\n"  // 457a: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 457d: 2e0306e101
    "push ax\n"  // 4582: 50
    "xor ax, ax\n"  // 4583: 33c0
    "push ax\n"  // 4585: 50
    "lcall [cs:0x21a]\n"  // 4586: 2eff1e1a02
    "add sp, 0xe\n"  // 458b: 83c40e
    "pop di\n"  // 458e: 5f
    "pop si\n"  // 458f: 5e
    "pop es\n"  // 4590: 07
    "pop ds\n"  // 4591: 1f
    "mov sp, bp\n"  // 4592: 8be5
    "pop bp\n"  // 4594: 5d
    "ret \n"  // 4595: c3
        ".att_syntax");
}

/* loc_4596 (0x4596-0x45b2) — inline asm */
void loc_4596(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 4596: 55
    "mov bp, sp\n"  // 4597: 8bec
    "push ds\n"  // 4599: 1e
    "push es\n"  // 459a: 06
    "push si\n"  // 459b: 56
    "push di\n"  // 459c: 57
    "mov ax, ds\n"  // 459d: 8cd8
    "mov es, ax\n"  // 459f: 8ec0
    "push [bp + 0xc]\n"  // 45a1: ff760c
    "lcall [cs:0x222]\n"  // 45a4: 2eff1e2202
    "pop cx\n"  // 45a9: 59
    "pop di\n"  // 45aa: 5f
    "pop si\n"  // 45ab: 5e
    "pop es\n"  // 45ac: 07
    "pop ds\n"  // 45ad: 1f
    "mov sp, bp\n"  // 45ae: 8be5
    "pop bp\n"  // 45b0: 5d
    "ret \n"  // 45b1: c3
        ".att_syntax");
}

/* loc_45b2 (0x45b2-0x45fb) — inline asm */
void loc_45b2(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 45b2: 55
    "mov bp, sp\n"  // 45b3: 8bec
    "sub sp, 0xa\n"  // 45b5: 83ec0a
    "push ds\n"  // 45b8: 1e
    "push es\n"  // 45b9: 06
    "push si\n"  // 45ba: 56
    "push di\n"  // 45bb: 57
    "mov ax, ds\n"  // 45bc: 8cd8
    "mov es, ax\n"  // 45be: 8ec0
    "xor ax, ax\n"  // 45c0: 33c0
    "push ax\n"  // 45c2: 50
    "push ax\n"  // 45c3: 50
    "push ax\n"  // 45c4: 50
    "push ax\n"  // 45c5: 50
    "push ax\n"  // 45c6: 50
    "push ax\n"  // 45c7: 50
    "push ax\n"  // 45c8: 50
    "lcall [cs:0x21a]\n"  // 45c9: 2eff1e1a02
    "add sp, 0xe\n"  // 45ce: 83c40e
    "pop di\n"  // 45d1: 5f
    "pop si\n"  // 45d2: 5e
    "pop es\n"  // 45d3: 07
    "pop ds\n"  // 45d4: 1f
    "mov sp, bp\n"  // 45d5: 8be5
    "pop bp\n"  // 45d7: 5d
    "ret \n"  // 45d8: c3
        ".att_syntax");
}

/* dos_read_file_8 (0x45fb-0x4719) — inline asm */
void dos_read_file_8(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 45fb: 55
    "mov bp, sp\n"  // 45fc: 8bec
    "sub sp, 0xe\n"  // 45fe: 83ec0e
    "push ds\n"  // 4601: 1e
    "push es\n"  // 4602: 06
    "push si\n"  // 4603: 56
    "push di\n"  // 4604: 57
    "mov ax, ds\n"  // 4605: 8cd8
    "mov es, ax\n"  // 4607: 8ec0
    "mov bx, [bp + 0x12]\n"  // 4609: 8b5e12
    "shl bx, 0x1\n"  // 460c: d1e3
    "shl bx, 0x1\n"  // 460e: d1e3
    "add bx, 0x46d9\n"  // 4610: 81c3d946
    "mov [bp - 0x2], bx\n"  // 4614: 895efe
    "mov ax, [cs:bx]\n"  // 4617: 2e8b07
    "or ax, ax\n"  // 461a: 0bc0
    "je 0x4621\n"  // 461c: 7403
    "jmp 0x4712\n"  // 461e: e9f100
    "mov bx, [bp + 0x12]\n"  // 4621: 8b5e12
    "shl bx, 0x1\n"  // 4624: d1e3
    "add bx, 0x46f1\n"  // 4626: 81c3f146
    "mov ax, [bp + 0x10]\n"  // 462a: 8b4610
    "mov [cs:bx], ax\n"  // 462d: 2e8907
    "mov ax, [cs:0xcaa]\n"  // 4630: 2ea1aa0c
    "inc ax\n"  // 4634: 40
    "mov [cs:0xcaa], ax\n"  // 4635: 2ea3aa0c
    "mov bx, [bp - 0x2]\n"  // 4639: 8b5efe
    "mov [cs:bx], ax\n"  // 463c: 2e8907
    "dec ax\n"  // 463f: 48
    "mov cl, 0x2\n"  // 4640: b102
    "shl ax, cl\n"  // 4642: d3e0
    "mov bx, 0xbda\n"  // 4644: bbda0b
    "add bx, ax\n"  // 4647: 03d8
    "mov [bp - 0xa], bx\n"  // 4649: 895ef6
    "mov ax, [cs:0xcac]\n"  // 464c: 2ea1ac0c
    "mov [cs:bx], ax\n"  // 4650: 2e8907
    "xor ax, ax\n"  // 4653: 33c0
    "mov [bp - 0xc], ax\n"  // 4655: 8946f4
    "mov [bp - 0xe], ax\n"  // 4658: 8946f2
    "mov bx, [bp - 0x2]\n"  // 465b: 8b5efe
    "mov [cs:bx + 0x2], ax\n"  // 465e: 2e894702
    "mov bx, [bp + 0xe]\n"  // 4662: 8b5e0e
    "cmp bx, 1\n"  // 4665: 83fbff
    "je 0x4695\n"  // 4668: 742b
    "mov ah, 0x42\n"  // 466a: b442
    "mov al, 0x2\n"  // 466c: b002
    "xor cx, cx\n"  // 466e: 33c9
    "mov dx, cx\n"  // 4670: 8bd1
    "int 0x21\n"  // 4672: cd21
    "mov [bp - 0xc], ax\n"  // 4674: 8946f4
    "mov bx, [bp - 0x2]\n"  // 4677: 8b5efe
    "mov [cs:bx + 0x2], ax\n"  // 467a: 2e894702
    "add ax, 0xf\n"  // 467e: 050f00
    "mov cl, 0x4\n"  // 4681: b104
    "shr ax, cl\n"  // 4683: d3e8
    "mov [bp - 0xe], ax\n"  // 4685: 8946f2
    "mov ah, 0x42\n"  // 4688: b442
    "mov al, 0x0\n"  // 468a: b000
    "mov bx, [bp + 0xe]\n"  // 468c: 8b5e0e
    "xor cx, cx\n"  // 468f: 33c9
    "mov dx, cx\n"  // 4691: 8bd1
    "int 0x21\n"  // 4693: cd21
    "mov ah, 0x42\n"  // 4695: b442
    "mov al, 0x2\n"  // 4697: b002
    "mov bx, [bp + 0xc]\n"  // 4699: 8b5e0c
    "xor cx, cx\n"  // 469c: 33c9
    "mov dx, cx\n"  // 469e: 8bd1
    "int 0x21\n"  // 46a0: cd21
    "mov [bp - 0x4], ax\n"  // 46a2: 8946fc
    "mov [bp - 0x6], dx\n"  // 46a5: 8956fa
    "mov ah, 0x42\n"  // 46a8: b442
    "mov al, 0x0\n"  // 46aa: b000
    "mov bx, [bp + 0xc]\n"  // 46ac: 8b5e0c
    "xor cx, cx\n"  // 46af: 33c9
    "mov dx, cx\n"  // 46b1: 8bd1
    "int 0x21\n"  // 46b3: cd21
    "mov ax, [bp - 0x4]\n"  // 46b5: 8b46fc
    "add ax, 0xf\n"  // 46b8: 050f00
    "mov cl, 0x4\n"  // 46bb: b104
    "shr ax, cl\n"  // 46bd: d3e8
    "mov bx, [bp - 0xa]\n"  // 46bf: 8b5ef6
    "add ax, [bp - 0xe]\n"  // 46c2: 0346f2
    "mov [cs:bx + 0x2], ax\n"  // 46c5: 2e894702
    "add ax, [cs:0xcac]\n"  // 46c9: 2e0306ac0c
    "cmp ax, 0x4180\n"  // 46ce: 3d8041
    "jb 0x46d6\n"  // 46d1: 7203
    "jmp 0x474e\n"  // 46d3: e97800
    "mov [cs:0xcac], ax\n"  // 46d6: 2ea3ac0c
    "mov ax, [cs:bx]\n"  // 46da: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 46dd: 2e0306e101
    "mov ds, ax\n"  // 46e2: 8ed8
    "mov bx, [bp + 0xe]\n"  // 46e4: 8b5e0e
    "cmp bx, 1\n"  // 46e7: 83fbff
    "je 0x46f5\n"  // 46ea: 7409
    "xor dx, dx\n"  // 46ec: 33d2
    "mov cx, [bp - 0xc]\n"  // 46ee: 8b4ef4
    "mov ah, 0x3f\n"  // 46f1: b43f
    "int 0x21\n"  // 46f3: cd21
    "mov bx, [bp - 0x2]\n"  // 46f5: 8b5efe
    "mov bx, [cs:bx + 0x2]\n"  // 46f8: 2e8b5f02
    "mov dx, bx\n"  // 46fc: 8bd3
    "mov bx, [bp + 0xc]\n"  // 46fe: 8b5e0c
    "mov cx, [bp - 0x4]\n"  // 4701: 8b4efc
    "mov ah, 0x3f\n"  // 4704: b43f
    "int 0x21\n"  // 4706: cd21
    "xor ax, ax\n"  // 4708: 33c0
    "pop di\n"  // 470a: 5f
    "pop si\n"  // 470b: 5e
    "pop es\n"  // 470c: 07
    "pop ds\n"  // 470d: 1f
    "mov sp, bp\n"  // 470e: 8be5
    "pop bp\n"  // 4710: 5d
    "ret \n"  // 4711: c3
    "mov ax, cs\n"  // 4712: 8cc8
    "mov ds, ax\n"  // 4714: 8ed8
    "mov dx, 0x4822\n"  // 4716: ba2248
        ".att_syntax");
}

/* dos_con_loc_4719 (0x4719-0x4755) — inline asm */
void dos_con_loc_4719(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "mov ah, 0x9\n"  // 4719: b409
    "mov ax, cs\n"  // 474e: 8cc8
    "mov ds, ax\n"  // 4750: 8ed8
    "mov dx, 0x485e\n"  // 4752: ba5e48
        ".att_syntax");
}

/* dos_con_loc_4755 (0x4755-0x478a) */
void dos_con_loc_4755(void)
{
    u16 ax;
    u8 ah;

    *(uint8 *)&ah = (uint8)0x9;
}

/* loc_478a (0x478a-0x481f) — inline asm */
void loc_478a(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5, u16 arg6, u16 arg7)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 478a: 55
    "mov bp, sp\n"  // 478b: 8bec
    "sub sp, 0xa\n"  // 478d: 83ec0a
    "push ds\n"  // 4790: 1e
    "push es\n"  // 4791: 06
    "push si\n"  // 4792: 56
    "push di\n"  // 4793: 57
    "mov ax, ds\n"  // 4794: 8cd8
    "mov es, ax\n"  // 4796: 8ec0
    "mov bx, [bp + 0xc]\n"  // 4798: 8b5e0c
    "shl bx, 0x1\n"  // 479b: d1e3
    "add bx, 0x46f1\n"  // 479d: 81c3f146
    "mov ax, [cs:bx]\n"  // 47a1: 2e8b07
    "mov [bp - 0x8], ax\n"  // 47a4: 8946f8
    "mov bx, [bp + 0xc]\n"  // 47a7: 8b5e0c
    "shl bx, 0x1\n"  // 47aa: d1e3
    "shl bx, 0x1\n"  // 47ac: d1e3
    "add bx, 0x46d9\n"  // 47ae: 81c3d946
    "mov [bp - 0x2], bx\n"  // 47b2: 895efe
    "mov ax, [cs:bx + 0x2]\n"  // 47b5: 2e8b4702
    "mov [bp - 0x6], ax\n"  // 47b9: 8946fa
    "mov ax, [cs:bx]\n"  // 47bc: 2e8b07
    "or ax, ax\n"  // 47bf: 0bc0
    "je 0x4817\n"  // 47c1: 7454
    "dec ax\n"  // 47c3: 48
    "shl ax, 0x1\n"  // 47c4: d1e0
    "shl ax, 0x1\n"  // 47c6: d1e0
    "mov bx, 0xbda\n"  // 47c8: bbda0b
    "add bx, ax\n"  // 47cb: 03d8
    "mov [bp - 0x4], bx\n"  // 47cd: 895efc
    "push [bp - 0x8]\n"  // 47d0: ff76f8
    "xor ax, ax\n"  // 47d3: 33c0
    "cmp [bp - 0x6], 0x0\n"  // 47d5: 837efa00
    "je 0x47e3\n"  // 47d9: 7408
    "mov ax, [cs:bx]\n"  // 47db: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 47de: 2e0306e101
    "push ax\n"  // 47e3: 50
    "xor ax, ax\n"  // 47e4: 33c0
    "push ax\n"  // 47e6: 50
    "lcall [cs:0x20e]\n"  // 47e7: 2eff1e0e02
    "add sp, 0x6\n"  // 47ec: 83c406
    "push [bp + 0x10]\n"  // 47ef: ff7610
    "push [bp + 0xe]\n"  // 47f2: ff760e
    "lcall [cs:0x216]\n"  // 47f5: 2eff1e1602
    "add sp, 0x4\n"  // 47fa: 83c404
    "push [bp + 0x12]\n"  // 47fd: ff7612
    "mov bx, [bp - 0x4]\n"  // 4800: 8b5efc
    "mov ax, [cs:bx]\n"  // 4803: 2e8b07
    "add ax, [cs:0x1e1]\n"  // 4806: 2e0306e101
    "push ax\n"  // 480b: 50
    "push [bp - 0x6]\n"  // 480c: ff76fa
    "lcall [cs:0x206]\n"  // 480f: 2eff1e0602
    "add sp, 0x6\n"  // 4814: 83c406
    "pop di\n"  // 4817: 5f
    "pop si\n"  // 4818: 5e
    "pop es\n"  // 4819: 07
    "pop ds\n"  // 481a: 1f
    "mov sp, bp\n"  // 481b: 8be5
    "pop bp\n"  // 481d: 5d
    "ret \n"  // 481e: c3
        ".att_syntax");
}

/* loc_481f (0x481f-0x4866) — inline asm */
void loc_481f(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 481f: 55
    "mov bp, sp\n"  // 4820: 8bec
    "sub sp, 0xa\n"  // 4822: 83ec0a
    "push ds\n"  // 4825: 1e
    "push es\n"  // 4826: 06
    "push si\n"  // 4827: 56
    "push di\n"  // 4828: 57
    "mov ax, ds\n"  // 4829: 8cd8
    "mov es, ax\n"  // 482b: 8ec0
    "mov ax, [bp + 0xc]\n"  // 482d: 8b460c
    "cmp ax, 0x5\n"  // 4830: 3d0500
    "jb 0x4838\n"  // 4833: 7203
    "jmp 0x485e\n"  // 4835: e92600
    "shl ax, 0x1\n"  // 4838: d1e0
    "shl ax, 0x1\n"  // 483a: d1e0
    "mov bx, 0x46d9\n"  // 483c: bbd946
    "add bx, ax\n"  // 483f: 03d8
    "mov ax, [cs:bx]\n"  // 4841: 2e8b07
    "or ax, ax\n"  // 4844: 0bc0
    "jne 0x484b\n"  // 4846: 7503
    "jmp 0x485e\n"  // 4848: e91300
    "mov [cs:bx], 0x0\n"  // 484b: 2ec7070000
    "mov cx, [cs:0xcaa]\n"  // 4850: 2e8b0eaa0c
    "dec cx\n"  // 4855: 49
    "mov [cs:0xcaa], cx\n"  // 4856: 2e890eaa0c
    "call 0x43e1\n"  // 485b: e883fb
    "pop di\n"  // 485e: 5f
    "pop si\n"  // 485f: 5e
    "pop es\n"  // 4860: 07
    "pop ds\n"  // 4861: 1f
    "mov sp, bp\n"  // 4862: 8be5
    "pop bp\n"  // 4864: 5d
    "ret \n"  // 4865: c3
        ".att_syntax");
}

/* loc_4866 (0x4866-0x487e) — inline asm */
void loc_4866(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 4866: 55
    "mov bp, sp\n"  // 4867: 8bec
    "push ds\n"  // 4869: 1e
    "push es\n"  // 486a: 06
    "push si\n"  // 486b: 56
    "push di\n"  // 486c: 57
    "mov ax, ds\n"  // 486d: 8cd8
    "mov es, ax\n"  // 486f: 8ec0
    "lcall [cs:0x21e]\n"  // 4871: 2eff1e1e02
    "pop di\n"  // 4876: 5f
    "pop si\n"  // 4877: 5e
    "pop es\n"  // 4878: 07
    "pop ds\n"  // 4879: 1f
    "mov sp, bp\n"  // 487a: 8be5
    "pop bp\n"  // 487c: 5d
    "ret \n"  // 487d: c3
        ".att_syntax");
}

/* loc_487e (0x487e-0x4896) — inline asm */
void loc_487e(void)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 487e: 55
    "mov bp, sp\n"  // 487f: 8bec
    "push ds\n"  // 4881: 1e
    "push es\n"  // 4882: 06
    "push si\n"  // 4883: 56
    "push di\n"  // 4884: 57
    "mov ax, ds\n"  // 4885: 8cd8
    "mov es, ax\n"  // 4887: 8ec0
    "lcall [cs:0x212]\n"  // 4889: 2eff1e1202
    "pop di\n"  // 488e: 5f
    "pop si\n"  // 488f: 5e
    "pop es\n"  // 4890: 07
    "pop ds\n"  // 4891: 1f
    "mov sp, bp\n"  // 4892: 8be5
    "pop bp\n"  // 4894: 5d
    "ret \n"  // 4895: c3
        ".att_syntax");
}

/* loc_4896 (0x4896-0x48b7) — inline asm */
void loc_4896(u16 arg0, u16 arg1, u16 arg2, u16 arg3, u16 arg4, u16 arg5)
{
    __asm__ __volatile__ (
        ".intel_syntax noprefix\n"
    "push bp\n"  // 4896: 55
    "mov bp, sp\n"  // 4897: 8bec
    "push ds\n"  // 4899: 1e
    "push es\n"  // 489a: 06
    "push si\n"  // 489b: 56
    "push di\n"  // 489c: 57
    "mov ax, ds\n"  // 489d: 8cd8
    "mov es, ax\n"  // 489f: 8ec0
    "push [bp + 0xe]\n"  // 48a1: ff760e
    "push [bp + 0xc]\n"  // 48a4: ff760c
    "lcall [cs:0x216]\n"  // 48a7: 2eff1e1602
    "add sp, 0x4\n"  // 48ac: 83c404
    "pop di\n"  // 48af: 5f
    "pop si\n"  // 48b0: 5e
    "pop es\n"  // 48b1: 07
    "pop ds\n"  // 48b2: 1f
    "mov sp, bp\n"  // 48b3: 8be5
    "pop bp\n"  // 48b5: 5d
    "ret \n"  // 48b6: c3
        ".att_syntax");
}

