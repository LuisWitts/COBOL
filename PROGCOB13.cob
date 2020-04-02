       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB13.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: UTILIZAR DO PROGCOB08
      *    UTILIZAR PARAGRAFOS E LOGICA ESTRUTURADA
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
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NOTA1 > 0 AND WRK-NOTA2 > 0
               PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR.


           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.

       0200-PROCESSAR.
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
       0300-FINALIZAR.
           DISPLAY ' ---------------------- '.
           DISPLAY ' FINAL DO PROGRAMINHA '.
