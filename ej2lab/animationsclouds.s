.include "rendershapes.s"


clouds1:
mov x27,lr

bl marcoventana
bl cielo
bl edificios

br x27


//---------------------------------------------------------//
clouds2:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,55//x
mov x8,370//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,60//x
mov x8,370//y
bl fcircle

//nube5

ldr x10,=GREY_COLOR    

mov x14, 2    // alto
mov x15, 2    // ancho

mov x28, 585  // inicio (565 + 20 + 20 + 20)
mov x29, 625  // fin (605 + 20 + 20 + 20)
mov x16, 140  // y
mov x17, 2    // decrecimiento
bl fnube

mov x28, 593  // inicio (573 + 20 + 20 + 20)
mov x29, 619  // fin (599 + 20 + 20 + 20)
mov x16, 138  // y
bl fnube

mov x28, 595  // inicio (575 + 20 + 20 + 20)
mov x29, 621  // fin (601 + 20 + 20 + 20)
mov x16, 142  // y
bl fnube

mov x28, 593  // inicio (573 + 20 + 20 + 20)
mov x29, 619  // fin (599 + 20 + 20 + 20)
mov x16, 137  // y
mov x17, 3    // decrecimiento
bl fnube

mov x28, 593  // inicio (573 + 20 + 20 + 20)
mov x29, 619  // fin (599 + 20 + 20 + 20)
mov x16, 143  // y
mov x17, 3    // decrecimiento
bl fnube

mov x28, 585  // inicio (565 + 20 + 20 + 20)
mov x29, 625  // fin (545 + 20 + 20 + 20)
mov x16, 139  // y
bl fnube

mov x28, 595  // inicio (575 + 20 + 20 + 20)
mov x29, 605  // fin (555 + 20 + 20 + 20)
mov x16, 144  // y
mov x17, 3    // decrecimiento
bl fnube



bl edificios


br x27

//---------------------------------------------------//
clouds3:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,65//x
mov x8,370//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,70//x
mov x8,370//y
bl fcircle

//nube5

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 545 // inicio (525 + 20 + 20)
mov x29, 585 // fin (565 + 20 + 20)
mov x16, 140 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 553 // inicio (533 + 20 + 20)
mov x29, 579 // fin (559 + 20 + 20)
mov x16, 138 // y
bl fnube

mov x28, 555 // inicio (535 + 20 + 20)
mov x29, 581 // fin (561 + 20 + 20)
mov x16, 142 // y
bl fnube

mov x28, 553 // inicio (533 + 20 + 20)
mov x29, 579 // fin (559 + 20 + 20)
mov x16, 137 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 553 // inicio (533 + 20 + 20)
mov x29, 579 // fin (559 + 20 + 20)
mov x16, 143 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 545 // inicio (525 + 20 + 20)
mov x29, 585 // fin (545 + 20 + 20)
mov x16, 139 // y
bl fnube

mov x28, 555 // inicio (535 + 20 + 20)
mov x29, 575 // fin (555 + 20 + 20)
mov x16, 144 // y
mov x17, 3   // decrecimiento
bl fnube



bl edificios

br x27

//---------------------------------------------------//

clouds6:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,105//x
mov x8,380//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,110//x
mov x8,380//y
bl fcircle

//nube2
ldr x10,=GREY_COLOR 
mov x28,580  //inicio (600 - 20)
mov x29,620  //fin (640 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,140  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,588  //inicio (608 - 20)
mov x29,614  //fin (634 - 20)
mov x16,138  //y
bl fnube

mov x28,590  //inicio (610 - 20)
mov x29,616  //fin (636 - 20)
mov x16,142  //y
bl fnube

mov x28,588  //inicio (608 - 20)
mov x29,614  //fin (634 - 20)
mov x16,137  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,588  //inicio (608 - 20)
mov x29,614  //fin (634 - 20)
mov x16,143  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,580  //inicio (600 - 20)
mov x29,620  //fin (640 - 20)
mov x16,139  //y
bl fnube 

mov x28,590  //inicio (610 - 20)
mov x29,610  //fin (630 - 20)
mov x16,144  //y
mov x17,3    //decrecimiento
bl fnube
 
//nube3

ldr x10,=GREY_COLOR    // Load color value into x10

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 550 // inicio (570 - 20)
mov x29, 590 // fin (610 - 20)
mov x16, 120 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 558 // inicio (578 - 20)
mov x29, 584 // fin (604 - 20)
mov x16, 118 // y
bl fnube

mov x28, 560 // inicio (580 - 20)
mov x29, 586 // fin (606 - 20)
mov x16, 122 // y
bl fnube

mov x28, 558 // inicio (578 - 20)
mov x29, 584 // fin (604 - 20)
mov x16, 117 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 558 // inicio (578 - 20)
mov x29, 584 // fin (604 - 20)
mov x16, 123 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 550 // inicio (570 - 20)
mov x29, 590 // fin (610 - 20)
mov x16, 119 // y
bl fnube

mov x28, 560 // inicio (580 - 20)
mov x29, 580 // fin (600 - 20)
mov x16, 124 // y
mov x17, 3   // decrecimiento
bl fnube

//nube5

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 485 // inicio (505 - 20)
mov x29, 525 // fin (545 - 20)
mov x16, 140 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 493 // inicio (513 - 20)
mov x29, 519 // fin (539 - 20)
mov x16, 138 // y
bl fnube

