       IDENTIFICATION DIVISION.
       PROGRAM-ID. test-customer-filterer.
       PROCEDURE DIVISION.
           CALL 'customer-filterer' USING '20210305'.

           SET ENVIRONMENT "cards_dat" TO "cards-tax-day.dat".
           CALL "customer-filterer" USING "20210406". 
