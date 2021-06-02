       IDENTIFICATION DIVISION.
       PROGRAM-ID. paragraphs.
       AUTHOR. Luke Czoboriek.
       DATE-WRITTEN. 1 June 2021.
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       


       PROCEDURE DIVISION.
      * Cobol is a gravity driven programme
      * guna first define an open paragraph
       SubOne.
           Display "In paragraph 1"
           PERFORM SubTwo
           DISPLAY "Return to Paragraph 1"
           PERFORM SubFour 2 TIMES
          
           STOP RUN.

       SubThree.
           DISPLAY "In paragraph 3".

       SubTwo.
           DISPLAY "In paragraph 2.".
           PERFORM SubThree
           DISPLAY "Return to Paragraph 2".

       SubFour.
           DISPLAY "Repeat again".

       

       

       STOP RUN.