mov x28, 495 // inicio (515 - 20)
mov x29, 521 // fin (541 - 20)
mov x16, 142 // y
bl fnube

mov x28, 493 // inicio (513 - 20)
mov x29, 519 // fin (539 - 20)
mov x16, 137 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 493 // inicio (513 - 20)
mov x29, 519 // fin (539 - 20)
mov x16, 143 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 485 // inicio (505 - 20)
mov x29, 525 // fin (545 - 20)
mov x16, 139 // y
bl fnube

mov x28, 495 // inicio (515 - 20)
mov x29, 515 // fin (535 - 20)
mov x16, 144 // y
mov x17, 3   // decrecimiento
bl fnube



bl edificios

br x27

//---------------------------------------------------//

clouds8:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,125//x
mov x8,380//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,130//x
mov x8,380//y
bl fcircle


//nube1

// mov x5,550//x
ldr x10,=GREY_COLOR 
mov x28,590  //inicio (610 - 20)
mov x29,630  //fin (650 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,120  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,598  //inicio (618 - 20)
mov x29,624  //fin (644 - 20)
mov x16,118  //y
bl fnube

mov x28,600  //inicio (620 - 20)
mov x29,626  //fin (646 - 20)
mov x16,122  //y
bl fnube

mov x28,598  //inicio (618 - 20)
mov x29,624  //fin (644 - 20)
mov x16,117  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,598  //inicio (618 - 20)
mov x29,624  //fin (644 - 20)
mov x16,123  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,590  //inicio (610 - 20)
mov x29,630  //fin (650 - 20)
mov x16,119  //y
bl fnube 

mov x28,600  //inicio (620 - 20)
mov x29,620  //fin (640 - 20)
mov x16,124  //y
mov x17,3    //decrecimiento
bl fnube

//nube2
ldr x10,=GREY_COLOR 
mov x28,540  //inicio (560 - 20)
mov x29,580  //fin (600 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,140  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,548  //inicio (568 - 20)
mov x29,574  //fin (594 - 20)
mov x16,138  //y
bl fnube

mov x28,550  //inicio (570 - 20)
mov x29,576  //fin (596 - 20)
mov x16,142  //y
bl fnube

mov x28,548  //inicio (568 - 20)
mov x29,574  //fin (594 - 20)
mov x16,137  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,548  //inicio (568 - 20)
mov x29,574  //fin (594 - 20)
mov x16,143  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,540  //inicio (560 - 20)
mov x29,580  //fin (600 - 20)
mov x16,139  //y
bl fnube 

mov x28,550  //inicio (570 - 20)
mov x29,570  //fin (590 - 20)
mov x16,144  //y
mov x17,3    //decrecimiento
bl fnube
 
//nube3

ldr x10,=GREY_COLOR    // Load color value into x10

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 510 // inicio (530 - 20)
mov x29, 550 // fin (570 - 20)
mov x16, 120 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 518 // inicio (538 - 20)
mov x29, 544 // fin (564 - 20)
mov x16, 118 // y
bl fnube

mov x28, 520 // inicio (540 - 20)
mov x29, 546 // fin (566 - 20)
mov x16, 122 // y
bl fnube

mov x28, 518 // inicio (538 - 20)
mov x29, 544 // fin (564 - 20)
mov x16, 117 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 518 // inicio (538 - 20)
mov x29, 544 // fin (564 - 20)
mov x16, 123 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 510 // inicio (530 - 20)
mov x29, 550 // fin (570 - 20)
mov x16, 119 // y
bl fnube

mov x28, 520 // inicio (540 - 20)
mov x29, 540 // fin (560 - 20)
mov x16, 124 // y
mov x17, 3   // decrecimiento
bl fnube

//nube5

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 445 // inicio (465 - 20)
mov x29, 485 // fin (505 - 20)
mov x16, 140 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 453 // inicio (473 - 20)
mov x29, 479 // fin (499 - 20)
mov x16, 138 // y
bl fnube

mov x28, 455 // inicio (475 - 20)
mov x29, 481 // fin (501 - 20)
mov x16, 142 // y
bl fnube

mov x28, 453 // inicio (473 - 20)
mov x29, 479 // fin (499 - 20)
mov x16, 137 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 453 // inicio (473 - 20)
mov x29, 479 // fin (499 - 20)
mov x16, 143 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 445 // inicio (465 - 20)
mov x29, 485 // fin (505 - 20)
mov x16, 139 // y
bl fnube

mov x28, 455 // inicio (475 - 20)
mov x29, 475 // fin (495 - 20)
mov x16, 144 // y
mov x17, 3   // decrecimiento
bl fnube

bl edificios

br x27
//---------------------------------------------------//

clouds9:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,135//x
mov x8,382//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,140//x
mov x8,382//y
bl fcircle

//nube1

// mov x5,550//x
ldr x10,=GREY_COLOR 
mov x28,570  //inicio (590 - 20)
mov x29,610  //fin (630 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,120  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,578  //inicio (598 - 20)
mov x29,604  //fin (624 - 20)
mov x16,118  //y
bl fnube

mov x28,580  //inicio (600 - 20)
mov x29,606  //fin (626 - 20)
mov x16,122  //y
bl fnube

