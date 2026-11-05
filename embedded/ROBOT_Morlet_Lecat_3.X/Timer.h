#ifndef TIMER_H
#define TIMER_H
extern unsigned long timestamp;
extern volatile unsigned long tps_btn;
void SetFreqTimer1(float freq);
void InitTimer23(void);
void InitTimer1(void);
void InitTimer4(void);
void SetFreqTimer4(float freq);
#endif /* TIMER_H */
