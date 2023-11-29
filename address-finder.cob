000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. adress-finder.
000003 AUTHOR. ben-james-davis.
000004 DATE-WRITTEN. 28th-november-2023.
000005
000006 DATA DIVISION.
000007  WORKING-STORAGE SECTION. 
000008
000009  01 user-name PIC A(30) VALUE "Ben James Davis".
000010
000011  01 user-address.
000012   02 house-number PIC 999 VALUE 511.
000013   02 street-name PIC A(30) VALUE "Loampit Vale".
000014   02 city-name PIC A(15) VALUE "London".
000015   02 county-name PIC A(30) VALUE "Lewisham".
000016   02 postcode PIC X(9) VALUE "SE13 7SD".
000017
000018 PROCEDURE DIVISION.
000019     DISPLAY "Name: " user-name.
000020     DISPLAY "Address: " user-address.
000021     DISPLAY "You live in " city-name.
000022     STOP RUN.