mov x28,578  //inicio (598 - 20)
mov x29,604  //fin (624 - 20)
mov x16,117  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,578  //inicio (598 - 20)
mov x29,604  //fin (624 - 20)
mov x16,123  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,570  //inicio (590 - 20)
mov x29,610  //fin (630 - 20)
mov x16,119  //y
bl fnube 

mov x28,580  //inicio (600 - 20)
mov x29,600  //fin (620 - 20)
mov x16,124  //y
mov x17,3    //decrecimiento
bl fnube

//nube2
ldr x10,=GREY_COLOR 
mov x28,520  //inicio (540 - 20)
mov x29,560  //fin (580 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,140  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,528  //inicio (548 - 20)
mov x29,554  //fin (574 - 20)
mov x16,138  //y
bl fnube

mov x28,530  //inicio (550 - 20)
mov x29,556  //fin (576 - 20)
mov x16,142  //y
bl fnube

mov x28,528  //inicio (548 - 20)
mov x29,554  //fin (574 - 20)
mov x16,137  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,528  //inicio (548 - 20)
mov x29,554  //fin (574 - 20)
mov x16,143  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,520  //inicio (540 - 20)
mov x29,560  //fin (580 - 20)
mov x16,139  //y
bl fnube 

mov x28,530  //inicio (550 - 20)
mov x29,550  //fin (570 - 20)
mov x16,144  //y
mov x17,3    //decrecimiento
bl fnube
 
//nube3

ldr x10,=GREY_COLOR    // Load color value into x10

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 490 // inicio (510 - 20)
mov x29, 530 // fin (550 - 20)
mov x16, 120 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 498 // inicio (518 - 20)
mov x29, 524 // fin (544 - 20)
mov x16, 118 // y
bl fnube

mov x28, 500 // inicio (520 - 20)
mov x29, 526 // fin (546 - 20)
mov x16, 122 // y
bl fnube

mov x28, 498 // inicio (518 - 20)
mov x29, 524 // fin (544 - 20)
mov x16, 117 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 498 // inicio (518 - 20)
mov x29, 524 // fin (544 - 20)
mov x16, 123 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 490 // inicio (510 - 20)
mov x29, 530 // fin (550 - 20)
mov x16, 119 // y
bl fnube

mov x28, 500 // inicio (520 - 20)
mov x29, 520 // fin (540 - 20)
mov x16, 124 // y
mov x17, 3   // decrecimiento
bl fnube

//nube5

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 425 // inicio (445 - 20)
mov x29, 465 // fin (485 - 20)
mov x16, 140 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 433 // inicio (453 - 20)
mov x29, 459 // fin (479 - 20)
mov x16, 138 // y
bl fnube

mov x28, 435 // inicio (455 - 20)
mov x29, 461 // fin (481 - 20)
mov x16, 142 // y
bl fnube

mov x28, 433 // inicio (453 - 20)
mov x29, 459 // fin (479 - 20)
mov x16, 137 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 433 // inicio (453 - 20)
mov x29, 459 // fin (479 - 20)
mov x16, 143 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 425 // inicio (445 - 20)
mov x29, 465 // fin (485 - 20)
mov x16, 139 // y
bl fnube

mov x28, 435 // inicio (455 - 20)
mov x29, 455 // fin (475 - 20)
mov x16, 144 // y
mov x17, 3   // decrecimiento
bl fnube

bl edificios

br x27

//---------------------------------------------------//
clouds12:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,165//x
mov x8,385//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,170//x
mov x8,385//y
bl fcircle

//nube1

// mov x5,550//x
ldr x10,=GREY_COLOR 
mov x28,510  //inicio (530 - 20)
mov x29,550  //fin (570 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,120  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,518  //inicio (538 - 20)
mov x29,544  //fin (564 - 20)
mov x16,118  //y
bl fnube

mov x28,520  //inicio (540 - 20)
mov x29,546  //fin (566 - 20)
mov x16,122  //y
bl fnube

mov x28,518  //inicio (538 - 20)
mov x29,544  //fin (564 - 20)
mov x16,117  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,518  //inicio (538 - 20)
mov x29,544  //fin (564 - 20)
mov x16,123  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,510  //inicio (530 - 20)
mov x29,550  //fin (570 - 20)
mov x16,119  //y
bl fnube 

mov x28,520  //inicio (540 - 20)
mov x29,540  //fin (560 - 20)
mov x16,124  //y
mov x17,3    //decrecimiento
bl fnube

//nube2
ldr x10,=GREY_COLOR 
mov x28,460  //inicio (480 - 20)
mov x29,500  //fin (520 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,140  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,468  //inicio (488 - 20)
mov x29,494  //fin (514 - 20)
mov x16,138  //y
bl fnube

mov x28,470  //inicio (490 - 20)
mov x29,496  //fin (516 - 20)
mov x16,142  //y
bl fnube

mov x28,468  //inicio (488 - 20)
mov x29,494  //fin (514 - 20)
mov x16,137  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,468  //inicio (488 - 20)
mov x29,494  //fin (514 - 20)
mov x16,143  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,460  //inicio (480 - 20)
mov x29,500  //fin (520 - 20)
mov x16,139  //y
bl fnube 

mov x28,470  //inicio (490 - 20)
mov x29,490  //fin (510 - 20)
mov x16,144  //y
mov x17,3    //decrecimiento
bl fnube
 
//nube3

