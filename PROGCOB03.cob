       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB03.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: RECEBER E IMPRIMIR A DATA DO SISTEMA
      *    UTILIZAR VARIAVEIS NIVEIS 01 ...02...(ESTRUTURADA)
      *    data = 12/03/2020
      *
      **********************************************


       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-ANO PIC 9(4) VALUE ZEROS.
           02 WRK-MES PIC 9(2) VALUE ZEROS.
           02 WRK-DIA PIC 9(2) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY WRK-DATA.

           DISPLAY 'DATA '  WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.

           STOP RUN.
