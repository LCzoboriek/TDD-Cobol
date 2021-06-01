       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. coboltut.
       AUTHOR. Luke Czoboriek.
       DATE-WRITTEN. 1 June 2021.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 UserName PIC X(30) VALUE "YOU.".
       01 NUM1 PIC 9 VALUE ZEROS.
       01 NUM2 PIC 9 VALUE ZEROS.
       01 Total PIC 99 VALUE 0.
       01 SSNum.
           02 SSArea PIC 999.
           02 SSGroup PIC 99.
           02 SSSerial PIC 9999.
       01 PIValue CONSTANT AS 3.14.


       PROCEDURE DIVISION.
       DISPLAY "WHAT IS YOUR NAME " WITH NO ADVANCING
       ACCEPT UserName
       DISPLAY "HELLO " UserName

       MOVE ZERO TO UserName
       DISPLAY UserName
       DISPLAY "ENTER 2 VALUES TO SUM "
       ACCEPT NUM1
       ACCEPT NUM2
       COMPUTE Total = NUM1 + NUM2
       Display NUM1 " + " NUM2 " = " Total
       DISPLAY "ENTER YOUR SS NUMBER"
       ACCEPT SSNum
       DISPLAY "Area " SSArea

       STOP RUN.
