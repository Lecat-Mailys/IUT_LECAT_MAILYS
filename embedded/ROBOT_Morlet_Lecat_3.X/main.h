/* 
 * File:   main.h
 * Author: E306-PC4
 *
 * Created on 22 septembre 2026, 08:35
 */

#ifndef MAIN_H
#define	MAIN_H
#define MOTEUR_DROIT 0
#define MOTEUR_GAUCHE 1
#define PWMPER 24.0
#define PI 3.141592653589793
//Affectation des pins des LEDS 
#define LED_BLANCHE_1 _LATJ6
#define LED_BLEUE_1 _LATJ5
#define LED_ORANGE_1 _LATJ4 
#define LED_ROUGE_1 _LATJ11
#define LED_VERTE_1 _LATH10
#define LED_BLANCHE_2 _LATA0
#define LED_BLEUE_2 _LATA9
#define LED_ORANGE_2 _LATK15 
#define LED_ROUGE_2 _LATA10
#define LED_VERTE_2 _LATH3
#define FCY 60000000
#define STATE_ATTENTE 0
#define STATE_ATTENTE_EN_COURS 1
#define STATE_AVANCE 2
#define STATE_AVANCE_EN_COURS 3
#define STATE_TOURNE_GAUCHE 4
#define STATE_TOURNE_GAUCHE_EN_COURS 5
#define STATE_TOURNE_DROITE 6
#define STATE_TOURNE_DROITE_EN_COURS 7
#define STATE_TOURNE_SUR_PLACE_GAUCHE 8
#define STATE_TOURNE_SUR_PLACE_GAUCHE_EN_COURS 9
#define STATE_TOURNE_SUR_PLACE_DROITE 10
#define STATE_TOURNE_SUR_PLACE_DROITE_EN_COURS 11
#define STATE_ARRET 12
#define STATE_ARRET_EN_COURS 13
#define STATE_RECULE 14
#define STATE_RECULE_EN_COURS 15
#define PAS_D_OBSTACLE 0
#define OBSTACLE_A_GAUCHE 1
#define OBSTACLE_A_DROITE 2
#define OBSTACLE_EN_FACE 3


#ifdef	__cplusplus
extern "C" {
#endif



void OperatingSystemLoop(void);
void SetNextRobotStateInAutomaticMode();
#ifdef	__cplusplus
}
#endif

#endif	/* MAIN_H */

