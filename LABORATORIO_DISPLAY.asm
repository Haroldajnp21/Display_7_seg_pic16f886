;   /\\\\\\\\\
;  /\\\///////\\\
;  \/\\\     \/\\\                                                 /\\\          /\\\
;   \/\\\\\\\\\\\/        /\\\\\     /\\\\\\\\\\     /\\\\\\\\   /\\\\\\\\\\\  /\\\\\\\\\\\  /\\\\\\\\\
;    \/\\\//////\\\      /\\\///\\\  \/\\\//////    /\\\/////\\\ \////\\\////  \////\\\////  \////////\\\
;     \/\\\    \//\\\    /\\\  \//\\\ \/\\\\\\\\\\  /\\\\\\\\\\\     \/\\\         \/\\\        /\\\\\\\\\\
;      \/\\\     \//\\\  \//\\\  /\\\  \////////\\\ \//\\///////      \/\\\ /\\     \/\\\ /\\   /\\\/////\\\
;       \/\\\      \//\\\  \///\\\\\/    /\\\\\\\\\\  \//\\\\\\\\\\    \//\\\\\      \//\\\\\   \//\\\\\\\\/\\
;        \///        \///     \/////     \//////////    \//////////      \/////        \/////     \////////\//
;                                  Let's find out together what makes a PIC Tick!
;
; Code Produced by the Proton BASIC Compiler. Version 3.7.3.6
; Written by Les Johnson. January 2020
;----------------------------------------------------------
;
#define Config_Req 1
 LIST  P = 16F886, F = INHX8M, W = 2, X = ON, R = DEC, MM = ON, N = 0, C = 255
