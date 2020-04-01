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
                       IF WRK-MEDIA >= 6
                           DISPLAY 'APROVADO !'
                      ELSE
                       IF WRK-MEDIA >= 2
                           DISPLAY 'RECUPERACAO !'
                       ELSE
                           DISPLAY 'REPROVADO !'

                   END-IF.

           STOP RUN.
