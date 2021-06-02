       IDENTIFICATION DIVISION.
       PROGRAM-ID. data-classification.
       AUTHOR. Luke Czoboriek.
       DATE-WRITTEN. 1 June 2021.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
      *    This classification is stating anything through a to d is a
      *    passing score
           CLASS PassingScore IS "A" THRU "C","D".
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Age PIC 99 VALUE 0.
       01 GRADE PIC 99 VALUE 0.
       01 SCORE PIC X(1) VALUE "B".
       01 CANVOTEFLAG PIC 9 VALUE 0.
      * You can use 88 for conditional values on variables
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
      * This variable we are going to use for EVALUATE
       01 TestNumber PIC X.
      * You can use 88 for multiple values stored in one variable
           88 IsPrime VALUE "1","3","5","7".
           88 IsOdd VALUE "1","3","5","7", "9".
           88 IsEven VALUE "2","4","6","8".
           88 LessThan5 VALUE "1" THRU "4".
           88 ANumber VALUE "0" THRU "9".
       PROCEDURE DIVISION.
       DISPLAY "ENTER AGE: " WITH NO ADVANCING

       ACCEPT Age
       IF Age > 18 THEN

           DISPLAY "YOU CAN VOTE"
       ELSE 
           DISPLAY "YOU CANNOT VOTE"
       END-IF.

       IF Score is PassingScore THEN
           DISPLAY "You passed"
       ELSE
           DISPLAY "You failed"
       END-IF.

      * Built in classifications Numeric Alphabetic Alphabetic Lower/Upper
       IF Score IS NOT NUMERIC THEN
           DISPLAY "Not a number"
       END-IF.

       IF Age > 18 THEN 
           SET CanVote TO TRUE
       ELSE
           SET CantVote TO TRUE
       END-IF.

           DISPLAY "VOTE " CanVoteFlag. 
           DISPLAY "ENTER SINGLE NUMBER OR X TO EXIT: "
               ACCEPT TestNumber
           PERFORM UNTIL NOT ANumber
               EVALUATE TRUE 
                   WHEN IsPrime DISPLAY "Prime"
                   WHEN IsOdd DISPLAY "Odd"
                   WHEN IsEven DISPLAY "Even"
                   WHEN LessThan5 DISPLAY "LessThan5"
                   WHEN OTHER DISPLAY "Default Action"
               END-EVALUATE
               ACCEPT TestNumber
           END-PERFORM
       STOP RUN.
