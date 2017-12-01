  PRESERVE8
     THUMB
 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r2,#6  ;move 6 to r2
	MOV r4,#4  ;move 4 to r4
	MOV r5,#8  ;move 8 to r5
	MOV r6,#0  ;move 0 to r6
	MOV r1,#0x20000000 ;move address to r5
	CMP r2,r4   ;compare r2 and r4
	STRLT r4,[r1]  ;store value of r4 at address in register r1 if r2<r4
	STRGT r2,[r1]  ;store value of r2 at address in register r1 if r2>r4
	LDR r6,[r1]    ;load value of address at r1 to r6
	CMP r6,r5      ;compare r6 and r5
	MOV r6,r5      ;move r5 to r6 
stop B stop ; stop program
     ENDFUNC
     END
