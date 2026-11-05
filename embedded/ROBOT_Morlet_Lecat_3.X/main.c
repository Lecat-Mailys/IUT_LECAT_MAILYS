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
#include "main.h"

extern int fact_vitesse=0;
int main(void) {
    //Initialisation oscillateur
    InitOscillator();
    // Configuration des input et output (IO)
    InitIO();
    InitTimer1();
    InitTimer23();
    InitPWM();
    InitADC1();
    InitTimer4();

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
        if(tps_btn>=60000){
            fact_vitesse=0;
        }
        if(BTN){
            tps_btn=0;
            fact_vitesse=1;
        }

        if (ADCIsConversionFinished() == 1) {
            ADCClearConversionFinishedFlag();
            result = ADCGetResult();
            
            float volts = ((float) result [0])* 3.3 / 4096;
            robotState.distanceTelemetreExtremeGauche = 34 / volts - 5;
            volts = ((float) result [1])* 3.3 / 4096;
            robotState.distanceTelemetreGauche = 34 / volts - 5;
            volts = ((float) result [2])* 3.3 / 4096;
            robotState.distanceTelemetreCentre = 34 / volts - 5;
            volts = ((float) result [3])* 3.3 / 4096;
            robotState.distanceTelemetreDroit = 34 / volts - 5;
            volts = ((float) result [4])* 3.3 / 4096;
            robotState.distanceTelemetreExtremeDroit = 34 / volts - 5;
            
             if (robotState.distanceTelemetreExtremeGauche <= 25) {
                LED_BLANCHE_1 = 1;
            } else {
                LED_BLANCHE_1 = 0;
            }
            if (robotState.distanceTelemetreGauche <= 25) {
                LED_BLEUE_1 = 1;
            } else {
                LED_BLEUE_1 = 0;
            }

            if (robotState.distanceTelemetreCentre <= 25) {
                LED_ORANGE_1 = 1;
            } else {
                LED_ORANGE_1 = 0;
            }

            if (robotState.distanceTelemetreDroit <= 25) {
                LED_ROUGE_1 = 1;
            } else {
                LED_ROUGE_1 = 0;
            }
            if (robotState.distanceTelemetreExtremeDroit <= 25) {
                LED_VERTE_1 = 1;
            } else {
                LED_VERTE_1 = 0;
            }
        }


    }
}// fin main

unsigned char stateRobot;

void OperatingSystemLoop(void) {
    switch (stateRobot) {
        case STATE_ATTENTE:
            timestamp = 0;
            PWMSetSpeedConsigne(0, MOTEUR_DROIT);
            PWMSetSpeedConsigne(0, MOTEUR_GAUCHE);
            stateRobot = STATE_ATTENTE_EN_COURS;
        case STATE_ATTENTE_EN_COURS:
            if (timestamp > 1000)
                stateRobot = STATE_AVANCE;
            break;
        case STATE_AVANCE:
            PWMSetSpeedConsigne(20, MOTEUR_DROIT);
            PWMSetSpeedConsigne(20, MOTEUR_GAUCHE);
            stateRobot = STATE_AVANCE_EN_COURS;
            break;
        case STATE_AVANCE_EN_COURS:
            SetNextRobotStateInAutomaticMode();
            break;
        case STATE_TOURNE_GAUCHE:
            PWMSetSpeedConsigne(20, MOTEUR_DROIT);
            PWMSetSpeedConsigne(0, MOTEUR_GAUCHE);
            stateRobot = STATE_TOURNE_GAUCHE_EN_COURS;
            break;
        case STATE_TOURNE_GAUCHE_EN_COURS:
            SetNextRobotStateInAutomaticMode();
            break;
        case STATE_TOURNE_DROITE:
            PWMSetSpeedConsigne(0, MOTEUR_DROIT);
            PWMSetSpeedConsigne(20, MOTEUR_GAUCHE);
            stateRobot = STATE_TOURNE_DROITE_EN_COURS;
            break;
        case STATE_TOURNE_DROITE_EN_COURS:
            SetNextRobotStateInAutomaticMode();
            break;
        case STATE_TOURNE_SUR_PLACE_GAUCHE:
            PWMSetSpeedConsigne(15, MOTEUR_DROIT);
            PWMSetSpeedConsigne(-15, MOTEUR_GAUCHE);
            stateRobot = STATE_TOURNE_SUR_PLACE_GAUCHE_EN_COURS;
            break;
        case STATE_TOURNE_SUR_PLACE_GAUCHE_EN_COURS:
            SetNextRobotStateInAutomaticMode();
            break;
        case STATE_TOURNE_SUR_PLACE_DROITE:
            PWMSetSpeedConsigne(-15, MOTEUR_DROIT);
            PWMSetSpeedConsigne(15, MOTEUR_GAUCHE);
            stateRobot = STATE_TOURNE_SUR_PLACE_DROITE_EN_COURS;
            break;
        case STATE_TOURNE_SUR_PLACE_DROITE_EN_COURS:
            SetNextRobotStateInAutomaticMode();
            break;
        case STATE_LEGER_DROITE : 
            PWMSetSpeedConsigne(10, MOTEUR_DROIT);
            PWMSetSpeedConsigne(20, MOTEUR_GAUCHE);
            stateRobot = STATE_LEGER_DROITE_EN_COURS;
            break;
        case STATE_LEGER_DROITE_EN_COURS:
            SetNextRobotStateInAutomaticMode();
            break;
        case STATE_LEGER_GAUCHE : 
            PWMSetSpeedConsigne(20, MOTEUR_DROIT);
            PWMSetSpeedConsigne(10, MOTEUR_GAUCHE);
            stateRobot = STATE_LEGER_GAUCHE_EN_COURS;
            break;
        case STATE_LEGER_GAUCHE_EN_COURS:
            SetNextRobotStateInAutomaticMode();
            break;
        default:
            stateRobot = STATE_ATTENTE;
            break;
    }
}
unsigned char nextStateRobot = 0;

