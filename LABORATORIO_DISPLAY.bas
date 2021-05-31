'****************************************************************
'*  Name    : UNTITLED.BAS                                      *
'*  Author  : [select VIEW...EDITOR OPTIONS]                    *
'*  Notice  : Copyright (c) 2021 [select VIEW...EDITOR OPTIONS] *
'*          : All Rights Reserved                               *
'*  Date    : 22/04/2021                                        *
'*  Version : 1.0                                               *
'*  Notes   : HJ                                                *
'*          :                                                   *
'****************************************************************
;-------------------------------------------------------------------------------
;**** Added by Fuse Configurator ****
; Use the Fuse Configurator plug-in to change these settings

Device = 16F886

Config1 FOSC_HS, WDTE_OFF, PWRTE_OFF, MCLRE_OFF, CP_OFF, CPD_OFF, BOREN_OFF, IESO_OFF, FCMEN_OFF, LVP_OFF, DEBUG_OFF
Config2 BOR4V_BOR40V, WRT_OFF

;**** End of Fuse Configurator Settings ****
;-------------------------------------------------------------------------------
; AQUI DECLARO TODO LO QUE VOY A USAR
Declare Xtal 20

;-------------------------------------------------------------------------------
;Asignar nombres a los pines
Symbol Se=PORTA.0

;-------------------------------------------------------------------------------
;Declaracion de Variables                             
Dim NUM[10] As Byte
Dim I As Byte

;-------------------------------------------------------------------------------
;Valores fijos o iniciales y configuracion IO
NUM[0]=$40 : NUM[1]=$79 : NUM[2]=$24 : NUM[3]=$30 : NUM[4]=$19
NUM[5]=$12 : NUM[6]=$02 : NUM[7]=$78 : NUM[8]=$00 : NUM[9]=$18

TRISA.0=1 : TRISC=0 : ANSEL=0 : ANSELH=0
I=0
PORTC=NUM[0]
DelayMS 500

BUCLE:
    If Se=1 Then
        GoSub UP
    Else
        GoSub DOWN
    EndIf
    GoTo BUCLE
    
UP:
    If I=9 Then
        I=0
    Else
        I=I+1
    EndIf
    PORTC=NUM[I]
    DelayMS 500
    Return
    
DOWN:
    If I=0 Then
        I=9
    Else
        I=I-1
    EndIf
    PORTC=NUM[I]
    DelayMS 500
    Return
  
  
  
  
  
  
  
  
  
  


