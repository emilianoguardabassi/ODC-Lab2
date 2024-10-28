.include "functions.s"
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
.equ MORNING_RED, 0x277593
.equ MORNING_SUN1, 0xFF330F
.equ MORNING_SUN2, 0xFF9600
.equ NIGHT_CLOUDS, 0xB6CAFF
.equ DAY_CLOUDS, 0xEEF1F2
//------------------------------vrelojv-----------------------------------//
  clock:
  mov x26,lr
 
  ldr x10,=BLACK_COLOR
  mov x4,70 // radio70
  mov x5,100 // x
  mov x6,100 // y
  mov x7,185 //tamaño del cuadrado donde se renderiza 185
  bl circle
  
  ldr x10,=WHITE_COLOR
  mov x4,65 // radio
  mov x5,100 // x
  mov x6,100 // y
  mov x7,180
  bl circle
  br x26
  //clockhands
  //long
  ldr x10,=BLACK_COLOR
  mov x3,60
  mov x4,3 
  mov x5,115
  mov x6,55
  bl rectangle

//---------------------------------^reloj^--------------------------------//
//-----------------------------------------vtablev-----------------------------------------------//
//Ingresar x3=alto, x4=ancho, x5=x, x6=y, x10=color

table:
 mov x26,lr  //guardo link register

 ldr x10,=BROWN_T_COLOR
 mov x3,342 
 mov x4,640
 mov x5,0
 mov x6,342
bl rectangle
//wooddetails
 ldr x10,=DARKWOOD_COLOR
 mov x3,4
 mov x4,640
 mov x5,0
 mov x6,382
 bl rectangle

 ldr x10,=DARKWOOD_COLOR
 mov x3,4
 mov x4,640
 mov x5,0
 mov x6,422
 bl rectangle

 ldr x10,=DARKWOOD_COLOR
 mov x3,4
 mov x4,640
 mov x5,0
 mov x6,462
 bl rectangle

 ldr x10,=DARKWOOD_COLOR
 mov x3,40
 mov x4,4
 mov x5,160
 mov x6,342
 bl rectangle

 ldr x10,=DARKWOOD_COLOR
 mov x3,40
 mov x4,4
 mov x5,560
 mov x6,382
 bl rectangle

 ldr x10,=DARKWOOD_COLOR
 mov x3,40
 mov x4,4
 mov x5,20
 mov x6,422
 bl rectangle

tableframe:
 ldr x10,=BLACK_COLOR
 mov x3,2 
 mov x4,640
 mov x5,0
 mov x6,342
bl rectangle
br x26
//-----------------------------------------^table^-----------------------------------------------//
//------------------------------------vmousepadv-----------------------------------------//
mousepad:
 mov x26,lr 

//mousepad
 ldr x10,=BLACK_COLOR
 mov x3,70
 mov x4,400
 mov x5,120
 mov x6,400
 bl rectangle

//mousepadin
 ldr x10,=KEYCAPS_COLOR
 mov x3,66
 mov x4,396
 mov x5,122
 mov x6,402
 bl rectangle
br x26
//-----------------------------------------^mousepad^-----------------------------------------------//
//------------------------------------vmonitor&screenv-----------------------------------------//
monitor:
 //Ingresar x3=alto, x4=ancho, x5=x, x6=y, x10=color
 mov x26,lr  //guardo link register
 ldr x10,=BLACK_COLOR
 mov x3,225 //alto del rectangulo 
 mov x4,440 //ancho del rectangulo 
 mov x5,100 //coordenada x inicial 
 mov x6,145 //coordenada y inicial 
bl rectangle
br x26

screen:
 //Ingresar x3=alto, x4=ancho, x5=x, x6=y, x10=color
 mov x26,lr  //guardo link register
 ldr x10,=SCREEN_BG_COLOR
 mov x3,205 
 mov x4,420
 mov x5,110
 mov x6,155
bl rectangle
br x26

monitorStand: //columna de la base del monitor
 //Ingresar x3=alto, x4=ancho, x5=x, x6=y, x10=color
 mov x26,lr  //guardo link register
 ldr x10,=BLACK_COLOR
 mov x3,28 //alto del rectangulo 
 mov x4,19 //ancho del rectangulo 
 mov x5,312 //coordenada x inicial 
 mov x6,370 //coordenada y inicial 