void SetNextRobotStateInAutomaticMode() {
    unsigned char positionObstacle = PAS_D_OBSTACLE;
    //ÈDtermination de la position des obstacles en fonction des ÈÈËtlmtres
    if (    (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit < 25 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit > 25 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)) //Obstacle ‡droite
        positionObstacle = OBSTACLE_A_DROITE;
    else if ((robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche > 25)||
            (robotState.distanceTelemetreExtremeDroit > 25 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit  >25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)
            ||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)) //Obstacle ‡gauche
        positionObstacle = OBSTACLE_A_GAUCHE;
    else if ((robotState.distanceTelemetreExtremeDroit < 15&&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)
            ||
            (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)
            ||
            (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)
            ||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)
            ||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)
            ||
            (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)) //Obstacle en face
        positionObstacle = OBSTACLE_EN_FACE_GAUCHE;
    else if ((robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)
            ||
            (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit < 25 &&
            robotState.distanceTelemetreCentre < 25 &&
            robotState.distanceTelemetreGauche < 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)
            )
        positionObstacle = OBSTACLE_EN_FACE_DROITE;
    else if ((robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)||
            (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)) //pas d?obstacle
        positionObstacle = PAS_D_OBSTACLE;
    else if (robotState.distanceTelemetreExtremeDroit < 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche > 15)
         positionObstacle = OBSTACLE_EXTREME_DROITE ;
    else if (robotState.distanceTelemetreExtremeDroit > 15 &&
            robotState.distanceTelemetreDroit > 25 &&
            robotState.distanceTelemetreCentre > 25 &&
            robotState.distanceTelemetreGauche > 25 &&
            robotState.distanceTelemetreExtremeGauche < 15)
         positionObstacle = OBSTACLE_EXTREME_GAUCHE ;
    //ÈDtermination de lÈ?tat ‡venir du robot 
    if (positionObstacle == PAS_D_OBSTACLE)
        nextStateRobot = STATE_AVANCE;
    else if (positionObstacle == OBSTACLE_A_DROITE)
        nextStateRobot = STATE_TOURNE_GAUCHE;
    else if (positionObstacle == OBSTACLE_A_GAUCHE)
        nextStateRobot = STATE_TOURNE_DROITE;
    else if (positionObstacle == OBSTACLE_EN_FACE_DROITE)
        nextStateRobot = STATE_TOURNE_SUR_PLACE_GAUCHE;
    else if (positionObstacle == OBSTACLE_EN_FACE_GAUCHE)
        nextStateRobot = STATE_TOURNE_SUR_PLACE_DROITE;
    else if (positionObstacle == OBSTACLE_EXTREME_DROITE)
        nextStateRobot = STATE_LEGER_GAUCHE;
    else if (positionObstacle == OBSTACLE_EXTREME_GAUCHE)
        nextStateRobot = STATE_LEGER_DROITE;
    //Si l?on n?est pas dans la transition de lÈ?tape en cours
    if (nextStateRobot != stateRobot - 1)
        stateRobot = nextStateRobot;
}