INDF equ 0X0000
TMR0 equ 0X0001
PCL equ 0X0002
STATUS equ 0X0003
FSR equ 0X0004
PORTA equ 0X0005
PORTB equ 0X0006
PORTC equ 0X0007
PORTE equ 0X0009
PCLATH equ 0X000A
INTCON equ 0X000B
PIR1 equ 0X000C
PIR2 equ 0X000D
TMR1L equ 0X000E
TMR1LH equ 0X000F
TMR1H equ 0X000F
T1CON equ 0X0010
TMR2 equ 0X0011
T2CON equ 0X0012
SSPBUF equ 0X0013
SSPCON equ 0X0014
CCPR1L equ 0X0015
CCPR1LH equ 0X0016
CCPR1H equ 0X0016
CCP1CON equ 0X0017
RCSTA equ 0X0018
TXREG equ 0X0019
RCREG equ 0X001A
CCPR2L equ 0X001B
CCPR2LH equ 0X001C
CCPR2H equ 0X001C
CCP2CON equ 0X001D
ADRESLH equ 0X001E
ADRESH equ 0X001E
ADCON0 equ 0X001F
OPTION_REG equ 0X0081
TRISA equ 0X0085
TRISB equ 0X0086
TRISC equ 0X0087
TRISE equ 0X0089
PIE1 equ 0X008C
PIE2 equ 0X008D
PCON equ 0X008E
OSCCON equ 0X008F
OSCTUNE equ 0X0090
SSPCON2 equ 0X0091
PR2 equ 0X0092
SSPADD equ 0X0093
SSPMSK equ 0X0093
MSK equ 0X0093
SSPSTAT equ 0X0094
WPUB equ 0X0095
IOCB equ 0X0096
VRCON equ 0X0097
TXSTA equ 0X0098
SPBRG equ 0X0099
SPBRGH equ 0X009A
PWM1CON equ 0X009B
ECCPAS equ 0X009C
PSTRCON equ 0X009D
ADRESL equ 0X009E
ADCON1 equ 0X009F
WDTCON equ 0X0105
CM1CON0 equ 0X0107
CM2CON0 equ 0X0108
CM2CON1 equ 0X0109
EEDATL equ 0X010C
EEDATA equ 0X010C
EEDAT equ 0X010C
EEADR equ 0X010D
EEDATLH equ 0X010E
EEDATH equ 0X010E
EEADRH equ 0X010F
SRCON equ 0X0185
BAUDCTL equ 0X0187
ANSEL equ 0X0188
ANSELH equ 0X0189
EECON1 equ 0X018C
EECON2 equ 0X018D
_I2C_SCL_Port=TRISC
_I2C_SCL_Pin=3
_I2C_SDA_Port=TRISC
_I2C_SDA_Pin=4
; SFR BITS
IRP=7
PP_IRP=7
RP1=6
PP_RP1=6
RP0=5
PP_RP0=5
NOT_TO=4
NOT_PD=3
Z=2
DC=1
C=0
GIE=7
PEIE=6
T0IE=5
TMR0IE=5
INTE=4
RBIE=3
T0IF=2
TMR0IF=2
INTF=1
RBIF=0
ADIF=6
RCIF=5
PP_RCIF=5
TXIF=4
PP_TXIF=4
SSPIF=3
CCP1IF=2
TMR2IF=1
TMR1IF=0
OSFIF=7
C2IF=6
C1IF=5
EEIF=4
BCLIF=3
ULPWUIF=2
CCP2IF=0
T1GIV=7
TMR1GE=6
T1CKPS1=5
T1CKPS0=4
T1OSCEN=3
NOT_T1SYNC=2
T1INSYNC=2
T1SYNC=2
TMR1CS=1
TMR1ON=0
TOUTPS3=6
TOUTPS2=5
TOUTPS1=4
TOUTPS0=3
TMR2ON=2
PP_TMR2ON=2
T2CKPS1=1
PP_T2CKPS1=1
T2CKPS0=0
PP_T2CKPS0=0
WCOL=7
SSPOV=6
SSPEN=5
CKP=4
SSPM3=3
SSPM2=2
SSPM1=1
SSPM0=0
P1M1=7
P1M0=6
DC1B1=5
CCP1X=5
DC1B0=4
CCP1Y=4
CCP1M3=3
CCP1M2=2
CCP1M1=1
CCP1M0=0
SPEN=7
RX9=6
RC9=6
NOT_RC8=6
RC8_9=6
SREN=5
CREN=4
PP_CREN=4
ADDEN=3
FERR=2
OERR=1
PP_OERR=1
RX9D=0
RCD8=0
CCP2X=5
DC2B1=5
CCP2Y=4
DC2B0=4
CCP2M3=3
CCP2M2=2
CCP2M1=1
CCP2M0=0
ADCS1=7
ADCS0=6
CHS3=5
CHS2=4
CHS1=3
CHS0=2
GO=1
NOT_DONE=1
GO_DONE=1
PP_GO_DONE=1
ADON=0
NOT_RBPU=7
INTEDG=6
T0CS=5
T0SE=4
PSA=3
PS2=2
PS1=1
PS0=0
ADIE=6
RCIE=5
TXIE=4
SSPIE=3
CCP1IE=2
TMR2IE=1
TMR1IE=0
OSFIE=7
C2IE=6
C1IE=5
EEIE=4
BCLIE=3
ULPWUIE=2
CCP2IE=0
ULPWUE=5
SBOREN=4
NOT_POR=1
NOT_BO=0
NOT_BOR=0
IRCF2=6
IRCF1=5
IRCF0=4
OSTS=3
HTS=2
LTS=1
SCS=0
TUN4=4
TUN3=3
TUN2=2
TUN1=1
TUN0=0
GCEN=7
ACKSTAT=6
PP_ACKSTAT=6
ACKDT=5
PP_ACKDT=5
ACKEN=4
PP_ACKEN=4
RCEN=3
PP_RCEN=3
PEN=2
PP_PEN=2
RSEN=1
PP_RSEN=1
SEN=0
PP_SEN=0
SMP=7
CKE=6
I2C_DATA=5
NOT_A=5
NOT_ADDRESS=5
D_A=5
DATA_ADDRESS=5
I2C_STOP=4
I2C_START=3
I2C_READ=2
NOT_W=2
NOT_WRITE=2
R_W=2
PP_R_W=2
READ_WRITE=2
UA=1
BF=0
PP_BF=0
WPUB7=7
WPUB6=6
WPUB5=5
WPUB4=4
WPUB3=3
WPUB2=2
WPUB1=1
WPUB0=0
IOCB7=7
IOCB6=6
IOCB5=5
IOCB4=4
IOCB3=3
IOCB2=2
IOCB1=1
IOCB0=0
VREN=7
VROE=6
VRR=5
VRSS=4
VR3=3
VR2=2
VR1=1
VR0=0
CSRC=7
TX9=6
NOT_TX8=6
TX8_9=6
TXEN=5
SYNC=4
SENDB=3
PP_SENDB=3
BRGH=2
PP_BRGH=2
TRMT=1
TX9D=0
TXD8=0
BRG7=7
BRG6=6
BRG5=5
BRG4=4
BRG3=3
BRG2=2
BRG1=1
BRG0=0
BRG15=7
BRG14=6
BRG13=5
BRG12=4
BRG11=3
BRG10=2
BRG9=1
BRG8=0
PRSEN=7
PDC6=6
PDC5=5
PDC4=4
PDC3=3
PDC2=2
PDC1=1
PDC0=0
ECCPASE=7
ECCPAS2=6
ECCPAS1=5
ECCPAS0=4
PSSAC1=3
PSSAC0=2
PSSBD1=1
PSSBD0=0
STRSYNC=4
STRD=3
STRC=2
STRB=1
STRA=0
ADFM=7
VCFG1=5
VCFG0=4
WDTPS3=4
WDTPS2=3
WDTPS1=2
WDTPS0=1
SWDTEN=0
C1ON=7
C1OUT=6
C1OE=5
C1POL=4
C1R=2
C1CH1=1
C1CH0=0
C2ON=7
C2OUT=6
C2OE=5
C2POL=4
C2R=2
C2CH1=1
C2CH0=0
MC1OUT=7
MC2OUT=6
C1RSEL=5
C2RSEL=4
T1GSS=1
C2SYNC=0
SR1=7
SR0=6
C1SEN=5
C2REN=4
PULSS=3
PULSR=2
FVREN=0
ABDOVF=7
RCIDL=6
SCKP=4
BRG16=3
PP_BRG16=3
WUE=1
ABDEN=0
ANS4=4
ANS3=3
ANS2=2
ANS1=1
ANS0=0
ANS13=5
ANS12=4
ANS11=3
ANS10=2
ANS9=1
ANS8=0
EEPGD=7
PP_EEPGD=7
WRERR=3
PP_WRERR=3
WREN=2
PP_WREN=2
WR=1
PP_WR=1
RD=0
PP_RD=0
  __MAXRAM 0X1FF
  __BADRAM 0X18E-0X18F