ldr x10,=GREY_COLOR    // Load color value into x10

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 430 // inicio (450 - 20)
mov x29, 470 // fin (490 - 20)
mov x16, 120 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 438 // inicio (458 - 20)
mov x29, 464 // fin (484 - 20)
mov x16, 118 // y
bl fnube

mov x28, 440 // inicio (460 - 20)
mov x29, 466 // fin (486 - 20)
mov x16, 122 // y
bl fnube

mov x28, 438 // inicio (458 - 20)
mov x29, 464 // fin (484 - 20)
mov x16, 117 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 438 // inicio (458 - 20)
mov x29, 464 // fin (484 - 20)
mov x16, 123 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 430 // inicio (450 - 20)
mov x29, 470 // fin (490 - 20)
mov x16, 119 // y
bl fnube

mov x28, 440 // inicio (460 - 20)
mov x29, 460 // fin (480 - 20)
mov x16, 124 // y
mov x17, 3   // decrecimiento
bl fnube

//nube4

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 540 // inicio (560 - 20)
mov x29, 580 // fin (600 - 20)
mov x16, 125 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 548 // inicio (568 - 20)
mov x29, 574 // fin (594 - 20)
mov x16, 123 // y
bl fnube

mov x28, 550 // inicio (570 - 20)
mov x29, 576 // fin (596 - 20)
mov x16, 127 // y
bl fnube

mov x28, 548 // inicio (568 - 20)
mov x29, 574 // fin (594 - 20)
mov x16, 122 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 548 // inicio (568 - 20)
mov x29, 574 // fin (594 - 20)
mov x16, 128 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 540 // inicio (560 - 20)
mov x29, 580 // fin (600 - 20)
mov x16, 124 // y
bl fnube

mov x28, 550 // inicio (570 - 20)
mov x29, 570 // fin (590 - 20)
mov x16, 129 // y
mov x17, 3   // decrecimiento
bl fnube

//nube5

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 365 // inicio (385 - 20)
mov x29, 405 // fin (425 - 20)
mov x16, 140 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 373 // inicio (393 - 20)
mov x29, 399 // fin (419 - 20)
mov x16, 138 // y
bl fnube

mov x28, 375 // inicio (395 - 20)
mov x29, 401 // fin (421 - 20)
mov x16, 142 // y
bl fnube

mov x28, 373 // inicio (393 - 20)
mov x29, 399 // fin (419 - 20)
mov x16, 137 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 373 // inicio (393 - 20)
mov x29, 399 // fin (419 - 20)
mov x16, 143 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 365 // inicio (385 - 20)
mov x29, 405 // fin (425 - 20)
mov x16, 139 // y
bl fnube

mov x28, 375 // inicio (395 - 20)
mov x29, 395 // fin (415 - 20)
mov x16, 144 // y
mov x17, 3   // decrecimiento
bl fnube

bl edificios

br x27

//------------------------------------------------------------------//
clouds15:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,195//x
mov x8,385//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,200//x
mov x8,385//y
bl fcircle


//nube1

// mov x5,550//x
ldr x10,=GREY_COLOR 
mov x28,450  //inicio (470 - 20)
mov x29,490  //fin (510 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,120  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,458  //inicio (478 - 20)
mov x29,484  //fin (504 - 20)
mov x16,118  //y
bl fnube

mov x28,460  //inicio (480 - 20)
mov x29,486  //fin (506 - 20)
mov x16,122  //y
bl fnube

mov x28,458  //inicio (478 - 20)
mov x29,484  //fin (504 - 20)
mov x16,117  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,458  //inicio (478 - 20)
mov x29,484  //fin (504 - 20)
mov x16,123  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,450  //inicio (470 - 20)
mov x29,490  //fin (510 - 20)
mov x16,119  //y
bl fnube 

mov x28,460  //inicio (480 - 20)
mov x29,480  //fin (500 - 20)
mov x16,124  //y
mov x17,3    //decrecimiento
bl fnube

//nube2
ldr x10,=GREY_COLOR 
mov x28,400  //inicio (420 - 20)
mov x29,440  //fin (460 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,140  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,408  //inicio (428 - 20)
mov x29,424  //fin (444 - 20)
mov x16,138  //y
bl fnube

mov x28,410  //inicio (430 - 20)
mov x29,426  //fin (446 - 20)
mov x16,142  //y
bl fnube

mov x28,408  //inicio (428 - 20)
mov x29,424  //fin (444 - 20)
mov x16,137  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,408  //inicio (428 - 20)
mov x29,424  //fin (444 - 20)
mov x16,143  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,400  //inicio (420 - 20)
mov x29,440  //fin (460 - 20)
mov x16,139  //y
bl fnube 

mov x28,410  //inicio (430 - 20)
mov x29,420  //fin (440 - 20)
mov x16,144  //y
mov x17,3    //decrecimiento
bl fnube
 
//nube3

ldr x10,=GREY_COLOR    // Load color value into x10

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 370 // inicio (390 - 20)
mov x29, 410 // fin (430 - 20)
mov x16, 120 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 378 // inicio (398 - 20)
mov x29, 404 // fin (424 - 20)
mov x16, 118 // y
bl fnube

mov x28, 380 // inicio (400 - 20)
mov x29, 406 // fin (426 - 20)
mov x16, 122 // y
bl fnube

