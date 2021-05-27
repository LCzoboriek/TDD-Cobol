       IDENTIFICATION DIVISION.
       PROGRAM-ID. main-program.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-NAME PIC X(20).
           01 WS-PRONOUN-NOM PIC X(4).
           01 WS-PRONOUN-OBJ PIC X(4).
       PROCEDURE DIVISION.
           DISPLAY 'INPUT YOUR NAME: '
           ACCEPT WS-NAME. 
           DISPLAY 'What is your nominative pronoun? '
           ACCEPT WS-PRONOUN-NOM.
           DISPLAY 'What is your objective pronoun? '
           ACCEPT WS-PRONOUN-OBJ.

           CALL 'pronoun-writer' USING WS-NAME WS-PRONOUN-NOM 
           WS-PRONOUN-OBJ.
