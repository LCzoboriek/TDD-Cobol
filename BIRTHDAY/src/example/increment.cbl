      * A minimal example COBOL file
       IDENTIFICATION DIVISION.
       PROGRAM-ID. increment.
       DATA DIVISION.
           LINKAGE SECTION.
           01 LS-NUM UNSIGNED-INT.
           01 LS-RESULT UNSIGNED-INT.
       PROCEDURE DIVISION USING LS-NUM LS-RESULT.
           COMPUTE LS-RESULT = LS-NUM + 1.