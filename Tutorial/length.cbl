       IDENTIFICATION DIVISION.
       PROGRAM-ID. apple.
       AUTHOR. Luke Czoboriek.
       DATE-WRITTEN. 1 June 2021.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
           
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 WS-WORD PIC X(20).
           01 WS-PROGRESS PIC X(20).


       PROCEDURE DIVISION.
           MOVE 'Apple' to WS-WORD.
           MOVE FUNCTION TRIM(WS-WORD) TO WS-WORD.
           MOVE FUNCTION LENGTH(WS-WORD) TO WS-PROGRESS.
           DISPLAY WS-PROGRESS.

       

       STOP RUN.
