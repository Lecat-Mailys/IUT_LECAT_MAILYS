/* 
 * File:   PWM.h
 * Author: E306-PC4
 *
 * Created on 14 septembre 2026, 08:37
 */

#ifndef PWM_H
#define	PWM_H
#define MOTEUR_DROIT 0
#define MOTEUR_GAUCHE 1
void InitPWM(void);
void PWMSetSpeed(float vitesseEnPourcents, int moteur);


#endif	/* PWM_H */

