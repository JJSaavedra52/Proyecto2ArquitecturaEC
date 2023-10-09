opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 7 "C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	dw 0xFFFD & 0xFFFB & 0xFFF7 & 0xFF7F ;#
	FNCALL	_main,_ConfigIntRB
	FNCALL	_main,_ConfigTMR1
	FNROOT	_main
	FNCALL	intlevel1,_FunInt
	global	intlevel1
	FNROOT	intlevel1
	global	_numeros
	global	_bandResortico
	global	_left
	global	_op
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	line	25

;initializer for _numeros
	retlw	0FCh
	retlw	060h
	retlw	0DAh
	retlw	0F2h
	retlw	066h
	retlw	0B6h
	retlw	0BEh
	retlw	0E0h
	retlw	0FEh
	retlw	0F6h
	line	23

;initializer for _bandResortico
	retlw	01h
	line	22

;initializer for _left
	retlw	01h
	line	24

;initializer for _op
	retlw	01h
	global	_contador
	global	_decenasMinutos
	global	_decenasSegundos
	global	_display1
	global	_display2
	global	_display3
	global	_display4
	global	_right
	global	_unidadesMinutos
	global	_unidadesSegundos
	global	_ContTimer
	global	_TMR1
_TMR1	set	14
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RBIE
_RBIE	set	91
	global	_RBIF
_RBIF	set	88
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TRISB
_TRISB	set	134
	global	_TMR1IE
_TMR1IE	set	1120
	file	"Proyecto2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ContTimer:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_contador:
       ds      1

_decenasMinutos:
       ds      1

_decenasSegundos:
       ds      1

_display1:
       ds      1

_display2:
       ds      1

_display3:
       ds      1

_display4:
       ds      1

_right:
       ds      1

_unidadesMinutos:
       ds      1

_unidadesSegundos:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	line	25
_numeros:
       ds      10

psect	dataBANK0
	file	"C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	line	23
_bandResortico:
       ds      1

psect	dataBANK0
	file	"C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	line	22
_left:
       ds      1

psect	dataBANK0
	file	"C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	line	24
_op:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+13)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_ConfigIntRB
?_ConfigIntRB:	; 0 bytes @ 0x0
	global	?_ConfigTMR1
?_ConfigTMR1:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_FunInt
?_FunInt:	; 0 bytes @ 0x0
	global	??_FunInt
??_FunInt:	; 0 bytes @ 0x0
	ds	5
	global	??_ConfigIntRB
??_ConfigIntRB:	; 0 bytes @ 0x5
	global	??_ConfigTMR1
??_ConfigTMR1:	; 0 bytes @ 0x5
	ds	1
	global	main@sentido
main@sentido:	; 1 bytes @ 0x6
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	3
;;Data sizes: Strings 0, constant 0, data 13, bss 11, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       8
;; BANK0           80      3      26
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_ConfigIntRB
;;
;; Critical Paths under _FunInt in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _FunInt in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _FunInt in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _FunInt in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _FunInt in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0      68
;;                                              6 COMMON     1     1      0
;;                                              0 BANK0      3     3      0
;;                        _ConfigIntRB
;;                         _ConfigTMR1
;; ---------------------------------------------------------------------------------
;; (1) _ConfigTMR1                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _ConfigIntRB                                          1     1      0       0
;;                                              5 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _FunInt                                               5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _ConfigIntRB
;;   _ConfigTMR1
;;
;; _FunInt (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      23      12        0.0%
;;ABS                  0      0      22       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      3      1A       5       32.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      7       8       1       57.1%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 43 in file "C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  sentido         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ConfigIntRB
;;		_ConfigTMR1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	line	43
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	45
	
l2174:	
;proyectoDos.c: 45: PORTC = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	46
	
l2176:	
;proyectoDos.c: 46: right = 0;
	clrf	(_right)
	line	47
	
l2178:	
;proyectoDos.c: 47: left = 1;
	clrf	(_left)
	bsf	status,0
	rlf	(_left),f
	line	48
	
l2180:	
;proyectoDos.c: 48: unsigned char sentido = left;
	movf	(_left),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@sentido)
	line	49
