
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: Receber e formatar a saída de
      *    um CPF (Cadastro de Pessoas Físicas).
      *    data = 12/03/2020
      *
      **********************************************


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77  WRK-CPF      PIC X(11) VALUE ZEROS.
       77  WRK-CPF-ED   PIC ZZZ.ZZZ.ZZ9/99.

       PROCEDURE DIVISION.
      ***************** MOSTRA DADOS ***************
       MAIN-PROCEDURE.
           ACCEPT WRK-CPF.
           MOVE WRK-CPF TO WRK-CPF-ED.
           DISPLAY 'O CPF NAO FORMATADO : ' WRK-CPF.
           DISPLAY 'O CPF FORMATADO     : ' WRK-CPF-ED.


           STOP RUN.
