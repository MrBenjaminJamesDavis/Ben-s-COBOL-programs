      *SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. reading-files.
       AUTHOR. ben-james-davis.
       DATE-WRITTEN. 30th-november-2023.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL. 
           SELECT my-data-file ASSIGN TO "my-data.txt"
              ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
        FD my-data-file.       
        01 line-one.
         02 first-name   PIC X(10).
         02 last-name    PIC X(15).
         02 age          PIC 999.
         02 city         PIC X(15).
       WORKING-STORAGE SECTION. 
        01 end-of-file   PIC A(1) VALUE 'F'.
        01 lines-in-file PIC 9 VALUE ZERO.

       PROCEDURE DIVISION.
           PERFORM OPEN-FILE-PARA.
           PERFORM READ-FILE-PARA UNTIL end-of-file = 'T'.
           PERFORM CLOSE-FILE-PARA.

           STOP RUN.
       
       OPEN-FILE-PARA.
           OPEN INPUT my-data-file.
           READ my-data-file
              AT END
                 MOVE 'T' TO end-of-file
              NOT AT END
                 COMPUTE lines-in-file = lines-in-file + 1
           END-READ.

       READ-FILE-PARA.
           DISPLAY "First name: " first-name.
           DISPLAY "Last name: " last-name.
           DISPLAY "Age: " age.
           DISPLAY "City: " city.

           READ my-data-file
              AT END
                 MOVE 'T' TO end-of-file
              NOT AT END
                 COMPUTE lines-in-file = lines-in-file + 1
           END-READ.

       CLOSE-FILE-PARA.
           DISPLAY "Number of lines: " lines-in-file.
           CLOSE my-data-file.
