       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-fizzbuzz.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 WS-RESULT PIC AAAAA.
       PROCEDURE DIVISION.

      *     OUTPUT-EQUALS-TO-FIZZ-IF-DIV-BY-3-0-LEFT.
           CALL 'fizzbuzz' USING 3 WS-RESULT.
           CALL 'assert-equals' USING 'FIZZ' WS-RESULT.
      *     OUTPUT EQUALS TO BUZZ IF DIV BY 5 WITH 0 LEFT.
           MOVE "" TO WS-RESULT
           CALL 'fizzbuzz' USING 5 WS-RESULT.
           CALL 'assert-equals' USING 'BUZZ' WS-RESULT.
      *     OUT PUT EQUALS FIZZBUZZ IF DIV BY 15 WITH 0 LEFT.
           MOVE "" TO WS-RESULT
           CALL 'fizzbuzz' USING 15 WS-RESULT.
           CALL 'assert-equals' USING 'FIZZBUZZ' WS-RESULT.
           