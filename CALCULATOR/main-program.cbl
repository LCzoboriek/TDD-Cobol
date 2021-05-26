      * main-program.cbl
       IDENTIFICATION DIVISION.
       PROGRAM-ID. main-program.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-SUM UNSIGNED-INT.
       PROCEDURE DIVISION.
           CALL "add" USING 1 2 WS-SUM.
           DISPLAY WS-SUM.
           CALL "multiply" USING 1 3 WS-SUM.
           DISPLAY WS-SUM.
           CALL "square" USING 3 WS-SUM. 
           DISPLAY WS-SUM. 
