/* Plantilla HI-TECH: 
   Codific?: Carlos H?ctor Cruz Vergara
   Fclk: 4 MHz.
   Compilador: HI-TECH Universal ToolSuite
**************************************************/
#include <htc.h>
__CONFIG(FOSC_XT & WDTE_OFF & PWRTE_ON & LVP_OFF); 
#define _XTAL_FREQ 4000000

#define IrqIntRB RBIF
#define IrqTMR1 TMR1IF

#define DISPLAY_1 RB0
#define DISPLAY_2 RB1
#define DISPLAY_3 RB2
#define DISPLAY_4 RB3
#define Pul1 RB4
#define Pul2 RB5
#define Pul3 RB6

unsigned char right = 0;
unsigned char left = 1;
unsigned char bandResortico = 1;
unsigned char op = 1;
unsigned char numeros[] = {
    0xFC, 0x60, 0xDA, 0xF2, 0x66, 0xB6, 0xBE, 0xE0, 0xFE, 0xF6
};
unsigned char display1 = 0;
unsigned char display2 = 0;
unsigned char display3 = 0;
unsigned char display4 = 0;
unsigned char ContTimer = 0;
unsigned char unidadesSegundos = 0;
unsigned char decenasSegundos = 0;
unsigned char unidadesMinutos = 0;
unsigned char decenasMinutos = 0;
unsigned char contador = 0;

// Declaración de funciones
void ConfigIntRB(void);
void ConfigTMR1(void);

void main(void) {
    // Aquí: Inicializaciones
	PORTC = 0x80;
	right = 0;
	left = 1;
	unsigned char sentido = left;
	bandResortico = 1;
	op = 1;
    ConfigIntRB();
    ConfigTMR1();

    while (1) {
        __delay_ms(1000); // 1 segundo en ms

        if (bandResortico == 1) {
            contador += 1;
        }
        if (contador == 130) {
            if (PORTC == 0x01 || PORTC == 0x80) {
                sentido = ~sentido;
            }
            if (sentido == right) {
                PORTC >>= 1;
            } else {
                PORTC <<= 1;
            }
            contador = 0;
        }

        // Cronómetro
        if (unidadesSegundos == 10) {
            unidadesSegundos = 0;
            decenasSegundos += 1;
        }
        display1 = 1;
        PORTA = numeros[unidadesSegundos];
        display1 = 0;
        if (decenasSegundos == 6) {
            decenasSegundos = 0;
            unidadesMinutos += 1;
        }
        display2 = 1;
        PORTA = numeros[decenasSegundos];
        display2 = 0;
        if (unidadesMinutos == 10) {
            unidadesMinutos = 0;
            decenasMinutos += 1;
        }
        display3 = 1;
        PORTA = numeros[unidadesMinutos];
        display3 = 0;
        if (decenasMinutos == 9 && unidadesMinutos == 9 && decenasSegundos == 5 && decenasMinutos == 9) {
            unidadesSegundos = 0;
            decenasSegundos = 0;
            unidadesMinutos = 0;
            decenasMinutos = 0;
        }
        display4 = 1;
        PORTA = numeros[decenasMinutos];
        display4 = 0;
    }
}

void interrupt FunInt(void) {
    if (IrqIntRB == 1 && Pul1 == op) {
        // Aquí: ISR de la Int. RB.
        bandResortico = ~bandResortico;
        IrqIntRB = 0; // Reposicion
    }
    if (IrqIntRB == 1 && Pul2 == op) {
        // Aquí: ISR de la Int. RB.
        TMR1ON = ~TMR1ON;
        IrqIntRB = 0; // Reposicion
    }
    if (IrqIntRB == 1 && Pul3 == op) {
        // Aquí: ISR de la Int. RB.
        TMR1 = -62500;
        unidadesSegundos = 0;
        decenasSegundos = 0;
        unidadesMinutos = 0;
        decenasMinutos = 0;
        IrqIntRB = 0; // Reposicion
    }

    if (IrqTMR1 == 1) {
        TMR1 = -62500;

        // Aquí: ISR del TIMER 1.
        ContTimer += 1;
        if (ContTimer == 2) {
            unidadesSegundos += 1;
            ContTimer = 0;
        }
        IrqTMR1 = 0; // Reposicion
    }
}

void ConfigIntRB(void) {
    // Configura y Habilita la interrupción del Puerto B

    // Configuración: Una opción
    TRISB |= 0B11110000; // Puertos RB7-RB4 de entrada

    // Habilitación:
    GIE = 1;
    RBIE = 1;
}

void ConfigTMR1(void) {
    // Configura y Habilita la interrupción del TMR1

    // Confguración: Dos aspectos
    // 1) Valor Inicial: TMR1 = -Cuenta
    TMR1 = -62500;

    // Habilitación: NO cambiar
    GIE = 1;
    PEIE = 1;
    TMR1IE = 1;
}