_config1 equ 0X2007
_config2 equ 0X2008
DEBUG_ON equ 0X1FFF
DEBUG_OFF equ 0X3FFF
LVP_ON equ 0X3FFF
LVP_OFF equ 0X2FFF
FCMEN_ON equ 0X3FFF
FCMEN_OFF equ 0X37FF
IESO_ON equ 0X3FFF
IESO_OFF equ 0X3BFF
BOR_ON equ 0X3FFF
BOR_NSLEEP equ 0X3EFF
BOR_SBODEN equ 0X3DFF
BOR_OFF equ 0X3CFF
CPD_ON equ 0X3F7F
CPD_OFF equ 0X3FFF
CP_ON equ 0X3FBF
CP_OFF equ 0X3FFF
MCLRE_ON equ 0X3FFF
MCLRE_OFF equ 0X3FDF
PWRTE_ON equ 0X3FEF
PWRTE_OFF equ 0X3FFF
WDT_ON equ 0X3FFF
WDT_OFF equ 0X3FF7
LP_OSC equ 0X3FF8
XT_OSC equ 0X3FF9
HS_OSC equ 0X3FFA
EC_OSC equ 0X3FFB
INTRC_OSC_NOCLKOUT equ 0X3FFC
INTRC_OSC_CLKOUT equ 0X3FFD
EXTRC_OSC_NOCLKOUT equ 0X3FFE
EXTRC_OSC_CLKOUT equ 0X3FFF
INTOSCIO equ 0X3FFC
INTOSC equ 0X3FFD
EXTRCIO equ 0X3FFE
EXTRC equ 0X3FFF
WRT_OFF equ 0X3FFF
WRT_256 equ 0X3DFF
WRT_1FOURTH equ 0X3BFF
WRT_HALF equ 0X39FF
BOR21V equ 0X3EFF
BOR40V equ 0X3FFF
BOR4V_BOR21V equ 0X3EFF
BOR4V_BOR40V equ 0X3FFF
BOREN_NSLEEP equ 0X3EFF
BOREN_OFF equ 0X3CFF
BOREN_ON equ 0X3FFF
BOREN_SBODEN equ 0X3DFF
FOSC_EC equ 0X3FFB
FOSC_EXTRC_CLKOUT equ 0X3FFF
FOSC_EXTRC_NOCLKOUT equ 0X3FFE
FOSC_HS equ 0X3FFA
FOSC_INTRC_CLKOUT equ 0X3FFD
FOSC_INTRC_NOCLKOUT equ 0X3FFC
FOSC_LP equ 0X3FF8
FOSC_XT equ 0X3FF9
WDTE_OFF equ 0X3FF7
WDTE_ON equ 0X3FFF
#define __16F886 1
#define Xtal 20
#define _Core 14
#define _MaxRAM 368
#define _Ram_End 0X0170
#define _MaxMem 8192
#define _ADC 11
#define _ADC_Res 10
#define _Eeprom 256
#define _Pages 4
#define _Banks 3
#define RAM_Banks 4
#define _USART 1
#define _USB 0
#define _Flash 1
#define _Cwrite_Block 8
#define Bank0_Start 0X20
#define Bank0_End 0X7F
#define Bank1_Start 0XA0
#define Bank1_End 0XEF
#define Bank2_Start 0X110
#define Bank2_End 0X16F
#define Bank3_Start 0X190
#define Bank3_End 0X1EF
#define _System_Variable_Count 9
ram_bank = 0
Current@Page = 0
Dest@Page = 0
#define LCD#Type 0
f@call macro pDest
if(pDest < 1)
if((pDest & 2048) == 0)
    bcf PCLATH,3
else
    bsf PCLATH,3
endif
if((pDest & 4096) == 0)
    bcf PCLATH,4
else
    bsf PCLATH,4
endif
else
if(pDest > $)
if((pDest & 2048) == 0)
    bcf PCLATH,3
else
    bsf PCLATH,3
endif
if((pDest & 4096) == 0)
    bcf PCLATH,4
else
    bsf PCLATH,4
endif
else
if((pDest & 6144) == 0)
    clrf PCLATH
