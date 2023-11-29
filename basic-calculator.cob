000001 IDENTIFICATION DIVISION. 
000002 PROGRAM-ID. basic-calculator.
000003 AUTHOR. ben-james-davis.
000004 DATE-WRITTEN. 28th-november-2023.
000005
000006 DATA DIVISION.
000007  WORKING-STORAGE SECTION.
000008   01 first-num PIC 999 VALUE ZERO.
000009   01 second-num PIC 999 VALUE ZERO.
000010   01 result PIC 999 VALUE ZERO.
000011
000012 PROCEDURE DIVISION.
000013     DISPLAY "Enter first number: " WITH NO ADVANCING.
000014     ACCEPT first-num.
000015     DISPLAY "Enter second number: " WITH NO ADVANCING.
000016     ACCEPT second-num.
000017     COMPUTE result = first-num + second-num.
000018     DISPLAY "The result is: " result.
000019     ADD first-num 5 GIVING result.
000020     DISPLAY "The first number add five is: " result.
000021
000022     STOP RUN.