mov x28, 378 // inicio (398 - 20)
mov x29, 404 // fin (424 - 20)
mov x16, 117 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 378 // inicio (398 - 20)
mov x29, 404 // fin (424 - 20)
mov x16, 123 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 370 // inicio (390 - 20)
mov x29, 410 // fin (430 - 20)
mov x16, 119 // y
bl fnube

mov x28, 380 // inicio (400 - 20)
mov x29, 400 // fin (420 - 20)
mov x16, 124 // y
mov x17, 3   // decrecimiento
bl fnube

//nube4

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 480 // inicio (500 - 20)
mov x29, 520 // fin (540 - 20)
mov x16, 125 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 488 // inicio (508 - 20)
mov x29, 514 // fin (534 - 20)
mov x16, 123 // y
bl fnube

mov x28, 490 // inicio (510 - 20)
mov x29, 516 // fin (536 - 20)
mov x16, 127 // y
bl fnube

mov x28, 488 // inicio (508 - 20)
mov x29, 514 // fin (534 - 20)
mov x16, 122 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 488 // inicio (508 - 20)
mov x29, 514 // fin (534 - 20)
mov x16, 128 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 480 // inicio (500 - 20)
mov x29, 520 // fin (540 - 20)
mov x16, 124 // y
bl fnube

mov x28, 490 // inicio (510 - 20)
mov x29, 510 // fin (530 - 20)
mov x16, 129 // y
mov x17, 3   // decrecimiento
bl fnube

//nube5

ldr x10,=GREY_COLOR
mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 305 // inicio (325 - 20)
mov x29, 345 // fin (365 - 20)
mov x16, 140 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 313 // inicio (333 - 20)
mov x29, 329 // fin (349 - 20)
mov x16, 138 // y
bl fnube

mov x28, 315 // inicio (335 - 20)
mov x29, 331 // fin (351 - 20)
mov x16, 142 // y
bl fnube

mov x28, 313 // inicio (333 - 20)
mov x29, 329 // fin (349 - 20)
mov x16, 137 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 313 // inicio (333 - 20)
mov x29, 329 // fin (349 - 20)
mov x16, 143 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 305 // inicio (325 - 20)
mov x29, 345 // fin (365 - 20)
mov x16, 139 // y
bl fnube

mov x28, 315 // inicio (335 - 20)
mov x29, 325 // fin (345 - 20)
mov x16, 144 // y
mov x17, 3   // decrecimiento
bl fnube

bl edificios

br x27

//---------------------------------------------------------------------//

clouds17:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,215//x
mov x8,383//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,220//x
mov x8,383//y
bl fcircle


//nube1

// mov x5,550//x
ldr x10,=GREY_COLOR 
mov x28,410  //inicio (430 - 20)
mov x29,450  //fin (470 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,120  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,418  //inicio (438 - 20)
mov x29,444  //fin (464 - 20)
mov x16,118  //y
bl fnube

mov x28,420  //inicio (440 - 20)
mov x29,446  //fin (466 - 20)
mov x16,122  //y
bl fnube

mov x28,418  //inicio (438 - 20)
mov x29,444  //fin (464 - 20)
mov x16,117  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,418  //inicio (438 - 20)
mov x29,444  //fin (464 - 20)
mov x16,123  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,410  //inicio (430 - 20)
mov x29,450  //fin (470 - 20)
mov x16,119  //y
bl fnube 

mov x28,420  //inicio (440 - 20)
mov x29,440  //fin (460 - 20)
mov x16,124  //y
mov x17,3    //decrecimiento
bl fnube

//nube2
ldr x10,=GREY_COLOR 
mov x28,360  //inicio (380 - 20)
mov x29,400  //fin (420 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,140  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,368  //inicio (388 - 20)
mov x29,384  //fin (404 - 20)
mov x16,138  //y
bl fnube

mov x28,370  //inicio (390 - 20)
mov x29,386  //fin (406 - 20)
mov x16,142  //y
bl fnube

mov x28,368  //inicio (388 - 20)
mov x29,384  //fin (404 - 20)
mov x16,137  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,368  //inicio (388 - 20)
mov x29,384  //fin (404 - 20)
mov x16,143  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,360  //inicio (380 - 20)
mov x29,400  //fin (420 - 20)
mov x16,139  //y
bl fnube 

mov x28,370  //inicio (390 - 20)
mov x29,380  //fin (400 - 20)
mov x16,144  //y
mov x17,3    //decrecimiento
bl fnube
 
//nube3

ldr x10,=GREY_COLOR    // Load color value into x10

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 330 // inicio (350 - 20)
mov x29, 370 // fin (390 - 20)
mov x16, 120 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 338 // inicio (358 - 20)
mov x29, 354 // fin (374 - 20)
mov x16, 118 // y
bl fnube

mov x28, 340 // inicio (360 - 20)
mov x29, 356 // fin (376 - 20)
mov x16, 122 // y
bl fnube

mov x28, 338 // inicio (358 - 20)
mov x29, 354 // fin (374 - 20)
mov x16, 117 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 338 // inicio (358 - 20)
mov x29, 354 // fin (374 - 20)
mov x16, 123 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 330 // inicio (350 - 20)
mov x29, 370 // fin (390 - 20)
mov x16, 119 // y
bl fnube

mov x28, 340 // inicio (360 - 20)
mov x29, 350 // fin (370 - 20)
mov x16, 124 // y
mov x17, 3   // decrecimiento
bl fnube

