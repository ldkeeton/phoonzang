"""C type model for GCC/OpenWatcom compatibility."""

C_HEADER = '''/* Auto-generated from NASM disassembly. */
#include <stdint.h>

typedef uint8_t  u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef int8_t   s8;
typedef int16_t  s16;
typedef int32_t  s32;

/* GCC: compile with -m16 for 16-bit x86 real mode */
#define INLINE_ASM __asm__ __volatile__

'''

C_FOOTER = ''
