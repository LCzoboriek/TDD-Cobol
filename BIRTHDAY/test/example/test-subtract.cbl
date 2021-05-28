       IDENTIFICATION DIVISION.
       PROGRAM-ID. 'test-subtract'.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-RESULT UNSIGNED-INT.
       PROCEDURE DIVISION.
           CALL "subtract" USING 1 WS-RESULT.
           CALL "assert-equals" USING WS-RESULT 0.
           