//nube4

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 440 // inicio (460 - 20)
mov x29, 480 // fin (500 - 20)
mov x16, 125 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 448 // inicio (468 - 20)
mov x29, 474 // fin (494 - 20)
mov x16, 123 // y
bl fnube

mov x28, 450 // inicio (470 - 20)
mov x29, 476 // fin (496 - 20)
mov x16, 127 // y
bl fnube

mov x28, 448 // inicio (468 - 20)
mov x29, 474 // fin (494 - 20)
mov x16, 122 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 448 // inicio (468 - 20)
mov x29, 474 // fin (494 - 20)
mov x16, 128 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 440 // inicio (460 - 20)
mov x29, 480 // fin (500 - 20)
mov x16, 124 // y
bl fnube

mov x28, 450 // inicio (470 - 20)
mov x29, 470 // fin (490 - 20)
mov x16, 129 // y
mov x17, 3   // decrecimiento
bl fnube

//nube5

ldr x10,=GREY_COLOR  
mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 265 // inicio (285 - 20)
mov x29, 305 // fin (325 - 20)
mov x16, 140 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 273 // inicio (293 - 20)
mov x29, 289 // fin (309 - 20)
mov x16, 138 // y
bl fnube

mov x28, 275 // inicio (295 - 20)
mov x29, 291 // fin (311 - 20)
mov x16, 142 // y
bl fnube

mov x28, 273 // inicio (293 - 20)
mov x29, 289 // fin (309 - 20)
mov x16, 137 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 273 // inicio (293 - 20)
mov x29, 289 // fin (309 - 20)
mov x16, 143 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 265 // inicio (285 - 20)
mov x29, 305 // fin (325 - 20)
mov x16, 139 // y
bl fnube

mov x28, 275 // inicio (295 - 20)
mov x29, 285 // fin (305 - 20)
mov x16, 144 // y
mov x17, 3   // decrecimiento
bl fnube

bl edificios

br x27

//---------------------------------------------------------------------//

clouds19:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,235//x
mov x8,380//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,240//x
mov x8,380//y
bl fcircle


//nube1

// mov x5,550//x
ldr x10,=GREY_COLOR 
mov x28,370  //inicio (390 - 20)
mov x29,410  //fin (430 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,120  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,378  //inicio (398 - 20)
mov x29,404  //fin (424 - 20)
mov x16,118  //y
bl fnube

mov x28,380  //inicio (400 - 20)
mov x29,406  //fin (426 - 20)
mov x16,122  //y
bl fnube

mov x28,378  //inicio (398 - 20)
mov x29,404  //fin (424 - 20)
mov x16,117  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,378  //inicio (398 - 20)
mov x29,404  //fin (424 - 20)
mov x16,123  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,370  //inicio (390 - 20)
mov x29,410  //fin (430 - 20)
mov x16,119  //y
bl fnube 

mov x28,380  //inicio (400 - 20)
mov x29,400  //fin (420 - 20)
mov x16,124  //y
mov x17,3    //decrecimiento
bl fnube

//nube2
ldr x10,=GREY_COLOR 
mov x28,320  //inicio (340 - 20)
mov x29,360  //fin (380 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,140  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,328  //inicio (348 - 20)
mov x29,344  //fin (364 - 20)
mov x16,138  //y
bl fnube

mov x28,330  //inicio (350 - 20)
mov x29,346  //fin (366 - 20)
mov x16,142  //y
bl fnube

mov x28,328  //inicio (348 - 20)
mov x29,344  //fin (364 - 20)
mov x16,137  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,328  //inicio (348 - 20)
mov x29,344  //fin (364 - 20)
mov x16,143  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,320  //inicio (340 - 20)
mov x29,360  //fin (380 - 20)
mov x16,139  //y
bl fnube 

mov x28,330  //inicio (350 - 20)
mov x29,340  //fin (360 - 20)
mov x16,144  //y
mov x17,3    //decrecimiento
bl fnube
 
//nube3

ldr x10,=GREY_COLOR    // Load color value into x10

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 290 // inicio (310 - 20)
mov x29, 330 // fin (350 - 20)
mov x16, 120 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 298 // inicio (318 - 20)
mov x29, 314 // fin (334 - 20)
mov x16, 118 // y
bl fnube

mov x28, 300 // inicio (320 - 20)
mov x29, 316 // fin (336 - 20)
mov x16, 122 // y
bl fnube

mov x28, 298 // inicio (318 - 20)
mov x29, 314 // fin (334 - 20)
mov x16, 117 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 298 // inicio (318 - 20)
mov x29, 314 // fin (334 - 20)
mov x16, 123 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 290 // inicio (310 - 20)
mov x29, 330 // fin (350 - 20)
mov x16, 119 // y
bl fnube

mov x28, 300 // inicio (320 - 20)
mov x29, 310 // fin (330 - 20)
mov x16, 124 // y
mov x17, 3   // decrecimiento
bl fnube

//nube4

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 400 // inicio (420 - 20)
mov x29, 440 // fin (460 - 20)
mov x16, 125 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 408 // inicio (428 - 20)
mov x29, 424 // fin (444 - 20)
mov x16, 123 // y
bl fnube

mov x28, 410 // inicio (430 - 20)
mov x29, 426 // fin (446 - 20)
mov x16, 127 // y
bl fnube

