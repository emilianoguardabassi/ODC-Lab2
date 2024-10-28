.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480

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

   br lr


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
    mov x2, x7 //deberia ser radio*2 pero no funciona
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




