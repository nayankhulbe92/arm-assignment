  PRESERVE8
     THUMB
 AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	MOV r2,#5 ;move 5 to r2
	MOV r4,#3 ;move 3 to r4
	MOV r3,#0 ;move 0 to r3
;loop CMP r2,r4 ;compare r4 with r2
	CMP r2,r4
	ITTEE GT  
	SUBGT r2,r2,r4 ;if r2>r4 sub r4 from r2 and store the result in r2 
	ADDGT r3,#1   ; and store 1 to r3
	SUBLE r4,r4,r2  ; else if r2<r4 sub r2 from r4 and store the result in r4
	ADDLE r3,#2     ; and store 2 in r3
	;BNE loop    ; branch if not equal
stop B stop ; stop program
     ENDFUNC
     END
