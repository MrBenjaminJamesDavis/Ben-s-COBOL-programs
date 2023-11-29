      *SOURCE FORMAT FREE
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. litl-game.
       AUTHOR. ben-james-davis.
       DATE-WRITTEN. 29th-november-2023.

       DATA DIVISION.
        WORKING-STORAGE SECTION. 
         01 play-game PIC A(1) VALUE 'Y'.
         01 correct-guess PIC 9 VALUE 0.
         01 guess-count PIC 99 VALUE 0.
         01 guess PIC 9 VALUE ZERO.
         01 my-number PIC 9 VALUE 5.

       PROCEDURE DIVISION.

         BB-PARA.
           DISPLAY "Let's play a little game. I think of a number".
           DISPLAY "between 1 and 8 and you have to guess it!".
           DISPLAY "OK, I picked a number.".
           MOVE 0 TO correct-guess.
           MOVE 0 TO guess-count.
           PERFORM CC-PARA UNTIL correct-guess NOT = 0.
     
         CC-PARA.
           DISPLAY "Enter guess #" guess-count.
           ACCEPT guess.
           IF guess = my-number THEN
              MOVE 1 TO correct-guess
              MOVE 0 TO guess-count 
              DISPLAY "You are right, my number is " my-number
           ELSE
              ADD 1 TO guess-count
              IF guess > my-number THEN
                 DISPLAY "Too big!"
              ELSE IF guess < my-number THEN
                 DISPLAY "Too small!"
              END-IF
           END-IF.

         AA-PARA.
           DISPLAY "Would you like to play another game? (Y/N)".
           ACCEPT play-game.
           PERFORM BB-PARA UNTIL play-game NOT = 'Y'.

           STOP RUN.