else
if((pDest & 2048) == 0)
    bcf PCLATH,3
else
    bsf PCLATH,3
endif
if((pDest & 4096) == 0)
    bcf PCLATH,4
else
    bsf PCLATH,4
endif
endif
endif
endif
    call pDest
    endm
f@jump macro pDest
if(pDest < 1)
if((pDest & 2048) == 0)
    bcf PCLATH,3
else
    bsf PCLATH,3
endif
if((pDest & 4096) == 0)
    bcf PCLATH,4
else
    bsf PCLATH,4
endif
else
if(pDest > $)
if((pDest & 2048) == 0)
    bcf PCLATH,3
else
    bsf PCLATH,3
endif
if((pDest & 4096) == 0)
    bcf PCLATH,4
else
    bsf PCLATH,4
endif
else
if((pDest & 6144) == 0)
    clrf PCLATH
else
if((pDest & 2048) == 0)
    bcf PCLATH,3
else
    bsf PCLATH,3
endif
if((pDest & 4096) == 0)
    bcf PCLATH,4
else
    bsf PCLATH,4
endif
endif
endif
endif
    goto pDest
    endm
set@page macro pDest
if((pDest & 2048) == 0)
    bcf PCLATH,3
else
    bsf PCLATH,3
endif
if((pDest & 4096) == 0)
    bcf PCLATH,4
else
    bsf PCLATH,4
endif
    endm
s@b     macro pVarin
if((pVarin & 384) == 0)
if(ram_bank == 1)
    bcf STATUS,PP_RP0
endif
if(ram_bank == 2)
    bcf STATUS,PP_RP1
endif
if(ram_bank == 3)
    bcf STATUS,PP_RP0
    bcf STATUS,PP_RP1
endif
ram_bank = 0
endif
if((pVarin & 384) == 128)
if(ram_bank == 0)
    bsf STATUS,PP_RP0
endif
if(ram_bank == 2)
    bsf STATUS,PP_RP0
    bcf STATUS,PP_RP1
endif
if(ram_bank == 3)
    bcf STATUS,PP_RP1
endif
ram_bank = 1
endif
if((pVarin & 384) == 256)
if(ram_bank == 0)
    bsf STATUS,PP_RP1
endif
if(ram_bank == 1)
    bcf STATUS,PP_RP0
    bsf STATUS,PP_RP1
endif
if(ram_bank == 3)
    bcf STATUS,PP_RP0
endif
ram_bank = 2
endif
if((pVarin & 384) == 384)
if(ram_bank == 0)
    bsf STATUS,PP_RP0
    bsf STATUS,PP_RP1
endif
if(ram_bank == 1)
    bsf STATUS,PP_RP1
endif
if(ram_bank == 2)
    bsf STATUS,PP_RP0
endif
ram_bank = 3
endif
    endm
r@b     macro
if((ram_bank & 1) != 0)
    bcf STATUS,PP_RP0
endif
if((ram_bank & 2) != 0)
    bcf STATUS,PP_RP1
endif
ram_bank = 0
    endm
variable Current@Page = 0
variable PDESTINATION@PAGE = 0
FIND@PAGE macro pLabelIn
local CURRENT_ADDR = $
local DEST_ADDR = pLabelIn
if((CURRENT_ADDR >= 0X1800) && (CURRENT_ADDR <= 0X2000))
    Current@Page = 3
endif
if((CURRENT_ADDR >= 0X1000) && (CURRENT_ADDR <= 0X1800))
    Current@Page = 2
endif
if((CURRENT_ADDR >= 0X0800) && (CURRENT_ADDR <= 0X1000))
    Current@Page = 1
endif
if((CURRENT_ADDR >= 0) && (CURRENT_ADDR <= 0X0800))
    Current@Page = 0
endif
if((DEST_ADDR >= 0X1800) && (DEST_ADDR <= 0X2000))
    PDESTINATION@PAGE = 3
endif
if((DEST_ADDR >= 0X1000) && (DEST_ADDR <= 0X1800))
    PDESTINATION@PAGE = 2
endif
if((DEST_ADDR >= 0X0800) && (DEST_ADDR <= 0X1000))
    PDESTINATION@PAGE = 1
endif
if((DEST_ADDR >= 0) && (DEST_ADDR <= 0X0800))
    PDESTINATION@PAGE = 0
endif
    endm
jump macro pLabel
    goto pLabel
    endm
wreg_byte macro pByteOut
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
wreg_bit macro pVarOut,pBitout
    s@b pVarOut
    andlw 1
    btfsc STATUS,2
    bcf pVarOut,pBitout
    btfss STATUS,2
    bsf pVarOut,pBitout
    r@b
    endm
wreg_word macro pWordOut
    s@b pWordOut
    movwf pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    r@b
    endm
wreg_dword macro pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    s@b pDwordOut
    movwf pDwordOut
    r@b
    endm
byte_wreg macro pByteIn
    s@b pByteIn
    movf pByteIn,W
    r@b
    endm
