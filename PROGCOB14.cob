       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB14.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: FAZER UMA TABUADA DE ALGUM NUMERO DO 1 AO 10
      *    UTILIZAR COMANDO PERFORM TIMES
      *    data = 03/04/2020
      *
      **********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO  PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR  PIC 9(02) VALUE 1.
       77 WRK-RESULTADO  PIC 9(02) VALUE ZEROS.


       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NUMERO > 0
               PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR.


           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT WRK-NUMERO.

       0200-PROCESSAR.
           PERFORM 10 TIMES
           COMPUTE WRK-RESULTADO = (WRK-NUMERO * WRK-CONTADOR)
            DISPLAY '|' WRK-NUMERO 'X' WRK-CONTADOR '=' WRK-RESULTADO'|'
            ADD 1 TO WRK-CONTADOR
           END-PERFORM.
       0300-FINALIZAR.
           DISPLAY ' ---------------------- '.
           DISPLAY ' FINAL DO PROGRAMINHA '.
