/*
 * ADC.h
 *
 * Created: 11/4/2022 6:45:52 PM
 *  Author: jacoby
 */ 


#ifndef ADC_H_
#define ADC_H_
#define VRX 5
#define VRY 4

void adc_init(void);            //Function to initialize/configure the ADC
uint16_t read_adc(uint8_t channel);    //Function to read an arbitrary analogic channel/pin
uint16_t read_VRX(void); 
uint16_t read_VRY(void); 

#endif /* ADC_H_ */