mov x28, 408 // inicio (428 - 20)
mov x29, 424 // fin (444 - 20)
mov x16, 122 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 408 // inicio (428 - 20)
mov x29, 424 // fin (444 - 20)
mov x16, 128 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 400 // inicio (420 - 20)
mov x29, 440 // fin (460 - 20)
mov x16, 124 // y
bl fnube

mov x28, 410 // inicio (430 - 20)
mov x29, 420 // fin (440 - 20)
mov x16, 129 // y
mov x17, 3   // decrecimiento
bl fnube

bl edificios

br x27

//---------------------------------------------------------------------//

clouds21:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,255//x
mov x8,378//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,260//x
mov x8,378//y
bl fcircle


//nube1

// mov x5,550//x
ldr x10,=GREY_COLOR 
mov x28,330  //inicio (350 - 20)
mov x29,370  //fin (390 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,120  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,338  //inicio (358 - 20)
mov x29,354  //fin (374 - 20)
mov x16,118  //y
bl fnube

mov x28,340  //inicio (360 - 20)
mov x29,356  //fin (376 - 20)
mov x16,122  //y
bl fnube

mov x28,338  //inicio (358 - 20)
mov x29,354  //fin (374 - 20)
mov x16,117  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,338  //inicio (358 - 20)
mov x29,354  //fin (374 - 20)
mov x16,123  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,330  //inicio (350 - 20)
mov x29,370  //fin (390 - 20)
mov x16,119  //y
bl fnube 

mov x28,340  //inicio (360 - 20)
mov x29,360  //fin (380 - 20)
mov x16,124  //y
mov x17,3    //decrecimiento
bl fnube

//nube2
ldr x10,=GREY_COLOR 
mov x28,280  //inicio (300 - 20)
mov x29,320  //fin (340 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,140  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,288  //inicio (308 - 20)
mov x29,304  //fin (324 - 20)
mov x16,138  //y
bl fnube

mov x28,290  //inicio (310 - 20)
mov x29,306  //fin (326 - 20)
mov x16,142  //y
bl fnube

mov x28,288  //inicio (308 - 20)
mov x29,304  //fin (324 - 20)
mov x16,137  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,288  //inicio (308 - 20)
mov x29,304  //fin (324 - 20)
mov x16,143  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,280  //inicio (300 - 20)
mov x29,320  //fin (340 - 20)
mov x16,139  //y
bl fnube 

mov x28,290  //inicio (310 - 20)
mov x29,300  //fin (320 - 20)
mov x16,144  //y
mov x17,3    //decrecimiento
bl fnube
 

//nube4

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 360 // inicio (380 - 20)
mov x29, 400 // fin (420 - 20)
mov x16, 125 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 368 // inicio (388 - 20)
mov x29, 384 // fin (404 - 20)
mov x16, 123 // y
bl fnube

mov x28, 370 // inicio (390 - 20)
mov x29, 386 // fin (406 - 20)
mov x16, 127 // y
bl fnube

mov x28, 368 // inicio (388 - 20)
mov x29, 384 // fin (404 - 20)
mov x16, 122 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 368 // inicio (388 - 20)
mov x29, 384 // fin (404 - 20)
mov x16, 128 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 360 // inicio (380 - 20)
mov x29, 400 // fin (420 - 20)
mov x16, 124 // y
bl fnube

mov x28, 370 // inicio (390 - 20)
mov x29, 390 // fin (410 - 20)
mov x16, 129 // y
mov x17, 3   // decrecimiento
bl fnube

bl edificios

br x27

//---------------------------------------------------------------------//
clouds23:
mov x27,lr

bl marcoventana
bl cielo
//luna
ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,275//x
mov x8,375//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,280//x
mov x8,375//y
bl fcircle


//nube1

// mov x5,550//x
ldr x10,=GREY_COLOR 
mov x28,290  //inicio (310 - 20)
mov x29,330  //fin (350 - 20)
mov x14,2    //alto
mov x15,2    //ancho
mov x16,120  //y
mov x17,2    //decrecimiento
bl fnube

mov x28,298  //inicio (318 - 20)
mov x29,314  //fin (334 - 20)
mov x16,118  //y
bl fnube

mov x28,300  //inicio (320 - 20)
mov x29,316  //fin (336 - 20)
mov x16,122  //y
bl fnube

mov x28,298  //inicio (318 - 20)
mov x29,314  //fin (334 - 20)
mov x16,117  //y
mov x17,3    //decrecimiento
bl fnube

mov x28,298  //inicio (318 - 20)
mov x29,314  //fin (334 - 20)
mov x16,123  //y
mov x17,3    //decrecimiento
bl fnube 

mov x28,290  //inicio (310 - 20)
mov x29,330  //fin (350 - 20)
mov x16,119  //y
bl fnube 

mov x28,300  //inicio (320 - 20)
mov x29,320  //fin (340 - 20)
mov x16,124  //y
mov x17,3    //decrecimiento
bl fnube

//nube4

ldr x10,=GREY_COLOR    

mov x14, 2   // alto
mov x15, 2   // ancho

mov x28, 320 // inicio (340 - 20)
mov x29, 360 // fin (380 - 20)
mov x16, 125 // y
mov x17, 2   // decrecimiento
bl fnube

mov x28, 328 // inicio (348 - 20)
mov x29, 344 // fin (364 - 20)
mov x16, 123 // y
bl fnube