;proyectoDos.c: 49: bandResortico = 1;
	clrf	(_bandResortico)
	bsf	status,0
	rlf	(_bandResortico),f
	line	50
;proyectoDos.c: 50: op = 1;
	clrf	(_op)
	bsf	status,0
	rlf	(_op),f
	line	51
	
l2182:	
;proyectoDos.c: 51: ConfigIntRB();
	fcall	_ConfigIntRB
	line	52
	
l2184:	
;proyectoDos.c: 52: ConfigTMR1();
	fcall	_ConfigTMR1
	goto	l2186
	line	54
;proyectoDos.c: 54: while (1) {
	
l721:	
	line	55
	
l2186:	
;proyectoDos.c: 55: _delay((unsigned long)((1000)*(4000000/4000.0)));
	opt asmopt_off
movlw  6
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	14
movwf	((??_main+0)+0+1),f
	movlw	176
movwf	((??_main+0)+0),f
u2667:
	decfsz	((??_main+0)+0),f
	goto	u2667
	decfsz	((??_main+0)+0+1),f
	goto	u2667
	decfsz	((??_main+0)+0+2),f
	goto	u2667
opt asmopt_on

	line	57
	
l2188:	
;proyectoDos.c: 57: if (bandResortico == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_bandResortico),w
	xorlw	01h
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l2192
u2540:
	line	58
	
l2190:	
;proyectoDos.c: 58: contador += 1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_contador),f
	goto	l2192
	line	59
	
l722:	
	line	60
	
l2192:	
;proyectoDos.c: 59: }
;proyectoDos.c: 60: if (contador == 130) {
	movf	(_contador),w
	xorlw	082h
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l723
u2550:
	line	61
	
l2194:	
;proyectoDos.c: 61: if (PORTC == 0x01 || PORTC == 0x80) {
	movf	(7),w	;volatile
	xorlw	01h
	skipnz
	goto	u2561
	goto	u2560
u2561:
	goto	l726
u2560:
	
l2196:	
	movf	(7),w	;volatile
	xorlw	080h
	skipz
	goto	u2571
	goto	u2570
u2571:
	goto	l2198
u2570:
	
l726:	
	line	62
;proyectoDos.c: 62: sentido = ~sentido;
	comf	(main@sentido),f
	goto	l2198
	line	63
	
l724:	
	line	64
	
l2198:	
;proyectoDos.c: 63: }
;proyectoDos.c: 64: if (sentido == right) {
	movf	(main@sentido),w
	xorwf	(_right),w
	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l2202
u2580:
	line	65
	
l2200:	
;proyectoDos.c: 65: PORTC >>= 1;
	clrc
	rrf	(7),f	;volatile

	line	66
;proyectoDos.c: 66: } else {
	goto	l2204
	
l727:	
	line	67
	
l2202:	
;proyectoDos.c: 67: PORTC <<= 1;
	clrc
	rlf	(7),f	;volatile

	goto	l2204
	line	68
	
l728:	
	line	69
	
l2204:	
;proyectoDos.c: 68: }
;proyectoDos.c: 69: contador = 0;
	clrf	(_contador)
	line	70
	
l723:	
	line	73
;proyectoDos.c: 70: }
;proyectoDos.c: 73: if (unidadesSegundos == 10) {
	movf	(_unidadesSegundos),w
	xorlw	0Ah
	skipz
	goto	u2591
	goto	u2590
u2591:
	goto	l2210
u2590:
	line	74
	
l2206:	
;proyectoDos.c: 74: unidadesSegundos = 0;
	clrf	(_unidadesSegundos)
	line	75
	
l2208:	
;proyectoDos.c: 75: decenasSegundos += 1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_decenasSegundos),f
	goto	l2210
	line	76
	
l729:	
	line	77
	
l2210:	
;proyectoDos.c: 76: }
;proyectoDos.c: 77: display1 = 1;
	clrf	(_display1)
	bsf	status,0
	rlf	(_display1),f
	line	78
	
l2212:	
;proyectoDos.c: 78: PORTA = numeros[unidadesSegundos];
	movf	(_unidadesSegundos),w
	addlw	_numeros&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(5)	;volatile
	line	79
	
