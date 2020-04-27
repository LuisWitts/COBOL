       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB16.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: FAZER UMA TABUADA DE ALGUM NUMERO DO 1 AO 10
      *    UTILIZAR COMANDO PERFORM UNTIL (ATÉ)
      *    data = 27/04/2020
      *    _\|/_ 4:20
      **********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'BOOK.cob'.

       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-VENDAS > 0
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
           END-IF.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT WRK-VENDAS.
       0200-PROCESSAR.
           ADD 1 TO WRK-QT.
           ADD WRK-VENDAS TO WRK-ACUM.
           PERFORM 0100-INICIALIZAR.
       0300-FINALIZAR.
           DISPLAY ' ---------------------- '.
           DISPLAY 'ACUMULADOS '            WRK-ACUM.
           DISPLAY 'QUANTIDADE DE VENDAS :' WRK-QT.
           DISPLAY ' FINAL DO PROGRAMINHA '.
           DISPLAY ' ---------------------- '.
