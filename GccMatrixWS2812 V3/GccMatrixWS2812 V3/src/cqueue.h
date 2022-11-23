#ifndef CQUEUE_H
#define CQUEUE_H

void QueueInit(void);
unsigned char PushQueue(unsigned char data);
unsigned char PullQueue(void);
unsigned char QueueStatus(void);
#define QOVERFLOW 0xFF


#endif