num_SFR macro pNumIn,pSFROut
    s@b pSFROut
    movlw pNumIn
    movwf pSFROut
    endm
num16_SFR macro pNumIn,pSFROut
    s@b pSFROut
    movlw (pNumIn & 255)
    movwf pSFROut
    s@b pSFROut + 1
    movlw ((pNumIn >> 8) & 255)
    movwf pSFROut + 1
    r@b
    endm
num_wreg macro pNumIn
    movlw (pNumIn & 255)
    endm
num_byte macro pNumIn,pByteOut
    s@b pByteOut
if(pNumIn == 0)
    clrf pByteOut
else
    movlw (pNumIn & 255)
    movwf pByteOut
endif
    r@b
    endm
num_bit macro pNumIn,pVarOut,pBitout
    s@b pVarOut
if((pNumIn & 1) == 1)
    bsf pVarOut,pBitout
else
    bcf pVarOut,pBitout
endif
    r@b
    endm
num_word macro pNumIn,pWordOut
if((pNumIn & 255) == 0)
    s@b pWordOut
    clrf pWordOut
else
    s@b pWordOut
    movlw low (pNumIn)
    movwf pWordOut
endif
if(((pNumIn >> 8) & 255) == 0)
    s@b pWordOut+1
    clrf pWordOut+1
else
    s@b pWordOut+1
    movlw high (pNumIn)
    movwf pWordOut+1
endif
    r@b
    endm
num_dword macro pNumIn,pDwordOut
if ((pNumIn >> 24 & 255) == 0)
    s@b pDwordOut+3
    clrf pDwordOut+3
else
    s@b pDwordOut+3
    movlw ((pNumIn >> 24) & 255)
    movwf pDwordOut+3
endif
if( ((pNumIn >> 16) & 255) == 0)
    s@b pDwordOut+2
    clrf pDwordOut+2
else
    s@b pDwordOut+2
    movlw ((pNumIn >> 16) & 255)
    movwf pDwordOut+2
endif
if( ((pNumIn >> 8) & 255) == 0)
    s@b pDwordOut+1
    clrf pDwordOut+1
else
    s@b pDwordOut+1
    movlw high (pNumIn)
    movwf pDwordOut+1
endif
if((pNumIn & 255) == 0)
    s@b pDwordOut
    clrf pDwordOut
else
    s@b pDwordOut
    movlw low (pNumIn)
    movwf pDwordOut
endif
    r@b
    endm
bit_wreg macro pVarin,pBitIn
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    r@b
    endm
bit_byte macro pVarin,pBitIn,pByteOut
    s@b pVarin
    clrw
    btfsc pVarin,pBitIn
    movlw 1
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
bit_bit macro pVarin,pBitIn,pVarOut,pBitout
if((pVarin & 65408) == (pVarOut & 65408))
    s@b pVarOut
    btfsc pVarin,pBitIn
    bsf pVarOut,pBitout
    btfss pVarin,pBitIn
    bcf pVarOut,pBitout
else
    s@b pVarin
    clrdc
    btfsc pVarin,pBitIn
    setdc
    s@b pVarOut
    skpndc
    bsf pVarOut,pBitout
    skpdc
    bcf pVarOut,pBitout
endif
    endm
bit_word macro pVarin,pBitIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    bit_byte pVarin,pBitIn,pWordOut
    endm
bit_dword macro pVarin,pBitIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    bit_byte pVarin,pBitIn,pDwordOut
    endm
word_wreg macro pWordIn
    byte_wreg pWordIn
    endm
word_byte macro pWordIn,pByteOut
    byte_byte pWordIn,pByteOut
    endm
word_bit macro pWordIn,pVarOut,pBitout
    byte_bit pWordIn, pVarOut, pBitout
    endm
word_word macro pWordIn,pWordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pWordIn,pWordOut
    endm
word_dword macro pWordIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    byte_byte pWordIn+1,pDwordOut+1
    byte_byte pWordIn,pDwordOut
    endm
byte_byte macro pByteIn,pByteOut
    s@b pByteIn
    movf pByteIn,W
    s@b pByteOut
    movwf pByteOut
    r@b
    endm
byte_word macro pByteIn,pWordOut
    s@b pWordOut+1
    clrf pWordOut+1
    byte_byte pByteIn,pWordOut
    endm
byte_dword macro pByteIn,pDwordOut
    s@b pDwordOut+3
    clrf pDwordOut+3
    s@b pDwordOut+2
    clrf pDwordOut+2
    s@b pDwordOut+1
    clrf pDwordOut+1
    byte_byte pByteIn,pDwordOut
    endm
    byte_bit macro pByteIn,pVarOut,pBitout
if((pByteIn & 65408) == (pVarOut & 65408))
    s@b pByteIn
    btfsc pByteIn,0
    bsf pVarOut,pBitout
    btfss pByteIn,0
    bcf pVarOut,pBitout
