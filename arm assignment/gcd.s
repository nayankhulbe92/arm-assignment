  PRESERVE8
     THUMB
 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r2,#16  ;move 16 to r2
	MOV r4,#8   ;move 8 to r4
loop CMP r2,r4      ;compare r4 and r2
	CMP r2,r4   ;
	ITE GT
	SUBGT r2,r2,r4   ;if r2>r4  subtract r4 from r2 and store in r2
	SUBLE r4,r4,r2  ;else if r2<=r4 subtract r2 from r4 and store in r4
        BNE loop      ;branch if not  equal
stop B stop ; stop program
     ENDFUNC
     END