mov x28, 330 // inicio (350 - 20)
mov x29, 346 // fin (366 - 20)
mov x16, 127 // y
bl fnube

mov x28, 328 // inicio (348 - 20)
mov x29, 344 // fin (364 - 20)
mov x16, 122 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 328 // inicio (348 - 20)
mov x29, 344 // fin (364 - 20)
mov x16, 128 // y
mov x17, 3   // decrecimiento
bl fnube

mov x28, 320 // inicio (340 - 20)
mov x29, 360 // fin (380 - 20)
mov x16, 124 // y
bl fnube

mov x28, 330 // inicio (350 - 20)
mov x29, 350 // fin (370 - 20)
mov x16, 129 // y
mov x17, 3   // decrecimiento
bl fnube

bl edificios

br x27

//----------------------------------
clouds26:
mov x27,lr

bl marcoventana
bl cielo

ldr x10,=WHITE_COLOR
mov x11,100//r
mov x9,305//x
mov x8,373//y
bl fcircle

ldr x10,=NIGHT_BLUE
mov x11,100//r
mov x9,310//x
mov x8,373//y
bl fcircle

bl edificios

br x27

//-----------------------------------------------------
clouds28:
mov x27,lr

bl marcoventana
bl cielo2
bl edificios

br x27
//----------------------------------------------------------//

clouds30:
mov x27,lr

bl marcoventana
bl cielo3//3
//sol
ldr x10,=MORNING_SUN1
mov x11,100//r
mov x9,55//x
mov x8,370//y
bl fcircle
bl edificiostarde

br x27

//-------------------------------------------------------------//
clouds33:
mov x27,lr

bl marcoventana
bl cielo6//m
//luna
ldr x10,=DAWN_ORANGE
mov x11,100//r
mov x9,95//x
mov x8,378//y
bl fcircle
bl edificiostarde

br x27

//---------------------------------------------------------//
clouds35:
mov x27,lr

bl marcoventana
bl cielodia
//sol
ldr x10,=MORNING_SUN2
mov x11,100//r
mov x9,115//x
mov x8,380//y
bl fcircle
bl edificiosdia


br x27

//---------------------------------------------------------//
clouds37:
mov x27,lr

bl marcoventana
bl cielodia//d
//luna
ldr x10,=YELLOW_COLOR
mov x11,100//r
mov x9,135//x
mov x8,382//y
bl fcircle
bl edificiosdia


br x27

//---------------------------------------------------------//
clouds39:
mov x27,lr

bl marcoventana
bl cielodia//d
//luna
ldr x10,=YELLOW_COLOR
mov x11,100//r
mov x9,155//x
mov x8,385//y
bl fcircle
bl edificiosdia


br x27

//---------------------------------------------------------//
clouds41:
mov x27,lr

bl marcoventana
bl cielodia//d
//luna
ldr x10,=YELLOW_COLOR
mov x11,100//r
mov x9,175//x
mov x8,385//y
bl fcircle
bl edificiosdia


br x27

//---------------------------------------------------------//
clouds42:
mov x27,lr

bl marcoventana
bl cielodia//d
//luna
ldr x10,=YELLOW_COLOR
mov x11,100//r
mov x9,185//x
mov x8,385//y
bl fcircle
bl edificiosdia


br x27

//---------------------------------------------------------//
clouds44:
mov x27,lr

bl marcoventana
bl cielodia//d
//luna
ldr x10,=YELLOW_COLOR
mov x11,100//r
mov x9,205//x
mov x8,385//y
bl fcircle
bl edificiosdia


br x27

//---------------------------------------------------------//
clouds46:
mov x27,lr

bl marcoventana
bl cielodia//d
//luna
ldr x10,=YELLOW_COLOR
mov x11,100//r
mov x9,225//x
mov x8,383//y
bl fcircle
bl edificiosdia


br x27

//---------------------------------------------------------//
clouds48:
mov x27,lr

bl marcoventana
bl cielodia//d
//luna
ldr x10,=YELLOW_COLOR
mov x11,100//r
mov x9,245//x
mov x8,380//y
bl fcircle
bl edificiosdia


br x27

//---------------------------------------------------------//
clouds50:
mov x27,lr

bl marcoventana
bl cielo7//d
//luna
ldr x10,=YELLOW_COLOR
mov x11,100//r
mov x9,265//x
mov x8,378//y
bl fcircle
bl edificiosdia


br x27

//---------------------------------------------------------//
clouds52:
mov x27,lr

bl marcoventana
bl cielo5//d
//luna
ldr x10,=MORNING_SUN2
mov x11,100//r
mov x9,285//x
mov x8,375//y
bl fcircle
bl edificiostarde


br x27

//---------------------------------------------------------//
clouds54:
mov x27,lr

bl marcoventana
bl cielo3//d
ldr x10,=DAWN_ORANGE
mov x11,100//r
mov x9,305//x
mov x8,373//y
bl fcircle
bl edificiostarde


br x27

//---------------------------------------------------------//
clouds56:
mov x27,lr

bl marcoventana
bl cielo2//d
ldr x10,=MORNING_SUN1
mov x11,100//r
mov x9,315//x
mov x8,373//y
ldr x10,=GREY_COLOR
mov x11,100//r
mov x9,320//x
mov x8,373//y
bl fcircle
bl fcircle
bl edificiostarde


br x27






