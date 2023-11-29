000001 IDENTIFICATION DIVISION. 
000002 PROGRAM-ID. loops.
000003 AUTHOR. ben-james-davis.
000004 DATE-WRITTEN. 29th-november-2023.
000005
000006 DATA DIVISION. 
000007  WORKING-STORAGE SECTION.
000009   01 ny-number PIC 99 VALUE 10.
000010   01 counter PIC 99 VALUE 1.
000011
000012 PROCEDURE DIVISION.
000013   AA-PARA.
000014     PERFORM BB-PARA UNTIL counter >= 10.
000015
000016     STOP RUN.
000017        
000018   BB-PARA.
000019     DISPLAY "The counter is at: " counter.
000020     ADD 1 TO counter.