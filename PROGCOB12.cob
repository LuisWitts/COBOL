

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB11.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: RECEBR LARGURA E COMPRIMENTO .
      *    CALCULAR A AREA UTILIZANDO OPERADOR RELACIONAL
      *    data = 12/03/2020
      *
      **********************************************
       ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA        PIC 9(03)V99 VALUE ZEROS.
       77 WRK-COMPRIMENTO    PIC 9(03)V99 VALUE ZEROS.
       77 WRK-AREA           PIC 9(03)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
       DISPLAY 'LARGURA...'
       ACCEPT WRK-LARGURA.

       DISPLAY 'COMPRIMENTO ...'
       ACCEPT WRK-COMPRIMENTO.

       IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
           COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
           DISPLAY'-----------------------------------'
           DISPLAY'AREA :       'WRK-AREA
       ELSE
           DISPLAY'DIGITE UM VALOR VALIDO'



       END-IF


           STOP RUN.
