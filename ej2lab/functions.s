.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
.equ TREE_BG_COLOR,0x21222c
.equ PURPLE_FILE_COLOR, 0xbd93f9
.equ BLUE_FILE_COLOR,0x599efc
.equ HIGHLIGHT_COLOR, 0x444454
.equ KEYBOARD_BG_COLOR, 0x202020
.equ BROWN_T_COLOR, 0x311e10
.equ KEYCAPS_COLOR, 0x404040
.equ SCREEN_BG_COLOR, 0x282a36
.equ WHITE_COLOR, 0xffffff
.equ BLACK_COLOR, 0x000000
.equ PINK_COLOR, 0xff79c6
.equ YELLOW_COLOR, 0xf1fa8c
.equ GREY_COLOR, 0x606060 
.equ ORANGE_COLOR, 0xffb86c
.equ GREEN_COLOR, 0x50fa7b
.equ CYAN_COLOR, 0x8be9fd
.equ SKYBLUE_COLOR, 0x87ceeb
.equ BUILDINGS_COLOR, 0x009999
.equ WINDOWS_COLOR, 0x00cccc
.equ DARKWOOD_COLOR, 0x25170C
.equ DAWN_ORANGE, 0xD8622A
.equ DAWN_CLOUDS, 0xEF6C5E
.equ NIGHT_BLUE, 0x011640
.equ NIGHT_BLUE2, 0x011659
.equ NIGHT_BLUE3, 0x01167D
.equ NIGHT_BLUE4, 0x21347D
.equ NIGHT_BLUE5, 0x215192
.equ NIGHT_BLUE6, 0x277593
.equ NIGHT_BLUE7, 0x6F9BC2
.equ MORNING_RED, 0xFF9A0F
.equ MORNING_SUN1, 0xFF330F
.equ MORNING_SUN2, 0xFF9600
.equ NIGHT_CLOUDS, 0xB6CAFF
.equ DAY_CLOUDS, 0xEEF1F2

setRegRect:  //pone los registros x3,x4,x5,x6 en 0 que son los que
 mov x1,xzr  //se usan para inicializar la funcion rectangle:
 mov x2,xzr
 mov x4,xzr
 mov x5,xzr
 mov x6,xzr
 mov x7,xzr
 br lr

