       IDENTIFICATION DIVISION.
       PROGRAM-ID. birthday.
       DATA DIVISION.
           LINKAGE SECTION.
           01 WS-NAME PIC X(10).
           01 WS-RESULT PIC X(50).
       PROCEDURE DIVISION USING WS-NAME, WS-RESULT.
           STRING "HAPPY BIRTHDAY " WS-NAME INTO WS-RESULT
           END-STRING.
      *     DISPLAY "What is your name? ".
      *     ACCEPT WS-NAME.
      *     DISPLAY "HAPPY BIRTHDAY " WS-NAME.
           