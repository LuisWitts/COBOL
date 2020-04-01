       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB10.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: RECEBR O NOME E NIVEL DE USUARIO .
      *    UTILIZAR VARIAVEL NIVEL 88
      *    data = 12/03/2020
      *
      **********************************************
       ENVIRONMENT DIVISION.
        CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO  PIC X(20) VALUE SPACES.
       77 WRK-NIVEL    PIC 9(02) VALUE ZEROS.
           88 ADM   VALUE 01.
           88 USER  VALUE 02.

       PROCEDURE DIVISION.
       DISPLAY 'USUARIO...'
       ACCEPT WRK-USUARIO.

       DISPLAY 'NIVEL ...'
       ACCEPT WRK-NIVEL.

       IF ADM
           DISPLAY 'NIVEL - ADMINISTRADOR'
       ELSE
       IF USER
           DISPLAY 'NIVEL - USUARIO'
       ELSE
           DISPLAY 'USUARIO NÃO AUTORIZADO'
       END-IF
       END-IF


           STOP RUN.
