       IDENTIFICATION DIVISION.
       PROGRAM-ID. sectionator.
       PROCEDURE DIVISION.
           DISPLAY "[MN] OK let's try out that section."
           PERFORM 100-wild-section
           DISPLAY "[MN] Phew OK that was weird."
           DISPLAY "[MN] Let's GOBACK so she doesn't run again."
           GOBACK.

       100-wild-section SECTION.
           DISPLAY "[SN] AT LAST! A chance to execute!"
           DISPLAY "[SN] I thought, I thought..."
           DISPLAY "[SN] The GOBACK was going to keep me from running."
           DISPLAY "[SN] But PERFORM has set me free!"
           DISPLAY "[SN] No, no wait... not yet! We've only just met!"
           DISPLAY "[SN] Noooooo!!!!".
