#include<p18f4550.inc>

		org		0x00
		goto	start
		org		0x08
		retfie	
		org		0x18
		retfie


n		equ		D'7'
lp_cnt	set		0x01


;insert program template


start	movlw	n	
		movwf	lp_cnt,A
loop	rlncf	0x10,F,A
		decfsz	lp_cnt,F,A
		goto	loop
		nop
		end

		









