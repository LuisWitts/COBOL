       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: RECEBER E IMPRIMIR UMA STRING.
      *    data = 12/03/2020
      *
      **********************************************


       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20) VALUE SPACES.

       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.

           DISPLAY 'NOME ...' WRK-NOME(1:10).

           STOP RUN.
