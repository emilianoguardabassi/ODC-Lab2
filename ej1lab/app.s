//usar .include "ejemplo.s" si quieren linkear otro file.
.include "background.s"
.include "rendershapes.s"


.equ SCREEN_WIDTH,   640
.equ SCREEN_HEIGH,   480
.equ BITS_PER_PIXEL, 32

.equ GPIO_BASE,    0x3f200000
.equ GPIO_GPFSEL0, 0x00
.equ GPIO_GPLEV0,  0x34

.globl main

main:
	// x0 contiene la direccion base del framebuffer
	mov x20, x0 
  // guardo el framebuffer en x20

  /*Registros:
    	    x0 = para recargar la direccion del framebuffer
  				x1 al x2 = coordenadas x, y
          x3 al x9 = inputs para rectangle (algunas son para inputs)
  				x10 al x11 = colores
  				x12 al x19 = sin funcion definida de momento
          x20 = Direccion inicial del framebuffer ¡No tocar!
          x21 al x25 = sin funcion definida de momento
          x26 al x27 = guardan lr
  */
	//---------------- CODE HERE ------------------------------------

  bl background
  bl clock
  bl window
  bl table
  bl mousepad
  bl monitor
  bl screen
  bl monitorStand
  bl monitorStand2
  bl codeTreebg
  bl windowsplit
  bl treeCode
  bl monitorshine
  bl keyboard
  bl rendermaincode
  bl copycode
  bl mouse

  



  // ---------------Gpios si es que queremos usarlos----------------
InfLoop:
	b InfLoop