else
    s@b pByteIn
    rrf pByteIn,W
    s@b pVarOut
    skpnc
    bsf pVarOut,pBitout
    skpc
    bcf pVarOut,pBitout
endif
    r@b
    endm
dword_wreg macro pDwordIn
    byte_wreg pDwordIn
    endm
dword_byte macro pDwordIn,pByteOut
    byte_byte pDwordIn,pByteOut
    endm
dword_word macro pDwordIn,pWordOut
    s@b pDwordIn+1
    movf pDwordIn+1,W
    s@b pWordOut+1
    movwf pWordOut+1
    byte_byte pDwordIn,pWordOut
    endm
dword_dword macro pDwordIn,pDwordOut
    byte_byte pDwordIn+3,pDwordOut+3
    byte_byte pDwordIn+2,pDwordOut+2
    byte_byte pDwordIn+1,pDwordOut+1
    byte_byte pDwordIn,pDwordOut
    endm
dword_bit macro pDwordIn,pVarOut,pBitout
    byte_bit pDwordIn,pVarOut,pBitout
    endm
num_float macro pNumIn,pFloatOut
    num_byte pNumIn,pFloatOut+3
    num_byte ((pNumIn >> 8) & 255),pFloatOut+2
    num_byte ((pNumIn >> 16) & 255),pFloatOut+1
    num_byte ((pNumIn >> 24) & 255),pFloatOut
    endm
wreg_float macro pFloatOut
    PAGESEL _UNS_INT08_TOFL32
    call _UNS_INT08_TOFL32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
    endm
bit_float macro pVarin,pBitIn,pFloatOut
    bit_wreg pVarin,pBitIn
    PAGESEL _UNS_INT08_TOFL32
    call _UNS_INT08_TOFL32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
    endm
byte_float macro pByteIn,pFloatOut
    byte_wreg pByteIn
    PAGESEL _UNS_INT08_TOFL32
    call _UNS_INT08_TOFL32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
    endm
word_float macro pWordIn,pFloatOut
    byte_byte pWordIn,PP_AARG
    byte_byte pWordIn+1,PP_AARGH
    PAGESEL _UNS_INT16_TOFL32
    call _UNS_INT16_TOFL32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
    endm
dword_float macro pDwordIn,pFloatOut
    byte_byte pDwordIn,PP_AARG
    byte_byte pDwordIn+1,PP_AARGH
    byte_byte pDwordIn+2,PP_AARGHH
    byte_byte pDwordIn+3,PP_AARGHHH
    PAGESEL _unsgn_int32_tofl32
    call _unsgn_int32_tofl32
    byte_byte PP_AARG,pFloatOut
    byte_byte PP_AARGH,pFloatOut+1
    byte_byte PP_AARGHH,pFloatOut+2
    byte_byte PP_AARGHHH,pFloatOut+3
    endm
float_float macro pFloatIn,pFloatOut
    byte_byte pFloatIn,pFloatOut
    byte_byte pFloatIn+1,pFloatOut+1
    byte_byte pFloatIn+2,pFloatOut+2
    byte_byte pFloatIn+3,pFloatOut+3
    endm
float_wreg macro pFloatIn
    float_float pFloatIn,PP_AARG
    PAGESEL _FL32_TO_INT32
    call _FL32_TO_INT32
    endm
float_bit macro pFloatIn,pVarOut,pBitout
    float_float pFloatIn,PP_AARG
    PAGESEL _FL32_TO_INT32
    call _FL32_TO_INT32
    wreg_bit pVarOut,pBitout
    endm
float_byte macro pFloatIn,pByteOut
    float_float pFloatIn,PP_AARG
    PAGESEL _FL32_TO_INT32
    call _FL32_TO_INT32
    wreg_byte pByteOut
    endm
float_word macro pFloatIn,pWordOut
    float_float pFloatIn,PP_AARG
    PAGESEL _FL32_TO_INT32
    call _FL32_TO_INT32
    byte_byte PP_AARGHHH,pWordOut
    byte_byte PP_AARGHH,pWordOut+1
    endm
float_dword macro pFloatIn,pDwordOut
    float_float pFloatIn,PP_AARG
    PAGESEL _FL32_TO_INT32
    call _FL32_TO_INT32
    byte_byte PP_AARGHHH,pDwordOut
    byte_byte PP_AARGHH,pDwordOut+1
    byte_byte PP_AARGH,pDwordOut+2
    byte_byte PP_AARG,pDwordOut+3
    endm
num_FSR macro pNumIn
    num_byte pNumIn, FSR
if (((pNumIn >> 8) & 255) == 1)
    bsf STATUS,7
else
    bcf STATUS,7
endif
    endm
label_word macro pLabelIn,pWordOut
    movlw (pLabelIn & 255)
    s@b pWordOut
    movwf pWordOut
    movlw ((pLabelIn >> 8) & 255)
    s@b pWordOut+1
    movwf pWordOut+1
    r@b
    endm
