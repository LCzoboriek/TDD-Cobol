       IDENTIFICATION DIVISION.
       PROGRAM-ID. square.
       DATA DIVISION.
           LINKAGE SECTION. 
           01 LS-NUM-1 UNSIGNED-INT.
           01 LS-SUM UNSIGNED-INT.
       PROCEDURE DIVISION USING LS-NUM-1 LS-SUM.
           CALL "multiply" USING LS-NUM-1 LS-NUM-1 LS-SUM.
           
           