bl rectangle
br x26

monitorStand2: //base del pie del monitor
 //Ingresar x3=alto, x4=ancho, x5=x, x6=y, x10=color
 mov x26,lr  //guardo link register
 ldr x10,=BLACK_COLOR
 mov x3,13 //alto del rectangulo 
 mov x4,58 //ancho del rectangulo 
 mov x5,292 //coordenada x inicial 
 mov x6,390 //coordenada y inicial 
bl rectangle
br x26

//----------------------------------vshinev---------------------------------//
monitorshine: //brillo al costado izquierdo del monitor
mov x26,lr  
  //leftshine1:
     ldr x10,=GREY_COLOR
     mov x3,214 //alto del rectangulo 
     mov x4,2 //ancho del rectangulo 
     mov x5,102 //coordenada x inicial 
     mov x6,150 //coordenada y inicial 
    bl rectangle
  //leftshine2:
     mov x3,210 //alto del rectangulo 
     mov x4,2 //ancho del rectangulo 
     mov x5,104 //coordenada x inicial 
     mov x6,152 //coordenada y inicial 
    bl rectangle
  //topshine1:
     mov x3,2 //alto del rectangulo 
     mov x4,426 //ancho del rectangulo 
     mov x5,107 //coordenada x inicial 
     mov x6,147 //coordenada y inicial 
    bl rectangle
  //topshine2:
     mov x3,1 //alto del rectangulo 
     mov x4,422 //ancho del rectangulo 
     mov x5,109 //coordenada x inicial 
     mov x6,149 //coordenada y inicial 
    bl rectangle
  //standshine:
     mov x3,17 
     mov x4,2
     mov x5,314 
     mov x6,372 
    bl rectangle
  
     mov x3,15 
     mov x4,1
     mov x5,316 
     mov x6,373 
    bl rectangle
//basestandshine:
     mov x3,2 
     mov x4,20
     mov x5,294 
     mov x6,391
    bl rectangle
  
     mov x3,1 
     mov x4,16
     mov x5,296 
     mov x6,393 
    bl rectangle
//----------------------------------^shine^---------------------------------//
  br x26
//------------------------------------^monitor&screen^-----------------------------------------//


//------------------------------------vwindowsplitv-----------------------------------------//
windowsplit: //line divisora de código
mov x26, lr 

ldr x10,=TREE_BG_COLOR
mov x3,205
mov x4,3
mov x5, 355
mov x6,155
bl rectangle
br x26
//------------------------------------^windowsplit^-----------------------------------------//


//------------------------------vfiletreev-------------------------------------//
// screen starter x=110 y=155
//Ingresar x3=alto, x4=ancho, x5=coord x, x6=coord y, x10=color
codeTreebg: //fondo del tree file
mov x26, lr 

ldr x10,=TREE_BG_COLOR
mov x3,205
mov x4,90
mov x5, 110
mov x6,155
bl rectangle
br x26

treeCode://folder & files of the tree 
mov x26,lr
//-----------------------vselectedfolderv------------------------//
//highlightSelectedFolder:
ldr x10,=HIGHLIGHT_COLOR
mov x3,16
mov x4,80
mov x5, 114
mov x6,162
bl rectangle

//leaderfolder1:
    ldr x10,=PURPLE_FILE_COLOR
    mov x3,12 
    mov x4,12
    mov x5,118
    mov x6,164
    bl rectangle

    //leaderfolder1text:
      ldr x10,=WHITE_COLOR
      mov x3,4
      mov x4,55
      mov x5,133 //file +13 pixels
      mov x6,168
      bl rectangle
//-----------------------^selectedfolder^-------------------------//
//------------------------vfilesv-------------------------//
  //purplefile1:
    ldr x10, =PURPLE_FILE_COLOR
    mov x3,10 
    mov x4,10
    mov x5,132
    mov x6,180
    bl rectangle

    //purplefile1text:
      ldr x10,=WHITE_COLOR
      mov x3,2
      mov x4,45
      mov x5,144  // file x+12 pixels
      mov x6,184  // file y+3 pixels
      bl rectangle

   //bluefile1:
    ldr x10,=BLUE_FILE_COLOR
    mov x3,10 
    mov x4,10
    mov x5,132
    mov x6,192
    bl rectangle

    //bluefile1text:
      ldr x10,=WHITE_COLOR
      mov x3,2
      mov x4,25
      mov x5,144  // file x+12 pixels
      mov x6,196  // file y+3 pixels
      bl rectangle
    
