
.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
.equ BG_COLOR, 0x606060

background:
  mov x0,x20
  ldr x10,=BG_COLOR 
    mov x1, SCREEN_WIDTH
  loop0bg:
    mov x2, SCREEN_HEIGH
  loop1bg:
    stur w10,[x0,0]
    add x0,x0,4 
    sub x2,x2,1 
    cbnz x2,loop1bg 
    sub x1,x1,1 
    cbnz x1, loop0bg
    br lr
