       >>SOURCE FORMAT FREE
       IDENTIFICATION DIVISION.
       PROGRAM-ID. zerotwo.
       AUTHOR. Luke Czoboriek.
       DATE-WRITTEN. 1 June 2021.


       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SampleData PIC X(10) VALUE "Stuff".
       01 JustLetters PIC AAA VALUE "ABC".
       01 JustNums PIC 9(4) VALUE "1234".
       01 SignedInt PIC S9(4) VALUE -1234.
       01 PayCheck PIC 9(4)V99 VALUE ZEROS.

       01 Customer.
           02 Ident PIC 9(3).
           02 CustName PIC x(20).
           02 DateOfBirth.
               03 MOB PIC 99.
               03 DOB PIC 99.
               03 YOB PIC 9(4).
       01 Num1 PIC 9 VALUE 5.
       01 Num2 PIC 9 VALUE 4.
       01 Num3 PIC 9 VALUE 3.
       01 Ans PIC S99V99 VALUE 0.
       01 Rem PIC 9V99.

       


       PROCEDURE DIVISION.
       MOVE "More stuff" TO SampleData
       MOVE "123" TO SampleData
       MOVE 123 to SampleData
       DISPLAY SampleData
       DISPLAY PayCheck
       MOVE "123Bob Smith           12211974" to 
       Customer
       DISPLAY Customer
       DISPLAY MOB "/" DOB "/" YOB

       ADD Num1 to Num2 GIVING Ans
       DISPLAY Ans
       SUBTRACT Num1 FROM Num2 GIVING Ans
       DISPLAY Ans
       MULTIPLY Num1 BY Num2 GIVING Ans
       DISPLAY Ans
       DIVIDE Num1 BY Num2 GIVING Ans REMAINDER Rem
       DISPLAY "Remainder " Rem
       
       ADD Num1, Num2 to Num3 GIVING Ans
       DISPLAY Ans
       
       COMPUTE Ans ROUNDED = 3.0 + 2.005
       DISPLAY ANS
       

       STOP RUN.
