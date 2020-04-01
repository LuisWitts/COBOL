
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB04.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: RECEBE NOME E SALARIO
      *    IMPRIMIR FORMATADO - USO DA VIRGULA
      *    data = 12/03/2020
      *
      **********************************************


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77  WRK-NOME       PIC X(20) VALUE SPACES.
       77  WRK-SALARIO    PIC 9(06)V99 VALUE ZEROS.
       77  WRK-SALARIO-ED PIC $ZZZ.ZZ9,99 VALUE ZEROS.


       PROCEDURE DIVISION.
           ACCEPT WRK-NOME    FROM CONSOLE.
           ACCEPT WRK-SALARIO FROM CONSOLE.
      ***************** MOSTRA DADOS ***************
           DISPLAY 'NOME : '    WRK-NOME.
           MOVE WRK-SALARIO TO WRK-SALARIO-ED.
           DISPLAY 'SALARIO: ' WRK-SALARIO-ED.

           STOP RUN.