//-----------------------vselectedfilev-------------------------//
   //highlightSelectedFile:
   ldr x10,=HIGHLIGHT_COLOR
   mov x3,14
   mov x4,65
   mov x5, 128
   mov x6,202
   bl rectangle

   //bluefile2:
    ldr x10,=BLUE_FILE_COLOR
    mov x3,10 
    mov x4,10
    mov x5,132
    mov x6,204
    bl rectangle
    
    //bluefile2text:
      ldr x10,=WHITE_COLOR
      mov x3,2
      mov x4,35
      mov x5,144  // file x+12 pixels
      mov x6,208  // file y+3 pixels
      bl rectangle
//-----------------------^selectedfile^-------------------------//

   //bluefile3:
    ldr x10,=BLUE_FILE_COLOR
    mov x3,10 
    mov x4,10
    mov x5,132
    mov x6,216
    bl rectangle

    //bluefile3text:
      ldr x10,=WHITE_COLOR
      mov x3,2
      mov x4,30
      mov x5,144  // file x+12 pixels
      mov x6,220  // file y+4 pixels
      bl rectangle
//------------------------^endfiles^-------------------------//
      br x26  //retorno a main
//------------------------------^filetree^-------------------------------------//

//--------------------------------vrendermaincodev-----------------------------------------//
rendermaincode:
//space between lines = 6 
//space between words = 5
//indentation =12
mov x26,lr 
//line1 
  //first #include
  ldr x10,=PINK_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,20 //ancho del rectangulo 
  mov x5,210 //coordenada x inicial 
  mov x6,160 //coordenada y inicial 
  bl rectangle
  //library
  ldr x10,=YELLOW_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,20 //ancho del rectangulo 
  mov x5,235 //coordenada x inicial 
  mov x6,160 //coordenada y inicial 
  bl rectangle

//line2 
  //second include
  ldr x10,=PINK_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,20 //ancho del rectangulo 
  mov x5,210 //coordenada x inicial 
  mov x6,166 //coordenada y inicial 
  bl rectangle
  //library
  ldr x10,=YELLOW_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,16 //ancho del rectangulo 
  mov x5,235 //coordenada x inicial 
  mov x6,166 //coordenada y inicial 
  bl rectangle

//line3 
  //third include
  ldr x10,=PINK_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,20 //ancho del rectangulo 
  mov x5,210 //coordenada x inicial 
  mov x6,172 //coordenada y inicial 
  bl rectangle
  //library
  ldr x10,=YELLOW_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,25 //ancho del rectangulo 
  mov x5,235 //coordenada x inicial 
  mov x6,172 //coordenada y inicial 
  bl rectangle

//line4 (4 empty spaces) (start main)
 ldr x10,=CYAN_COLOR
  mov x4,10
  mov x5,210 
  mov x6,202
  bl rectangle
 ldr x10, =GREEN_COLOR
  mov x4,15
  mov x5,225
  mov x6,202
  bl rectangle
 ldr x10, =WHITE_COLOR
  mov x4,2
  mov x5,245
  mov x6,202
  bl rectangle
 ldr x10,=CYAN_COLOR
  mov x4,5
  mov x5,252 
  mov x6,202
  bl rectangle
 ldr x10,=ORANGE_COLOR
  mov x4,10
  mov x5,262 
  mov x6,202
  bl rectangle
 ldr x10,=CYAN_COLOR
  mov x4,5
  mov x5,277 
  mov x6,202
  bl rectangle
 ldr x10,=ORANGE_COLOR
  mov x4,15
  mov x5,287 
  mov x6,202
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,2
  mov x5,307 
  mov x6,202
  bl rectangle

//line5
 ldr x10,=CYAN_COLOR
  mov x4,12
  mov x5,222
  mov x6,208
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,22
  mov x5,239
  mov x6,208
  bl rectangle
 ldr x10,=PINK_COLOR
  mov x4,4
  mov x5,266
  mov x6,208
  bl rectangle
 ldr x10,=CYAN_COLOR
  mov x4,16
  mov x5,275
  mov x6,208
  bl rectangle