//Ingresar x3=alto, x4=ancho, x5=coord x, x6=coord y, x10=color
rectangle:
  //x10 es el color
    mov x0,x20 //recargo el framebuffer
    sub sp,sp,#16
    str x5,[sp,#0]
    str x6,[sp,#8]
    //x5 es la direccion x que ingresa el usuario
    //x6 es la direccion y que ingresa el usuario
    mov x8,SCREEN_WIDTH
    mul x6,x6,x8  //(y*640) 
    add x5,x5,x6  //x+y*640
    lsl x5,x5,2   //4*(x+y*640)
    add x0,x0,x5  //dir de inicio + 4*(x+y*640)


    mov x1,x3 //x3 es el height que quiero iterar
  row:
    mov x2, x4 //x4 es el width que quiero iterar
    column:
      stur w10,[x0]
      add x0,x0,4 
      sub x2,x2,1 
      cbnz x2,column
    add x5,x5,2560
    add x0,x20,x5
    sub x1,x1,1
    cbnz x1,row

    ldr x5,[sp,#0]
    ldr x6,[sp,#8]
    add sp,sp,#16
   br lr
//solo para el reloj
circle:
    mov x0,x20 //recargo el framebuffer
    //x4 = radio
    //x5 = input x
    //x6 = input y
    mov x24,x5
    mov x25,x6 //save center
    mul x3,x4,x4 //radio cuadrado
    
    sub x5,x5,x4 
    sub x6,x6,x4

    mov x8,xzr
    add x8,x8,640 //640 es el ancho de pantalla
    mul x12,x6,x8  //(y*640) 
    add x13,x5,x12  //x+y*640
    lsl x13,x13,2   //4*(x+y*640)
    add x0,x0,x13  //dir de inicio + 4*(x+y*640)
//la funcion itera igual que para construir un cuadrado
//pero skipea los valores que no son del circulo
    mov x1,x7 //deberia ser radio*2 pero no funciona
  circlerow:
    mov x2, x7 ///deberia ser radio*2 pero no funciona
    mov x8,xzr
    sub x8,x1,x24  //x0-x
    mul x8,x8,x8 //(x0 - x)²
    circlecolumn:
      mov x9,xzr
      sub x9,x2,x25  //y0-y
      sub x2,x2,1 
      mul x9,x9,x9 //(y0 - y)²
      add x0,x0,4 
      add x9,x9,x8 // (y0 - y)² + (x0 - x)²
      cmp x9,x3
      b.GE skip
      stur w10,[x0]
      skip:
      cbnz x2,circlecolumn
      skip2:
    add x13,x13,2560
    add x0,x20,x13
    sub x1,x1,1
    cbnz x1,circlerow

   br lr

fcircle:

    mov x0, x20
    
    //si la circunferencia toca el borde, se corta el circulo
    mov x15,SCREEN_HEIGH
    //x11 radio al cudrado
    loop1:
    //x9,eje x
    //x8,eje y
    mov x14,SCREEN_WIDTH
    
    loop0:
    sub x16,x15,x8//y-y0
    mul x18,x16,x16//(y-y0)^2
    sub x17,x14,x9//x-x0
    mul x19,x17,x17//(x-x0)^2
    add x5,x18,x19//(y-y0)^2+(x-x0)^2
    sub x14,x14,1//SCREEN_WIDTH-1
    cmp x11,x5//comparar (y-y0)^2+(x-x0)^2 y radio al cuadrado        
    bge loop3   
    add x0,x0,4//siguiente pixel        
    cbnz x14,loop0
    sub x15,x15,1
    cbnz x15,loop1
    loop3:
    stur w10,[x0]
    add x0,x0,4//siguiente pixel
    cbnz x15, loop0 

    br lr


 


fnube:
mov x18,lr
//x10 color
//x28   // inicio linea
//x29   // fin linea
//x8 resta al fin
nube0:
sub x29,x29,x17
mov x3,x14// alto
mov x4,x15 // ancho
mov x6,x16 
nube1:
mov x5,x29
bl rectangle
cmp x29,x28
bgt nube0
br x18

marcoventana:

 mov x26,lr 

//frame
 ldr x10,=BLACK_COLOR
 mov x3,160
 mov x4,280
 mov x5,320
 mov x6,50
 bl rectangle

//framein
 ldr x10,=BROWN_T_COLOR
 mov x3,154
 mov x4,274
 mov x5,323
 mov x6,53
 bl rectangle

//windowframe
 ldr x10,=BLACK_COLOR
 mov x3,140
 mov x4,260
 mov x5,330
 mov x6,60
 bl rectangle

 br x26

cielo:
 mov x26,lr
//windowbg
 ldr x10,=NIGHT_BLUE
 mov x3,134
 mov x4,254
 mov x5,333
 mov x6,63
 bl rectangle

br x26
cielo2:
 mov x26,lr
//windowbg
 ldr x10,=NIGHT_BLUE2
 mov x3,134
 mov x4,254
 mov x5,333
 mov x6,63
 bl rectangle

br x26
cielo3:
 mov x26,lr
//windowbg
 ldr x10,=NIGHT_BLUE3
 mov x3,134
 mov x4,254
 mov x5,333
 mov x6,63
 bl rectangle

br x26
cielo4:
 mov x26,lr
//windowbg
 ldr x10,=NIGHT_BLUE4
 mov x3,134
 mov x4,254
 mov x5,333
 mov x6,63
 bl rectangle

br x26
cielo5:
 mov x26,lr
//windowbg
 ldr x10,=NIGHT_BLUE5
 mov x3,134
 mov x4,254
 mov x5,333
 mov x6,63
 bl rectangle

br x26
cielo6:
 mov x26,lr
//windowbg
 ldr x10,=NIGHT_BLUE6
 mov x3,134
 mov x4,254
 mov x5,333
 mov x6,63
 bl rectangle

br x26
cielo7:
 mov x26,lr
//windowbg
 ldr x10,=NIGHT_BLUE7
 mov x3,134
 mov x4,254
 mov x5,333
 mov x6,63
 bl rectangle

br x26
cielodia:
 mov x26,lr
//windowbg
 ldr x10,=SKYBLUE_COLOR
 mov x3,134
 mov x4,254
 mov x5,333
 mov x6,63
 bl rectangle

br x26
edificios:
mov x26,lr
//lftbuilding
 ldr x10,=BLACK_COLOR//BUILDINGS_COLOR
 mov x3,60
 mov x4,40
 mov x5,382
 mov x6,102
 bl rectangle
//details
 mov x3,4
 mov x4,34
 mov x5,385
 mov x6,98
 bl rectangle
//
 mov x3,10
 mov x4,26
 mov x5,389
 mov x6,88
 bl rectangle
//
 mov x3,3
 mov x4,14
 mov x5,395
 mov x6,85
 bl rectangle
//
 mov x3,10
 mov x4,2
 mov x5,401
 mov x6,75
 bl rectangle

//br x26
//ventanaizq:

//mov x26,lr
//window1
 ldr x10,=YELLOW_COLOR
 mov x3,6
 mov x4,6
 mov x5,386
 mov x6,110
 bl rectangle
//window2
 ldr x10,=YELLOW_COLOR
 mov x5,398
 mov x6,110
 bl rectangle
//window3
 ldr x10,=YELLOW_COLOR
 mov x5,410
 mov x6,110
 bl rectangle
//secondrow
//window1
 ldr x10,=YELLOW_COLOR
 mov x5,386
 mov x6,126
 bl rectangle
//window2
 ldr x10,=YELLOW_COLOR
 mov x5,398
 mov x6,126
 bl rectangle
//window3
 mov x5,410
 mov x6,126
 bl rectangle

//br x26
//edificioder:

//mov x26,lr
//rgtbuilding
 ldr x10,=BLACK_COLOR//BUILDINGS_COLOR
 mov x3,60
 mov x4,40
 mov x5,480
 mov x6,102
 bl rectangle
//details
 mov x3,4
 mov x4,34
 mov x5,483
 mov x6,98
 bl rectangle
//
 mov x3,10
 mov x4,26
 mov x5,487
 mov x6,88
 bl rectangle
//
 mov x3,3
 mov x4,14
 mov x5,493
 mov x6,85
 bl rectangle
//
 mov x3,10
 mov x4,2
 mov x5,499
 mov x6,75
 bl rectangle


//br x26
//ventanader:

//mov x26,lr 
//window1
 ldr x10,=YELLOW_COLOR
 mov x3,6
 mov x4,6
 mov x5,484
 mov x6,110
 bl rectangle
//window2
 mov x5,496
 mov x6,110
 bl rectangle
//window3
 mov x5,508
 mov x6,110
 bl rectangle
//secondrow
//window1
 mov x5,484
 mov x6,126
 bl rectangle
//window2
 mov x5,496
 mov x6,126
 bl rectangle
//window3
 mov x5,508
 mov x6,126
 bl rectangle
 
//br x26
//marco:


//mov x26,lr

//marcoder

 ldr x10,=BROWN_T_COLOR
 mov x3,154
 mov x4,10
 mov x5,587
 mov x6,53
 bl rectangle

//contornomarcoder

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,587
 mov x6,53
 bl rectangle 

//contornomarcoder2

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,597
 mov x6,53
 bl rectangle  

//marcoizq

 ldr x10,=BROWN_T_COLOR
 mov x3,154
 mov x4,10
 mov x5,320
 mov x6,53
 bl rectangle

//contornomarcoizq

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,330
 mov x6,53
 bl rectangle

//contornomarcoizq2

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,320
 mov x6,53
 bl rectangle


//framebelow
ldr x10,=BLACK_COLOR
 mov x3,16
 mov x4,300
 mov x5,310
 mov x6,197
 bl rectangle

ldr x10,=BROWN_T_COLOR
 mov x3,12
 mov x4,296
 mov x5,312
 mov x6,199
 bl rectangle

//windowfloor
 ldr x10,=BLACK_COLOR
 mov x3,27
 mov x4,254
 mov x5,333
 mov x6,170
 bl rectangle

br x26

//----------------------------------------------------//

edificiosdia:
mov x26,lr
//lftbuilding
 ldr x10,=BUILDINGS_COLOR
 mov x3,60
 mov x4,40
 mov x5,382
 mov x6,102
 bl rectangle
//details
 mov x3,4
 mov x4,34
 mov x5,385
 mov x6,98
 bl rectangle
//
 mov x3,10
 mov x4,26
 mov x5,389
 mov x6,88
 bl rectangle
//
 mov x3,3
 mov x4,14
 mov x5,395
 mov x6,85
 bl rectangle
//
 mov x3,10
 mov x4,2
 mov x5,401
 mov x6,75
 bl rectangle

//br x26
//ventanaizq:

//mov x26,lr
//window1
 ldr x10,=WINDOWS_COLOR
 mov x3,6
 mov x4,6
 mov x5,386
 mov x6,110
 bl rectangle
//window2
 ldr x10,=WINDOWS_COLOR
 mov x5,398
 mov x6,110
 bl rectangle
//window3
 ldr x10,=WINDOWS_COLOR
 mov x5,410
 mov x6,110
 bl rectangle
//secondrow
//window1
 ldr x10,=WINDOWS_COLOR
 mov x5,386
 mov x6,126
 bl rectangle
//window2
 ldr x10,=WINDOWS_COLOR
 mov x5,398
 mov x6,126
 bl rectangle
//window3
 mov x5,410
 mov x6,126
 bl rectangle

//br x26
//edificioder:

//mov x26,lr
//rgtbuilding
 ldr x10,=BUILDINGS_COLOR
 mov x3,60
 mov x4,40
 mov x5,480
 mov x6,102
 bl rectangle
//details
 mov x3,4
 mov x4,34
 mov x5,483
 mov x6,98
 bl rectangle
//
 mov x3,10
 mov x4,26
 mov x5,487
 mov x6,88
 bl rectangle
//
 mov x3,3
 mov x4,14
 mov x5,493
 mov x6,85
 bl rectangle
//
 mov x3,10
 mov x4,2
 mov x5,499
 mov x6,75
 bl rectangle


//br x26
//ventanader:

//mov x26,lr 
//window1
 ldr x10,=WINDOWS_COLOR
 mov x3,6
 mov x4,6
 mov x5,484
 mov x6,110
 bl rectangle
//window2
 mov x5,496
 mov x6,110
 bl rectangle
//window3
 mov x5,508
 mov x6,110
 bl rectangle
//secondrow
//window1
 mov x5,484
 mov x6,126
 bl rectangle
//window2
 mov x5,496
 mov x6,126
 bl rectangle
//window3
 mov x5,508
 mov x6,126
 bl rectangle
 
//br x26
//marco:


//mov x26,lr

//marcoder

 ldr x10,=BROWN_T_COLOR
 mov x3,154
 mov x4,10
 mov x5,587
 mov x6,53
 bl rectangle

//contornomarcoder

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,587
 mov x6,53
 bl rectangle 

//contornomarcoder2

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,597
 mov x6,53
 bl rectangle  

//marcoizq

 ldr x10,=BROWN_T_COLOR
 mov x3,154
 mov x4,10
 mov x5,320
 mov x6,53
 bl rectangle

//contornomarcoizq

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,330
 mov x6,53
 bl rectangle

//contornomarcoizq2

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,320
 mov x6,53
 bl rectangle


//framebelow
ldr x10,=BLACK_COLOR
 mov x3,16
 mov x4,300
 mov x5,310
 mov x6,197
 bl rectangle

ldr x10,=BROWN_T_COLOR
 mov x3,12
 mov x4,296
 mov x5,312
 mov x6,199
 bl rectangle

//windowfloor
 ldr x10,=BUILDINGS_COLOR
 mov x3,27
 mov x4,254
 mov x5,333
 mov x6,170
 bl rectangle

br x26


//-------------------------------------------------------//

edificiostarde:
mov x26,lr
//lftbuilding
 ldr x10,=GREY_COLOR
 mov x3,60
 mov x4,40
 mov x5,382
 mov x6,102
 bl rectangle
//details
 mov x3,4
 mov x4,34
 mov x5,385
 mov x6,98
 bl rectangle
//
 mov x3,10
 mov x4,26
 mov x5,389
 mov x6,88
 bl rectangle
//
 mov x3,3
 mov x4,14
 mov x5,395
 mov x6,85
 bl rectangle
//
 mov x3,10
 mov x4,2
 mov x5,401
 mov x6,75
 bl rectangle

//br x26
//ventanaizq:

//mov x26,lr
//window1
 ldr x10,=YELLOW_COLOR
 mov x3,6
 mov x4,6
 mov x5,386
 mov x6,110
 bl rectangle
//window2
 ldr x10,=YELLOW_COLOR
 mov x5,398
 mov x6,110
 bl rectangle
//window3
 ldr x10,=YELLOW_COLOR
 mov x5,410
 mov x6,110
 bl rectangle
//secondrow
//window1
 ldr x10,=YELLOW_COLOR
 mov x5,386
 mov x6,126
 bl rectangle
//window2
 ldr x10,=YELLOW_COLOR
 mov x5,398
 mov x6,126
 bl rectangle
//window3
 mov x5,410
 mov x6,126
 bl rectangle

//br x26
//edificioder:

//mov x26,lr
//rgtbuilding
 ldr x10,=GREY_COLOR
 mov x3,60
 mov x4,40
 mov x5,480
 mov x6,102
 bl rectangle
//details
 mov x3,4
 mov x4,34
 mov x5,483
 mov x6,98
 bl rectangle
//
 mov x3,10
 mov x4,26
 mov x5,487
 mov x6,88
 bl rectangle
//
 mov x3,3
 mov x4,14
 mov x5,493
 mov x6,85
 bl rectangle
//
 mov x3,10
 mov x4,2
 mov x5,499
 mov x6,75
 bl rectangle


//br x26
//ventanader:

//mov x26,lr 
//window1
 ldr x10,=YELLOW_COLOR
 mov x3,6
 mov x4,6
 mov x5,484
 mov x6,110
 bl rectangle
//window2
 mov x5,496
 mov x6,110
 bl rectangle
//window3
 mov x5,508
 mov x6,110
 bl rectangle
//secondrow
//window1
 mov x5,484
 mov x6,126
 bl rectangle
//window2
 mov x5,496
 mov x6,126
 bl rectangle
//window3
 mov x5,508
 mov x6,126
 bl rectangle
 
//br x26
//marco:


//mov x26,lr

//marcoder

 ldr x10,=BROWN_T_COLOR
 mov x3,154
 mov x4,10
 mov x5,587
 mov x6,53
 bl rectangle

//contornomarcoder

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,587
 mov x6,53
 bl rectangle 

//contornomarcoder2

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,597
 mov x6,53
 bl rectangle  

//marcoizq

 ldr x10,=BROWN_T_COLOR
 mov x3,154
 mov x4,10
 mov x5,320
 mov x6,53
 bl rectangle

//contornomarcoizq

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,330
 mov x6,53
 bl rectangle

//contornomarcoizq2

 ldr x10,=BLACK_COLOR
 mov x3,154
 mov x4,3
 mov x5,320
 mov x6,53
 bl rectangle


//framebelow
ldr x10,=BLACK_COLOR
 mov x3,16
 mov x4,300
 mov x5,310
 mov x6,197
 bl rectangle

ldr x10,=BROWN_T_COLOR
 mov x3,12
 mov x4,296
 mov x5,312
 mov x6,199
 bl rectangle

//windowfloor
 ldr x10,=GREY_COLOR
 mov x3,27
 mov x4,254
 mov x5,333
 mov x6,170
 bl rectangle

br x26