l2214:	
;proyectoDos.c: 79: display1 = 0;
	clrf	(_display1)
	line	80
	
l2216:	
;proyectoDos.c: 80: if (decenasSegundos == 6) {
	movf	(_decenasSegundos),w
	xorlw	06h
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l2222
u2600:
	line	81
	
l2218:	
;proyectoDos.c: 81: decenasSegundos = 0;
	clrf	(_decenasSegundos)
	line	82
	
l2220:	
;proyectoDos.c: 82: unidadesMinutos += 1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_unidadesMinutos),f
	goto	l2222
	line	83
	
l730:	
	line	84
	
l2222:	
;proyectoDos.c: 83: }
;proyectoDos.c: 84: display2 = 1;
	clrf	(_display2)
	bsf	status,0
	rlf	(_display2),f
	line	85
	
l2224:	
;proyectoDos.c: 85: PORTA = numeros[decenasSegundos];
	movf	(_decenasSegundos),w
	addlw	_numeros&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(5)	;volatile
	line	86
	
l2226:	
;proyectoDos.c: 86: display2 = 0;
	clrf	(_display2)
	line	87
	
l2228:	
;proyectoDos.c: 87: if (unidadesMinutos == 10) {
	movf	(_unidadesMinutos),w
	xorlw	0Ah
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l2234
u2610:
	line	88
	
l2230:	
;proyectoDos.c: 88: unidadesMinutos = 0;
	clrf	(_unidadesMinutos)
	line	89
	
l2232:	
;proyectoDos.c: 89: decenasMinutos += 1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_decenasMinutos),f
	goto	l2234
	line	90
	
l731:	
	line	91
	
l2234:	
;proyectoDos.c: 90: }
;proyectoDos.c: 91: display3 = 1;
	clrf	(_display3)
	bsf	status,0
	rlf	(_display3),f
	line	92
	
l2236:	
;proyectoDos.c: 92: PORTA = numeros[unidadesMinutos];
	movf	(_unidadesMinutos),w
	addlw	_numeros&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(5)	;volatile
	line	93
	
l2238:	
;proyectoDos.c: 93: display3 = 0;
	clrf	(_display3)
	line	94
	
l2240:	
;proyectoDos.c: 94: if (decenasMinutos == 9 && unidadesMinutos == 9 && decenasSegundos == 5 && decenasMinutos == 9) {
	movf	(_decenasMinutos),w
	xorlw	09h
	skipz
	goto	u2621
	goto	u2620
u2621:
	goto	l2250
u2620:
	
l2242:	
	movf	(_unidadesMinutos),w
	xorlw	09h
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l2250
u2630:
	
l2244:	
	movf	(_decenasSegundos),w
	xorlw	05h
	skipz
	goto	u2641
	goto	u2640
u2641:
	goto	l2250
u2640:
	
l2246:	
	movf	(_decenasMinutos),w
	xorlw	09h
	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l2250
u2650:
	line	95
	
l2248:	
;proyectoDos.c: 95: unidadesSegundos = 0;
	clrf	(_unidadesSegundos)
	line	96
;proyectoDos.c: 96: decenasSegundos = 0;
	clrf	(_decenasSegundos)
	line	97
;proyectoDos.c: 97: unidadesMinutos = 0;
	clrf	(_unidadesMinutos)
	line	98
;proyectoDos.c: 98: decenasMinutos = 0;
	clrf	(_decenasMinutos)
	goto	l2250
	line	99
	
l732:	
	line	100
	
l2250:	
;proyectoDos.c: 99: }
;proyectoDos.c: 100: display4 = 1;
	clrf	(_display4)
	bsf	status,0
	rlf	(_display4),f
	line	101
	
l2252:	
;proyectoDos.c: 101: PORTA = numeros[decenasMinutos];
	movf	(_decenasMinutos),w
	addlw	_numeros&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(5)	;volatile
	line	102
	
l2254:	
;proyectoDos.c: 102: display4 = 0;
	clrf	(_display4)
	goto	l2186
	line	103
	
l733:	
	line	54
	goto	l2186
	
l734:	
	line	104
	
l735:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ConfigTMR1
psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:

;; *************** function _ConfigTMR1 *****************
;; Defined at:
;;		line 151 in file "C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text162
	file	"C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	line	151
	global	__size_of_ConfigTMR1
	__size_of_ConfigTMR1	equ	__end_of_ConfigTMR1-_ConfigTMR1
	
_ConfigTMR1:	
	opt	stack 6
; Regs used in _ConfigTMR1: [wreg]
	line	156
	
l2166:	
;proyectoDos.c: 156: TMR1 = -62500;
	movlw	low(0BDCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(14)	;volatile
	movlw	high(0BDCh)
	movwf	((14))+1	;volatile
	line	159
	
l2168:	
;proyectoDos.c: 159: GIE = 1;
	bsf	(95/8),(95)&7
	line	160
	
l2170:	
;proyectoDos.c: 160: PEIE = 1;
	bsf	(94/8),(94)&7
	line	161
	
l2172:	
;proyectoDos.c: 161: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	162
	
l749:	
	return
	opt stack 0
GLOBAL	__end_of_ConfigTMR1
	__end_of_ConfigTMR1:
;; =============== function _ConfigTMR1 ends ============

	signat	_ConfigTMR1,88
	global	_ConfigIntRB
psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:

;; *************** function _ConfigIntRB *****************
;; Defined at:
;;		line 140 in file "C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text163
	file	"C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	line	140
	global	__size_of_ConfigIntRB
	__size_of_ConfigIntRB	equ	__end_of_ConfigIntRB-_ConfigIntRB
	
_ConfigIntRB:	
	opt	stack 6
; Regs used in _ConfigIntRB: [wreg+status,2+status,0]
	line	144
	
l2160:	
;proyectoDos.c: 144: TRISB |= 0B11110000;
	movlw	(0F0h)
	movwf	(??_ConfigIntRB+0)+0
	movf	(??_ConfigIntRB+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(134)^080h,f	;volatile
	line	147
	
l2162:	
;proyectoDos.c: 147: GIE = 1;
	bsf	(95/8),(95)&7
	line	148
	
l2164:	
;proyectoDos.c: 148: RBIE = 1;
	bsf	(91/8),(91)&7
	line	149
	
l746:	
	return
	opt stack 0
GLOBAL	__end_of_ConfigIntRB
	__end_of_ConfigIntRB:
;; =============== function _ConfigIntRB ends ============

	signat	_ConfigIntRB,88
	global	_FunInt
psect	text164,local,class=CODE,delta=2
global __ptext164
__ptext164:

;; *************** function _FunInt *****************
;; Defined at:
;;		line 106 in file "C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text164
	file	"C:\Users\ether\OneDrive\Escritorio\Semestres Universidad\6TO SEMESTRE\ARQUITECTURA DE COMPUTADORES\CORTE 2\Proyecto2\..\PARCIAL2\proyectoDos.c"
	line	106
	global	__size_of_FunInt
	__size_of_FunInt	equ	__end_of_FunInt-_FunInt
	
_FunInt:	
	opt	stack 6
; Regs used in _FunInt: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_FunInt+1)
	movf	fsr0,w
	movwf	(??_FunInt+2)
	movf	pclath,w
	movwf	(??_FunInt+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_FunInt+4)
	ljmp	_FunInt
psect	text164
	line	107
	
i1l2036:	
;proyectoDos.c: 107: if (RBIF == 1 && RB4 == op) {
	btfss	(88/8),(88)&7
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l738
u234_20:
	
i1l2038:	
	movlw	0
	btfsc	(52/8),(52)&7
	movlw	1
	xorwf	(_op),w
	skipz
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l738
u235_20:
	line	109
	
i1l2040:	
;proyectoDos.c: 109: bandResortico = ~bandResortico;
	comf	(_bandResortico),f
	line	110
;proyectoDos.c: 110: RBIF = 0;
	bcf	(88/8),(88)&7
	line	111
	
i1l738:	
	line	112
;proyectoDos.c: 111: }
;proyectoDos.c: 112: if (RBIF == 1 && RB5 == op) {
	btfss	(88/8),(88)&7
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l2048
u236_20:
	
i1l2042:	
	movlw	0
	btfsc	(53/8),(53)&7
	movlw	1
	xorwf	(_op),w
	skipz
	goto	u237_21
	goto	u237_20
u237_21:
	goto	i1l2048
u237_20:
	line	114
	
i1l2044:	
;proyectoDos.c: 114: TMR1ON = ~TMR1ON;
	movlw	1<<((128)&7)
	xorwf	((128)/8),f
	line	115
	
i1l2046:	
;proyectoDos.c: 115: RBIF = 0;
	bcf	(88/8),(88)&7
	goto	i1l2048
	line	116
	
i1l739:	
	line	117
	
i1l2048:	
;proyectoDos.c: 116: }
;proyectoDos.c: 117: if (RBIF == 1 && RB6 == op) {
	btfss	(88/8),(88)&7
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l2064
u238_20:
	
i1l2050:	
	movlw	0
	btfsc	(54/8),(54)&7
	movlw	1
	xorwf	(_op),w
	skipz
	goto	u239_21
	goto	u239_20
u239_21:
	goto	i1l2064
u239_20:
	line	119
	
i1l2052:	
;proyectoDos.c: 119: TMR1 = -62500;
	movlw	low(0BDCh)
	movwf	(14)	;volatile
	movlw	high(0BDCh)
	movwf	((14))+1	;volatile
	line	120
	
i1l2054:	
;proyectoDos.c: 120: unidadesSegundos = 0;
	clrf	(_unidadesSegundos)
	line	121
	
i1l2056:	
;proyectoDos.c: 121: decenasSegundos = 0;
	clrf	(_decenasSegundos)
	line	122
	
i1l2058:	
;proyectoDos.c: 122: unidadesMinutos = 0;
	clrf	(_unidadesMinutos)
	line	123
	
i1l2060:	
;proyectoDos.c: 123: decenasMinutos = 0;
	clrf	(_decenasMinutos)
	line	124
	
i1l2062:	
;proyectoDos.c: 124: RBIF = 0;
	bcf	(88/8),(88)&7
	goto	i1l2064
	line	125
	
i1l740:	
	line	127
	
i1l2064:	
;proyectoDos.c: 125: }
;proyectoDos.c: 127: if (TMR1IF == 1) {
	btfss	(96/8),(96)&7
	goto	u240_21
	goto	u240_20
u240_21:
	goto	i1l743
u240_20:
	line	128
	
i1l2066:	
;proyectoDos.c: 128: TMR1 = -62500;
	movlw	low(0BDCh)
	movwf	(14)	;volatile
	movlw	high(0BDCh)
	movwf	((14))+1	;volatile
	line	131
	
i1l2068:	
;proyectoDos.c: 131: ContTimer += 1;
	movlw	(01h)
	movwf	(??_FunInt+0)+0
	movf	(??_FunInt+0)+0,w
	addwf	(_ContTimer),f
	line	132
	
i1l2070:	
;proyectoDos.c: 132: if (ContTimer == 2) {
	movf	(_ContTimer),w
	xorlw	02h
	skipz
	goto	u241_21
	goto	u241_20
u241_21:
	goto	i1l2076
u241_20:
	line	133
	
i1l2072:	
;proyectoDos.c: 133: unidadesSegundos += 1;
	movlw	(01h)
	movwf	(??_FunInt+0)+0
	movf	(??_FunInt+0)+0,w
	addwf	(_unidadesSegundos),f
	line	134
	
i1l2074:	
;proyectoDos.c: 134: ContTimer = 0;
	clrf	(_ContTimer)
	goto	i1l2076
	line	135
	
i1l742:	
	line	136
	
i1l2076:	
;proyectoDos.c: 135: }
;proyectoDos.c: 136: TMR1IF = 0;
	bcf	(96/8),(96)&7
	goto	i1l743
	line	137
	
i1l741:	
	line	138
	
i1l743:	
	movf	(??_FunInt+4),w
	movwf	btemp+1
	movf	(??_FunInt+3),w
	movwf	pclath
	movf	(??_FunInt+2),w
	movwf	fsr0
	swapf	(??_FunInt+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_FunInt
	__end_of_FunInt:
;; =============== function _FunInt ends ============

	signat	_FunInt,88
psect	text165,local,class=CODE,delta=2
global __ptext165
__ptext165:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
