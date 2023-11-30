      *SOURCE FORMAT FREE
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. litl-game.
       AUTHOR. ben-james-davis.
       DATE-WRITTEN. 30th-november-2023.

       DATA DIVISION.
        WORKING-STORAGE SECTION. 
      * A '0' indicates a boolean 'False' and a '1' indicates a boolean
      * 'True'.

      * Boolean values:
         01 play-game PIC 9 VALUE 1.
         01 correct-guess PIC 9 VALUE 0.
         01 first-iteration PIC 9 VALUE 1.

      * Numerical values:
         01 my-number PIC 9 VALUE 5.
         01 guess-count PIC 9 VALUE 1.

      * Numerical values initialized as Null values:
         01 guess PIC 9 VALUE ZERO.
                 
       PROCEDURE DIVISION.     
         AA-PARA.
           PERFORM BB-PARA UNTIL play-game = 0

           STOP RUN.

         BB-PARA.
           IF first-iteration = 1 THEN
              DISPLAY "Would you like to play a game?"
              DISPLAY "(0 = No, 1 = Yes)"
              ACCEPT play-game
              MOVE 0 TO first-iteration
              IF play-game NOT = 0 THEN         
               PERFORM CC-PARA UNTIL play-game = 0
               MOVE 1 TO play-game 
              END-IF
           ELSE
              MOVE 0 TO play-game
           END-IF.
           
         CC-PARA.
           DISPLAY "I think of a number between 1 and 8. Can you guess".
           DISPLAY "my number?"
           MOVE 0 TO correct-guess.
           MOVE 1 TO guess-count.
           PERFORM DD-PARA UNTIL correct-guess = 1.
           DISPLAY "Would you like to keep playing the game?".
           DISPLAY "(0 = No, 1 = Yes)".
           ACCEPT play-game.

         DD-PARA.
           DISPLAY "Enter guess #" guess-count.
           ADD 1 TO guess-count.
           ACCEPT guess.
           IF guess = my-number THEN
              DISPLAY "Your guess is correct!"
              MOVE 1 TO correct-guess
           ELSE
              IF guess < my-number  THEN         
                 DISPLAY "Your guess is too low. . ."
              ELSE IF guess > my-number THEN
                 DISPLAY "Your guess is too high. . ."
              END-IF
           END-IF.
