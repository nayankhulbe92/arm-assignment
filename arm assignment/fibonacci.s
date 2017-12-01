	PRESERVE8
    THUMB
	AREA     appcode, CODE, READONLY
    EXPORT __main
	ENTRY 
__main  FUNCTION
	; FIBONACCI SERIES
    MOV R0,#0    ;move 0 to r0
    MOV R1,#1    ;move 1 to r1
    MOV R3,#10   ;move 10 to r3
    MOV R4,#0    ;move 0 to r4
    MOV R5,#0x20000000  ;move the address 0x20000000 to r5
    ADD R4,R0,R1  ;add r0 and r1 
loop1 CMP R4,R3   ;compare r3 and r4
    BLE LOOP     ;branch if less than or equal
    B stop        
LOOP STR R4,[R5];  ;store  the value at r4 to address at r5
    MOV R0,R1     ;move r1 to r0
    MOV R1,R4     ;move r4 to r1
    ADD R4,R0,R1  ;add r0 and r1 and store the value at r4
	B loop1   
stop    B stop 
        ENDFUNC 
        END