//line6 
 ldr x10,=WHITE_COLOR
  mov x4,20
  mov x5,222
  mov x6,214
  bl rectangle
 ldr x10,=PINK_COLOR
  mov x4,4
  mov x5,247
  mov x6,214
  bl rectangle
 ldr x10,=GREEN_COLOR
  mov x4,20
  mov x5,256
  mov x6,214
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,2
  mov x5,281
  mov x6,214
  bl rectangle
 ldr x10,=ORANGE_COLOR
  mov x4,10
  mov x5,288
  mov x6,214
  bl rectangle
 ldr x10,=ORANGE_COLOR
  mov x4,8
  mov x5,303
  mov x6,214
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,2
  mov x5,316
  mov x6,214
  bl rectangle
 
 //line7
 ldr x10,=GREEN_COLOR
  mov x4,26 
  mov x5,222
  mov x6,220
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,253
  mov x6,220
  bl rectangle
  mov x4,4 
  mov x5,260
  mov x6,220
  bl rectangle
 ldr x10,=PINK_COLOR
  mov x4,6 
  mov x5,269
  mov x6,220
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,14 
  mov x5,280
  mov x6,220
  bl rectangle
  mov x4,2 
  mov x5,299
  mov x6,220
  bl rectangle
 
 //line8
  ldr x10,=PINK_COLOR
  mov x4,4 
  mov x5,222 
  mov x6,226
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,229 
  mov x6,226
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,6 
  mov x5,236 
  mov x6,226
  bl rectangle
  mov x4,6 
  mov x5,247 
  mov x6,226
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,258 
  mov x6,226
  bl rectangle
  mov x4,2 
  mov x5,265 
  mov x6,226
  bl rectangle
 
 //line9 indentation if
  ldr x10,=GREEN_COLOR
  mov x4,20 
  mov x5,234 
  mov x6,232
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,15 
  mov x5,259 
  mov x6,232
  bl rectangle
 
 //line10
  ldr x10,=CYAN_COLOR
  mov x4,8 
  mov x5,234 
  mov x6,238
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,10 
  mov x5,247 
  mov x6,238
  bl rectangle
  ldr x10,=PINK_COLOR
  mov x4,4 
  mov x5,263 
  mov x6,238
  bl rectangle
  ldr x10,=GREEN_COLOR
  mov x4,14 
  mov x5,272 
  mov x6,238
  bl rectangle
 
 //line11
  ldr x10,=PINK_COLOR
  mov x4,4 
  mov x5,234 
  mov x6,244
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,14 
  mov x5,241 
  mov x6,244
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,260 
  mov x6,244
  bl rectangle
 
 //line12 indentation 
  ldr x10,=CYAN_COLOR
  mov x4,8 
  mov x5,246 
  mov x6,250
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,6 
  mov x5,259 
  mov x6,250
  bl rectangle
  ldr x10,=PINK_COLOR
  mov x4,4 
  mov x5,270 
  mov x6,250
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,8 
  mov x5,279 
  mov x6,250
  bl rectangle
 
 //line13 
  ldr x10,=GREEN_COLOR
  mov x4,22 
  mov x5,246 
  mov x6,256
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,18 
  mov x5,273 
  mov x6,256
  bl rectangle
 
 //line14
  ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,234 
  mov x6,262
  bl rectangle
 
 //line15 (return)
  ldr x10,=PURPLE_FILE_COLOR
  mov x4,15 
  mov x5,222 
  mov x6,268
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,25 
  mov x5,242 
  mov x6,268
  bl rectangle
 

br x26
//--------------------------------^rendermaincode^-----------------------------------------//


//--------------------------------vrendercopycodev-----------------------------------------//
copycode:
//add x+160
mov x26,lr 
//line1 
  //first #include
  ldr x10,=PINK_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,20 //ancho del rectangulo 
  mov x5,370 //coordenada x inicial 
  mov x6,160 //coordenada y inicial 
  bl rectangle
  //library
  ldr x10,=YELLOW_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,20 //ancho del rectangulo 
  mov x5,395 //coordenada x inicial 
  mov x6,160 //coordenada y inicial 
  bl rectangle

