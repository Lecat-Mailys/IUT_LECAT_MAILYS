/* 
 * File:   PWM.h
 * Author: E306-PC4
 *
 * Created on 14 septembre 2026, 08:37
 */
#include "main.h"
#ifndef PWM_H
#define	PWM_H


void InitPWM(void);
//void PWMSetSpeed(float vitesseEnPourcents, int moteur);
void PWMUpdateSpeed();
void PWMSetSpeedConsigne(float vitesseEnPourcents, char moteur);

#endif	/* PWM_H */

