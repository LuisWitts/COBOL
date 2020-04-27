       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB17.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: investimento financeiro
      *    UTILIZAR COMANDO PERFORM UNTIL (ATÉ)
      *    data = 27/04/2020
      *    _\|/_ 4:20
      **********************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'BOOK2.cob'.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.

       0100-INICIAR.
           DISPLAY 'DIGITE O VALOR INVESTIDO'
               ACCEPT WRK-VALOR.
           DISPLAY 'DIGITE QUANTOS MESES VC PRETENDER APLICAR'
               ACCEPT WRK-MESES.
           DISPLAY 'DIGITE O VALOR DA TAXA MENSAL'
               ACCEPT WRK-TAXAMES.
       0200-PROCESSAR.
           PERFORM WRK-MESES TIMES
               COMPUTE WRK-VALOR = WRK-VALOR * (WRK-TAXAMES / 100 + 1 )
           END-PERFORM.

       0300-FINALIZAR.
      *vamos mover a variável WRK-VALOR para a variável formatada ´WRK-VALOR-ED`
           DISPLAY ' ---------------------- '.
           MOVE WRK-VALOR TO WRK-VALOR-ED.
           DISPLAY 'VALOR CORRIGID ='WRK-VALOR-ED.
           DISPLAY ' FINAL DO PROGRAMINHA '.
           DISPLAY ' ---------------------- '.