//line2 
  //second include
  ldr x10,=PINK_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,20 //ancho del rectangulo 
  mov x5,370 //coordenada x inicial 
  mov x6,166 //coordenada y inicial 
  bl rectangle
  //library
  ldr x10,=YELLOW_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,16 //ancho del rectangulo 
  mov x5,395 //coordenada x inicial 
  mov x6,166 //coordenada y inicial 
  bl rectangle

//line3 
  //third include
  ldr x10,=PINK_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,20 //ancho del rectangulo 
  mov x5,370 //coordenada x inicial 
  mov x6,172 //coordenada y inicial 
  bl rectangle
  //library
  ldr x10,=YELLOW_COLOR
  mov x3,3 //alto del rectangulo 
  mov x4,25 //ancho del rectangulo 
  mov x5,395 //coordenada x inicial 
  mov x6,172 //coordenada y inicial 
  bl rectangle

//line4 (4 empty spaces)
 ldr x10,=CYAN_COLOR
  mov x4,10
  mov x5,210 
  add x5,x5,160
  mov x6,202
  bl rectangle
 ldr x10, =GREEN_COLOR
  mov x4,15
  mov x5,225
  add x5,x5,160
  mov x6,202
  bl rectangle
 ldr x10, =WHITE_COLOR
  mov x4,2
  mov x5,245
  add x5,x5,160
  mov x6,202
  bl rectangle
 ldr x10,=CYAN_COLOR
  mov x4,5
  mov x5,252 
  add x5,x5,160
  mov x6,202
  bl rectangle
 ldr x10,=ORANGE_COLOR
  mov x4,10
  mov x5,262 
  add x5,x5,160
  mov x6,202
  bl rectangle
 ldr x10,=CYAN_COLOR
  mov x4,5
  mov x5,277 
  add x5,x5,160
  mov x6,202
  bl rectangle
 ldr x10,=ORANGE_COLOR
  mov x4,15
  mov x5,287 
  add x5,x5,160
  mov x6,202
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,2
  mov x5,307 
  add x5,x5,160
  mov x6,202
  bl rectangle

//line5

 ldr x10,=CYAN_COLOR
  mov x4,12
  mov x5,222
  add x5,x5,160
  mov x6,208
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,22
  mov x5,239
  add x5,x5,160
  mov x6,208
  bl rectangle
 ldr x10,=PINK_COLOR
  mov x4,4
  mov x5,266
  add x5,x5,160
  mov x6,208
  bl rectangle
 ldr x10,=CYAN_COLOR
  mov x4,16
  mov x5,275
  add x5,x5,160
  mov x6,208
  bl rectangle

