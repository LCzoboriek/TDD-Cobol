       IDENTIFICATION DIVISION.
       PROGRAM-ID. customer-filterer.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT F-CUSTOMER-FILE ASSIGN TO 'customers.dat' 
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT F-CARDS-FILE ASSIGN TO 'cards.dat'
               ORGANIZATION IS LINE SEQUENTIAL.
           SELECT F-TAXDAY-FILE ASSIGN TO 'cards-tax-day.dat'
               ORGANIZATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
           FD F-CUSTOMER-FILE.
           01 PERSON. 
               05 PERSON-NAME PIC X(40).
               05 PERSON-ADDRESS PIC X(100).
               05 PERSON-DOB.
                   10 DOB-YEAR PIC 9(4).
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
           FD F-TAXDAY-FILE.
           01 TAX-CARDS-PERSON.
               05 TAX-CARDS-PERSON-NAME PIC X(40).
               05 TAX-CARDS-PERSON-ADDRESS PIC X(100).
               05 TAX-CARDS-GREETING PIC X(56).
       WORKING-STORAGE SECTION.
           01 WS-FILE-IS-END PIC 9.
           01 WS-DATE PIC 9(8).
       LINKAGE SECTION.
           01 LS-TODAY.
               05 LS-TODAY-MON PIC 9(2).
               05 LS-MON-DAY-SEPERATOR PIC X.
               05 LS-TODAY-DAY PIC 9(2).
           01 LS-TODAY-YEAR PIC 9999.
           

       PROCEDURE DIVISION USING LS-TODAY, LS-TODAY-YEAR.
           MOVE 0 TO WS-FILE-IS-END.
           OPEN INPUT F-CUSTOMER-FILE.
           OPEN EXTEND F-CARDS-FILE.
           OPEN EXTEND F-TAXDAY-FILE.
           

           IF LS-TODAY = "04-06"
               OPEN EXTEND F-TAXDAY-FILE
               PERFORM TAX-DAY
           END-IF.
           PERFORM BIRTHDAY.
           

           TAX-DAY SECTION.
          
           PERFORM UNTIL WS-FILE-IS-END = 1
           READ F-CUSTOMER-FILE
               NOT AT END
                   IF LS-TODAY-YEAR - DOB-YEAR >= 18 AND
                   DOB-MON >= LS-TODAY-MON AND
                   DOB-DAY >= LS-TODAY-DAY
                       MOVE PERSON-NAME TO TAX-CARDS-PERSON-NAME
                       MOVE PERSON-ADDRESS TO TAX-CARDS-PERSON-ADDRESS
                       STRING "Happy Tax Day, " PERSON-NAME
                       INTO TAX-CARDS-GREETING
                       END-STRING
                       WRITE TAX-CARDS-PERSON
                       END-WRITE
                    END-IF
                  AT END
                   MOVE 1 TO WS-FILE-IS-END
           END-READ
           END-PERFORM.
                   
                   

           BIRTHDAY SECTION.
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
           CLOSE F-TAXDAY-FILE.
