000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. my-first-cobol-code.
000003 AUTHOR. ben-james-davis.
000004 DATE-WRITTEN. 27th November 2023.
000005 ENVIRONMENT DIVISION.
000006 DATA DIVISION.
000007  WORKING-STORAGE SECTION.
000008   01 greeting PIC X(20) VALUE "Hello world!".
000009 PROCEDURE DIVISION.
000010*    This program will output 'Hello world!' to the user followed
000011*    by 'This is Ben.'
000012     DISPLAY greeting.
000013     MOVE "This is Ben." TO greeting.
000014     DISPLAY greeting.
000015     STOP RUN.