//line6 
 ldr x10,=WHITE_COLOR
  mov x4,20
  mov x5,222
  add x5,x5,160
  mov x6,214
  bl rectangle
 ldr x10,=PINK_COLOR
  mov x4,4
  mov x5,247
  add x5,x5,160
  mov x6,214
  bl rectangle
 ldr x10,=GREEN_COLOR
  mov x4,20
  mov x5,256
  add x5,x5,160
  mov x6,214
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,2
  mov x5,281
  add x5,x5,160
  mov x6,214
  bl rectangle
 ldr x10,=ORANGE_COLOR
  mov x4,10
  mov x5,288
  add x5,x5,160
  mov x6,214
  bl rectangle
 ldr x10,=ORANGE_COLOR
  mov x4,8
  mov x5,303
  add x5,x5,160
  mov x6,214
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,2
  mov x5,316
  add x5,x5,160
  mov x6,214
  bl rectangle
 
 //line7
 ldr x10,=GREEN_COLOR
  mov x4,26 
  mov x5,222
  add x5,x5,160
  mov x6,220
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,253
  add x5,x5,160
  mov x6,220
  bl rectangle
  mov x4,4 
  mov x5,260
  add x5,x5,160
  mov x6,220
  bl rectangle
 ldr x10,=PINK_COLOR
  mov x4,6 
  mov x5,269
  add x5,x5,160
  mov x6,220
  bl rectangle
 ldr x10,=WHITE_COLOR
  mov x4,14 
  mov x5,280
  add x5,x5,160
  mov x6,220
  bl rectangle
  mov x4,2 
  mov x5,299
  add x5,x5,160
  mov x6,220
  bl rectangle
 
 //line8
  ldr x10,=PINK_COLOR
  mov x4,4 
  mov x5,222 
  add x5,x5,160
  mov x6,226
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,229 
  add x5,x5,160
  mov x6,226
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,6 
  mov x5,236 
  add x5,x5,160
  mov x6,226
  bl rectangle
  mov x4,6 
  mov x5,247 
  add x5,x5,160
  mov x6,226
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,258 
  add x5,x5,160
  mov x6,226
  bl rectangle
  mov x4,2 
  mov x5,265 
  add x5,x5,160
  mov x6,226
  bl rectangle
 
 //line9 indentation if
  ldr x10,=GREEN_COLOR
  mov x4,20 
  mov x5,234 
  add x5,x5,160
  mov x6,232
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,15 
  mov x5,259 
  add x5,x5,160
  mov x6,232
  bl rectangle
 
 //line10
  ldr x10,=CYAN_COLOR
  mov x4,8 
  mov x5,234 
  add x5,x5,160
  mov x6,238
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,10 
  mov x5,247 
  add x5,x5,160
  mov x6,238
  bl rectangle
  ldr x10,=PINK_COLOR
  mov x4,4 
  mov x5,263 
  add x5,x5,160
  mov x6,238
  bl rectangle
  ldr x10,=GREEN_COLOR
  mov x4,14 
  mov x5,272 
  add x5,x5,160
  mov x6,238
  bl rectangle
 
 //line11
  ldr x10,=PINK_COLOR
  mov x4,4 
  mov x5,234 
  add x5,x5,160
  mov x6,244
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,14 
  mov x5,241 
  add x5,x5,160
  mov x6,244
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,260 
  add x5,x5,160
  mov x6,244
  bl rectangle
 
 //line12 indentation 
  ldr x10,=CYAN_COLOR
  mov x4,8 
  mov x5,246 
  add x5,x5,160
  mov x6,250
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,6 
  mov x5,259 
  add x5,x5,160
  mov x6,250
  bl rectangle
  ldr x10,=PINK_COLOR
  mov x4,4 
  mov x5,270 
  add x5,x5,160
  mov x6,250
  bl rectangle
  ldr x10,=ORANGE_COLOR
  mov x4,8 
  mov x5,279 
  add x5,x5,160
  mov x6,250
  bl rectangle
 
 //line13 
  ldr x10,=GREEN_COLOR
  mov x4,22 
  mov x5,246 
  add x5,x5,160
  mov x6,256
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,18 
  mov x5,273 
  add x5,x5,160
  mov x6,256
  bl rectangle
 
 //line14
  ldr x10,=WHITE_COLOR
  mov x4,2 
  mov x5,234 
  add x5,x5,160
  mov x6,262
  bl rectangle
 
 //line15 (return)
  ldr x10,=PURPLE_FILE_COLOR
  mov x4,15 
  mov x5,222 
  add x5,x5,160
  mov x6,268
  bl rectangle
  ldr x10,=WHITE_COLOR
  mov x4,25 
  mov x5,242 
  add x5,x5,160
  mov x6,268
  bl rectangle

br x26
//--------------------------------^rendercopycode^-----------------------------------------//


//------------------------------vkeyboardv-------------------------------------//
keyboard:
mov x26,lr 
//keyboardbg:
  mov x26,lr
  ldr x10,BLACK_COLOR
  mov x3,55 
  mov x4,250 
  mov x5,195 
  mov x6,410
  bl rectangle

//keyboardinbg:
  ldr x10,=KEYBOARD_BG_COLOR
  mov x3,41 
  mov x4,244 
  mov x5,198 
  mov x6,414
  bl rectangle

//-----------------------------vkeyboardkeycapsv-------------------------------//
//keyboardkeycaps:
//----------------------------vfirstrowv------------------------------//
//----------------vfirstrowframev-----------------------//
  //primer botón
  ldr x10,BLACK_COLOR
  mov x3,12 
  mov x4,12 
  mov x5,200 //x + prev size + 5 
  mov x6,415
  bl rectangle
  //segundo botón
  mov x5,217 //x + prev size + 5 
  mov x6,415
  bl rectangle
  //tercer botón
  mov x4,190 
  mov x5,234 //x + prev size + 5 
  mov x6,415
  bl rectangle
  //cuarto botón
  mov x4,12 
  mov x5,428 //x + prev size + 5 
  mov x6,415
  bl rectangle

