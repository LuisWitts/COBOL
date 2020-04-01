       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      **********************************************
      *    area de comentarios - remarks
      *    author = Luis Carlos Witts
      *    objetivo: TESTAR OPERADORES ARITIMEDICOS
      *    data = 12/03/2020
      *
      **********************************************


       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1  PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2  PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL PIC 9(04) VALUE ZEROS.
       77 WRK-RESTO PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '======================='.
           DISPLAY 'NUMERO 1 ' WRK-NUM1.
           DISPLAY 'NUMERO 2 ' WRK-NUM2.
      ******************* SOMA ***************
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA : ' WRK-RESUL.
      ****************** SUBTRAÇÃO ***********
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRACAO : ' WRK-RESUL.
      ***************** DIVISÃO RESTO ***********
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
            REMAINDER WRK-RESTO.
           DISPLAY 'DIVISAO : ' WRK-RESUL.
           DISPLAY 'RESTO DA DIVISAO : ' WRK-RESTO.

      ***************** MULTIPLICAÇÃO ***********
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTIPLICACAO : ' WRK-RESUL.


           STOP RUN.
