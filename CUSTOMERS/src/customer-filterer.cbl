       IDENTIFICATION DIVISION.
       PROGRAM-ID. customer-filterer.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT F-CUSTOMER-FILE ASSIGN TO 'customers.dat' 
           ORGANIZATION IS LINE SEQUENTIAL.
           SELECT F-CARDS-FILE ASSIGN TO 'cards.dat'
           ORGANIZATION IS LINE sequential.
       DATA DIVISION.
       FILE SECTION.
           FD F-CUSTOMER-FILE.
           01 PERSON. 
               05 PERSON-NAME PIC X(40).
               05 PERSON-ADDRESS PIC X(100).
               05 PERSON-DOB.
                   10 DOB-YEAR PIC X(4).
                   10 YEAR-MON-SEPERATOR PIC X.
                   10 DOB-MON-DAY.
                       15 DOB-MON PIC 9(2).
                       15 MON-DAY-SEPERATOR PIC X.
                       15 DOB-DAY PIC 9(2).
               05 PERSON-JOB PIC X(60).
           FD F-CARDS-FILE.
           01 CARD-PERSON.
               05 CARD-PERSON-NAME PIC X(40).
               05 CARD-PERSON-ADDRESS PIC X(100).
               05 CARD-GREETING PIC X(56).

       WORKING-STORAGE SECTION.
           01 WS-FILE-IS-END PIC 9.
       LINKAGE SECTION.
           01 LS-TODAY.
               05 TODAY-MON PIC 9(2).
               05 MON-DAY-SEPERATOR PIC X.
               05 TODAY-DAY PIC 9(2).

       PROCEDURE DIVISION USING LS-TODAY.
           MOVE 0 TO WS-FILE-IS-END.
           OPEN INPUT F-CUSTOMER-FILE.
           OPEN EXTEND F-CARDS-FILE.
           PERFORM UNTIL WS-FILE-IS-END = 1
             READ F-CUSTOMER-FILE
                 NOT AT END
                     IF DOB-MON-DAY = LS-TODAY
                       MOVE PERSON-NAME TO CARD-PERSON-NAME
                       MOVE PERSON-ADDRESS TO CARD-PERSON-ADDRESS
                       STRING 'Happy Birthday, ' PERSON-NAME INTO
                           CARD-GREETING
                       END-STRING
                       WRITE CARD-PERSON
                       END-WRITE
                     END-IF
                 AT END
                     MOVE 1 TO WS-FILE-IS-END
             END-READ
           END-PERFORM.
           CLOSE F-CUSTOMER-FILE.
           CLOSE F-CARDS-FILE.
