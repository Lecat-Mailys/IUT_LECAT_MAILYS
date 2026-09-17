/* 
 * File:   main.c
 * Author: E306-PC4
 *
 * Created on September 3, 2026, 10:35 AM
 */

#include <stdio.h>
#include <stdlib.h>
#include <xc.h>
#include "ChipConfig.h"
#include "IO.h"
#include "Timer.h"
#include "PWM.h"
#include "Robot.h"
#include "ADC.h"

int main(void) {
    //Initialisation oscillateur
    InitOscillator();
    // Configuration des input et output (IO)
    InitIO();
    InitTimer1();
    InitTimer23();
    InitPWM();
    InitADC1();

    LED_BLANCHE_1 = 0;
    LED_BLEUE_1 = 0;
    LED_ORANGE_1 = 0;
    LED_ROUGE_1 = 0;
    LED_VERTE_1 = 0;

    LED_BLANCHE_2 = 0;
    LED_BLEUE_2 = 0;
    LED_ORANGE_2 = 0;
    LED_ROUGE_2 = 0;
    LED_VERTE_2 = 0;
    //Boucle principale
    unsigned int * result;
    //static int adcValue0;
    while (1) {

        
   /* PWMSetSpeedConsigne(20,MOTEUR_GAUCHE);
    PWMSetSpeedConsigne(20,MOTEUR_DROIT);*/



        if (ADCIsConversionFinished() == 1) {
            ADCClearConversionFinishedFlag();
            result = ADCGetResult();
            float volts = ((float) result [0])* 3.3 / 4096;
            robotState.distanceTelemetreGauche = 34 / volts - 5;
            volts = ((float) result [1])* 3.3 / 4096;
            robotState.distanceTelemetreCentre = 34 / volts - 5;
            volts = ((float) result [2])* 3.3 / 4096;
            robotState.distanceTelemetreDroit = 34 / volts - 5;
            if (robotState.distanceTelemetreGauche <= 30) {
                LED_BLEUE_2 = 1;
            } else {
                LED_BLEUE_2 = 0;
            }

            if (robotState.distanceTelemetreCentre <= 30) {
                LED_ORANGE_2 = 1;
            } else {
                LED_ORANGE_2 = 0;
            }

            if (robotState.distanceTelemetreDroit <= 30) {
                LED_ROUGE_2 = 1;
            } else {
                LED_ROUGE_2 = 0;
            }
        }

    }
}// fin main