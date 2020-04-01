       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: RECEBR DUAS NOTAS , FAZER A MEDIA E IMPRIMIR.
      *    UTILIZAR COMANDOS IF /ELSE/END-IF
      *    data = 12/03/2020
      *
      **********************************************
       ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1  PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2  PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA  PIC 9(02)V99 VALUE ZEROS.


       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.

               COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/ 2.
               DISPLAY 'MEDIA  ' WRK-MEDIA.
                   EVALUATE WRK-MEDIA
               WHEN 10
                   DISPLAY 'APROV - BONUS '
               WHEN 6 THRU 9,9
                   DISPLAY 'APROVADO !'
               WHEN 2 THRU 5,9
                   DISPLAY 'RECUPERACAO !'
               WHEN OTHER
                   DISPLAY 'REPROVADO !'
               END-EVALUATE.

           STOP RUN.
