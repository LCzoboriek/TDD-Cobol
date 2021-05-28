       IDENTIFICATION DIVISION.
       PROGRAM-ID. main-program.
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-COUNTER UNSIGNED-INT.
           01 WS-NUM UNSIGNED-INT.
           01 WS-RESULT UNSIGNED-INT.
           01 WS-NAME PIC X(10).
           01 WS-GREETER PIC X(50).
       PROCEDURE DIVISION.
           MOVE 0 TO WS-RESULT.
           PERFORM INCREMENT 3 TIMES.
           PERFORM SUBTRACTION 1 TIMES.
           MOVE "STEPHANIE" TO WS-NAME.
           PERFORM BIRTHDAY 1 TIMES.
           GOBACK.

       INCREMENT.
           MOVE WS-RESULT TO WS-NUM.
           CALL "increment" USING WS-NUM WS-RESULT.
           DISPLAY WS-RESULT.

       SUBTRACTION.
           MOVE WS-RESULT TO WS-NUM.
           CALL 'subtract' USING WS-NUM WS-RESULT.
           DISPLAY WS-RESULT.

       BIRTHDAY.
           CALL "birthday" USING WS-NAME WS-GREETER.
           DISPLAY WS-GREETER.
           