wreg_sword macro pWordOut
    s@b pWordOut
    movwf pWordOut
    movlw 0
    btfsc pWordOut,7
    movlw 255
    s@b pWordOut+1
    movwf pWordOut+1
    r@b
    endm
wreg_sdword macro pDwordOut
    s@b pDwordOut
    movwf pDwordOut
    movlw 0
    btfsc pDwordOut,7
    movlw 255
    s@b pDwordOut+1
    movwf pDwordOut+1
    s@b pDwordOut+2
    movwf pDwordOut+2
    s@b pDwordOut+3
    movwf pDwordOut+3
    r@b
    endm
byte_sword macro pByteIn,pWordOut
    s@b pByteIn
    movf pByteIn,W
    s@b pWordOut
    movwf pWordOut
    movlw 0
    btfsc pWordOut,7
    movlw 255
    s@b pWordOut+1
    movwf pWordOut+1
    r@b
    endm
byte_sdword macro pByteIn,pDwordOut
    s@b pByteIn
    movf pByteIn,W
    s@b pDwordOut
    movwf pDwordOut
    movlw 0
    btfsc pDwordOut,7
    movlw 255
    s@b pDwordOut+1
    movwf pDwordOut+1
    s@b pDwordOut+2
    movwf pDwordOut+2
    s@b pDwordOut+3
    movwf pDwordOut+3
    r@b
    endm
word_sdword macro pWordIn,pDwordOut
    s@b pWordIn
    movf pWordIn,W
    s@b pDwordOut
    movwf pDwordOut
    s@b pWordIn+1
    movf pWordIn+1,W
    s@b pDwordOut+1
    movwf pDwordOut+1
    movlw 0
    btfsc pDwordOut+1,7
    movlw 255
    s@b pDwordOut+2
    movwf pDwordOut+2
    s@b pDwordOut+3
    movwf pDwordOut+3
    r@b
    endm