//----------------^firstrowframe^-----------------------//

//----------------vfirstrowcolorv-----------------------//
  ldr x10,=KEYCAPS_COLOR
  mov x3,8 
  mov x4,8 
  mov x5,202 //x + prev size + 5 
  mov x6,416
  bl rectangle

  mov x5,219 //x + prev size + 5 
  mov x6,416
  bl rectangle

  mov x4,186 
  mov x5,236 //x + prev size + 5 
  mov x6,416
  bl rectangle

  mov x4,8 
  mov x5,430 //x + prev size + 5 
  mov x6,416
  bl rectangle
//----------------^firstrowframe^-----------------------//
//---------------------------^firstrow^-----------------------------//

//---------------------------vsecondrowv----------------------------//
  ldr x10,BLACK_COLOR
  mov x3,12
  mov x4,207 
  mov x5,217 //x + prev size + 5 
  mov x6,428
  bl rectangle

  ldr x10,=KEYCAPS_COLOR
  mov x3,8 
  mov x4,203 
  mov x5,219 //x + prev size + 5 
  mov x6,429
  bl rectangle
//---------------------------^secondrow^----------------------------//
//---------------------------vthirdrowv-----------------------------//
  ldr x10,BLACK_COLOR
  mov x3,12
  mov x4,207 
  mov x5,217 //x + prev size + 5 
  mov x6,441
  bl rectangle

  ldr x10,=KEYCAPS_COLOR
  mov x3,8 
  mov x4,203 
  mov x5,219 //x + prev size + 5 
  mov x6,442
  bl rectangle
//--------------------------^thirdrow^-----------------------------//
//-----------------------vleft&rigthbuttonv------------------------//
  //left button
  ldr x10,BLACK_COLOR
  mov x3,26 
  mov x4,12 
  mov x5,200 //x + prev size + 5 
  mov x6,428
  bl rectangle
  //right button
  mov x5,428 //x + prev size + 5 
  mov x6,428
  bl rectangle
//leftbuttoncolor
  ldr x10,=KEYCAPS_COLOR
  mov x3,22 
  mov x4,8 
  mov x5,202 //x + prev size + 5 
  mov x6,429
  bl rectangle
//rigthbuttoncolor
  mov x5,430 //x + prev size + 5 
  mov x6,429
  bl rectangle
//----------------------^left&rigthbutton^-------------------------//
  br x26
//------------------------------^keyboard^-------------------------------------//

//------------------------------vmousev-------------------------------------//

mouse:
mov x26,lr 
//mousebg:
  mov x26,lr
  ldr x10,BLACK_COLOR
  mov x3,48
  mov x4,36
  mov x5,460
  mov x6,413
  bl rectangle
  

//mouseinbg:
  ldr x10,=KEYBOARD_BG_COLOR
  mov x3,36
  mov x4,30
  mov x5,463
  mov x6,416
  bl rectangle

//xline:
  ldr x10,BLACK_COLOR
  mov x3,3
  mov x4,30
  mov x5,463 
  mov x6,430
  bl rectangle

//yline:
  mov x3,17
  mov x4,3
  mov x5,477 
  mov x6,416
  bl rectangle

//button:
  ldr x10,BLACK_COLOR
  mov x3,8
  mov x4,7
  mov x5,475
  mov x6,418
  bl rectangle

//buttonin:
  ldr x10,=KEYCAPS_COLOR
  mov x3,6
  mov x4,5
  mov x5,476
  mov x6,419
  bl rectangle

//cable:
  ldr x10,BLACK_COLOR
  mov x3,24
  mov x4,3
  mov x5,477 
  mov x6,392
  bl rectangle

  mov x3,3
  mov x4,8
  mov x5,469 
  mov x6,392
  bl rectangle

  mov x3,24
  mov x4,3
  mov x5,469 
  mov x6,368
  bl rectangle

br x26
//------------------------------^mouse^-------------------------------------//