; COMPILER SYSTEM VARIABLES
GEN3H = 0X20
PP0 = 0X21
PP0H = 0X22
PP1 = 0X23
PP1H = 0X24
PP3 = 0X25
PP3H = 0X26
PP6 = 0X27
PP6H = 0X28
; STANDARD VARIABLES
NUM = 0X29
variable NUM#0=0X29,NUM#1=0X2A,NUM#2=0X2B,NUM#3=0X2C
variable NUM#4=0X2D,NUM#5=0X2E,NUM#6=0X2F,NUM#7=0X30
variable NUM#8=0X31,NUM#9=0X32
_I = 0X33
; ALIAS VARIABLES
#define SE PORTA,0
; CONSTANTS
#define __Xtal 20
proton#code#start
    org 0
    nop
    movlw(proton#main#start >> 8) & 0XFF
    movwf PCLATH
    goto proton#main#start
    org 4
__delay_ms_
    clrf PP1H
__delay_ms_w_
    movwf PP1
__delayms_from_regs__
    movlw 255
    addwf PP1,F
    btfss STATUS,0
    addwf PP1H,F
    btfss STATUS,0
    goto __Exit_Library__
    movlw 3
    movwf PP0H
    movlw 230
    call __delay_us_w_
    goto __delayms_from_regs__
__delay_us_
    clrf PP0H
__delay_us_w_
    addlw 252
    movwf PP0
    comf PP0H,F
    btfss STATUS,0
    goto $ + 7
    movlw 255
    nop
    addwf PP0,F
    btfsc STATUS,0
    goto $ - 3
    addwf PP0,F
    nop
    incfsz PP0H,F
    goto $ - 8
    return
__Exit_Library__
i@nt
    bcf STATUS,PP_IRP
    bcf STATUS,PP_RP0
    bcf STATUS,PP_RP1
    return
proton#main#start
    bcf STATUS,PP_RP0
    bcf STATUS,PP_RP1
F1_SOF equ $ ; LABORATORIO_DISPLAY.BAS
    bsf STATUS,5
    bsf STATUS,6
ram_bank = 3
    clrf ANSEL
    clrf ANSELH
    bcf STATUS,5
ram_bank = 2
    clrf CM1CON0
    clrf CM2CON0
F1_000036 equ $ ; IN [LABORATORIO_DISPLAY.BAS] NUM[0] =$40 : NUM[1] =$79 : NUM[2] =$24 : NUM[3] =$30 : NUM[4] =$19
    movlw 0X40
    bcf STATUS,6
ram_bank = 0
    movwf NUM#0
    movlw 0X79
    movwf NUM#1
    movlw 0X24
    movwf NUM#2
    movlw 0X30
    movwf NUM#3
    movlw 0X19
    movwf NUM#4
F1_000037 equ $ ; IN [LABORATORIO_DISPLAY.BAS] NUM[5] =$12 : NUM[6] =$02 : NUM[7] =$78 : NUM[8] =$00 : NUM[9] =$18
    movlw 0X12
    movwf NUM#5
    movlw 0X02
    movwf NUM#6
    movlw 0X78
    movwf NUM#7
    clrf NUM#8
    movlw 0X18
    movwf NUM#9
F1_000039 equ $ ; IN [LABORATORIO_DISPLAY.BAS] TRISA.0=1 : TRISC=0 : ANSEL=0 : ANSELH=0
    bsf STATUS,5
ram_bank = 1
    bsf TRISA,0
    clrf TRISC
    bsf STATUS,6
ram_bank = 3
    clrf ANSEL
    clrf ANSELH
F1_000040 equ $ ; IN [LABORATORIO_DISPLAY.BAS] I=0
    bcf STATUS,5
    bcf STATUS,6
ram_bank = 0
    clrf _I
F1_000041 equ $ ; IN [LABORATORIO_DISPLAY.BAS] PORTC=NUM[0]
    movf NUM#0,W
    movwf PORTC
F1_000042 equ $ ; IN [LABORATORIO_DISPLAY.BAS] DELAYMS 500
    movlw 0X01
    movwf PP1H
    movlw 0XF4
    f@call __delay_ms_w_
ram_bank = 0
BUCLE
F1_000045 equ $ ; IN [LABORATORIO_DISPLAY.BAS] IF SE=1 THEN
    set@page _lbl__3
    btfss PORTA,0
    goto _lbl__3
F1_000046 equ $ ; IN [LABORATORIO_DISPLAY.BAS] GOSUB UP
    f@call UP
ram_bank = 0
    f@jump _lbl__4
_lbl__3
F1_000047 equ $ ; IN [LABORATORIO_DISPLAY.BAS] ELSE
F1_000048 equ $ ; IN [LABORATORIO_DISPLAY.BAS] GOSUB DOWN
    f@call DOWN
ram_bank = 0
F1_000049 equ $ ; IN [LABORATORIO_DISPLAY.BAS] ENDIF
_lbl__4
F1_000050 equ $ ; IN [LABORATORIO_DISPLAY.BAS] GOTO BUCLE
    f@jump BUCLE
UP
F1_000053 equ $ ; IN [LABORATORIO_DISPLAY.BAS] IF I=9 THEN
    movlw 0X09
    subwf _I,W
    set@page _lbl__6
    btfss STATUS,2
    goto _lbl__6
F1_000054 equ $ ; IN [LABORATORIO_DISPLAY.BAS] I=0
    clrf _I
    f@jump _lbl__7
_lbl__6
F1_000055 equ $ ; IN [LABORATORIO_DISPLAY.BAS] ELSE
F1_000056 equ $ ; IN [LABORATORIO_DISPLAY.BAS] I=I+1
    incf _I,F
F1_000057 equ $ ; IN [LABORATORIO_DISPLAY.BAS] ENDIF
_lbl__7
F1_000058 equ $ ; IN [LABORATORIO_DISPLAY.BAS] PORTC=NUM[I]
    movf _I,W
    addlw NUM
    movwf FSR
    movf INDF,W
    movwf PORTC
F1_000059 equ $ ; IN [LABORATORIO_DISPLAY.BAS] DELAYMS 500
    movlw 0X01
    movwf PP1H
    movlw 0XF4
    f@call __delay_ms_w_
ram_bank = 0
F1_000060 equ $ ; IN [LABORATORIO_DISPLAY.BAS] RETURN
    return
DOWN
F1_000063 equ $ ; IN [LABORATORIO_DISPLAY.BAS] IF I=0 THEN
    movf _I,F
    set@page _lbl__9
    btfss STATUS,2
    goto _lbl__9
F1_000064 equ $ ; IN [LABORATORIO_DISPLAY.BAS] I=9
    movlw 0X09
    movwf _I
    f@jump _lbl__10
_lbl__9
F1_000065 equ $ ; IN [LABORATORIO_DISPLAY.BAS] ELSE
F1_000066 equ $ ; IN [LABORATORIO_DISPLAY.BAS] I=I-1
    decf _I,F
F1_000067 equ $ ; IN [LABORATORIO_DISPLAY.BAS] ENDIF
_lbl__10
F1_000068 equ $ ; IN [LABORATORIO_DISPLAY.BAS] PORTC=NUM[I]
    movf _I,W
    addlw NUM
    movwf FSR
    movf INDF,W
    movwf PORTC
F1_000069 equ $ ; IN [LABORATORIO_DISPLAY.BAS] DELAYMS 500
    movlw 0X01
    movwf PP1H
    movlw 0XF4
    f@call __delay_ms_w_
ram_bank = 0
F1_000070 equ $ ; IN [LABORATORIO_DISPLAY.BAS] RETURN
    return
F1_EOF equ $ ; LABORATORIO_DISPLAY.BAS
_pblb__11
    f@jump _pblb__11
__EOF
__config _config1, FOSC_HS&WDTE_OFF&PWRTE_OFF&MCLRE_OFF&CP_OFF&CPD_OFF&BOREN_OFF&IESO_OFF&FCMEN_OFF&LVP_OFF&DEBUG_OFF
__config _config2, BOR4V_BOR40V&WRT_OFF
    end
