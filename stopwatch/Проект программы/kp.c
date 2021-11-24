//Подключаем библиотеку
#include<reg51.h>

//Тик таймера
#define tik (10000)
//Число столбцов в матрице
#define countColumn 7
//Ширина цифры
#define digitWidth 3
//Пауза 1мс
#define delay1ms delayFOR(99)

//Запущен или нет
unsigned char started = 0;

//Режим работы
//0 - показывать 1/100 секунды
//1 - показывать секунды
//2 - показывать минуты
//3 - показывать часы
unsigned char mode = 1;

//Указатель на столбец
unsigned char ptrColumn = 0;

//Время в 1/100 секунды
unsigned char time10ms = 0;
//Время в секундах
unsigned char timeSec = 0;
//Время в минутах
unsigned char timeMin = 0;
//Время в часах
unsigned char timeHour = 0;

//Массивы для хранения цифр
data unsigned char first[digitWidth];
data unsigned char second[digitWidth];

//Функция записи цифры в массив
void setData(unsigned char digit, unsigned char data *array){
		switch(digit)
		{
			case 0:
				array[0] = 0x00;
				array[1] = 0x0E;
				array[2] = 0x00;
				break;
			case 1:
				array[0] = 0x1B;
				array[1] = 0x1D;
				array[2] = 0x00;
				break;
			case 2:
				array[0] = 0x04;
				array[1] = 0x0A;
				array[2] = 0x08;
				break;
			case 3:
				array[0] = 0x0A;
				array[1] = 0x0A;
				array[2] = 0x00;
				break;
			case 4:
				array[0] = 0x18;
				array[1] = 0x1B;
				array[2] = 0x00;
				break;
			case 5:
				array[0] = 0x08;
				array[1] = 0x0A;
				array[2] = 0x02;
				break;
			case 6:
				array[0] = 0x00;
				array[1] = 0x0A;
				array[2] = 0x02;
				break;
			case 7:
				array[0] = 0x06;
				array[1] = 0x1A;
				array[2] = 0x1C;
				break;
			case 8:
				array[0] = 0x00;
				array[1] = 0x0A;
				array[2] = 0x00;
				break;
			case 9:
				array[0] = 0x08;
				array[1] = 0x0A;
				array[2] = 0x00;
				break;
		}
}

//Функция переключения столбца
void nextColumn(void){
	//Последние 3 бита регистра P1 отвечают за то, какой столбец показывать
	//Они подаются на дешифратор, который выдает значения из множества {0,1,2,3,4,5,6} (Последние три ножки дешифратора не используются)
	//Исходя из сказанного, в P1 нужно записать указатель на столбец смещенный на 5 битов влево побитно сложенный со значением из массива, хранящего цифру, по указателю 
	if (ptrColumn >= 0 && ptrColumn < 3)
		P1 = (ptrColumn << 5) | first[ptrColumn];
	//Если промежуток, то ничего не выводим
	if (ptrColumn == 3)
		P1 = (ptrColumn << 5) | 0x1F;
	//Если 2 цифра, то берем из массива second
	if (ptrColumn > 3 && ptrColumn <= 7)
		P1 = (ptrColumn << 5) | second[ptrColumn - 4];
	//Переходим к следующему столбцу
	ptrColumn++;
	//Если столбец был последним, то переходим опять к первому
	if (ptrColumn == countColumn)
		ptrColumn = 0;
}

//Функция записи цифр в зависимости от режима
//Работает аналогично примеру из книги 
void setDigits()
{
	 switch(mode)
	 {
		 case 0:
			 setData(time10ms/10, &first[0]);
			 setData(time10ms%10, &second[0]);
			 break;
		 case 1:
			 setData(timeSec/10, &first[0]);
			 setData(timeSec%10, &second[0]);
			 break;
		 case 2:
			 setData(timeMin/10, &first[0]);
			 setData(timeMin%10, &second[0]);
			 break;
		 case 3:
			 setData(timeHour/10, &first[0]);
			 setData(timeHour%10, &second[0]);
			 break;
	 }
}

//Инициализация таймера
void T0init(void){
  TR0=0;
  TMOD=(TMOD&0xf0)|0x1;
  TL0=(~tik);
  TH0=(~tik)>>8;
  TR0=1;
  ET0=1; 
  EA=1;
}

//Прерывание таймера; 
void T0_int (void) interrupt 1 {
  TR0=0;
  TL0=(~tik);
  TH0=(~tik)>>8;
  TR0=1;
  if (started) {
		time10ms++;
		if (time10ms == 100) {
			time10ms = 0;
			timeSec++;
			if (timeSec == 60) {
					timeSec = 0;
					timeMin++;
					if (timeMin == 60) {
						 timeMin = 0;
						 timeHour++;
						 if (timeHour == 24)
							 timeHour = 0;
					}
			}
		}
		setDigits();
	}
}

//Пауза с помощью FOR
void delayFOR(unsigned char kodF){
	 unsigned char ml;
	 for(ml = 0; ml < kodF; ml++){}
}

//Пауза с заданным числом мс
void DelayMS(unsigned char KodMS) {
	 do delay1ms;
	 while(--KodMS);
}

//Обработка нажатия кнопок
void buttonsCheck(void){
	if (!RXD) {
			//Выключаем матрицу
			P1 = 0x1F;
			//Игнорируем дребезг
			DelayMS(10);
			//Ждем отпускания
			while(!RXD);
			//Игнорируем дребезг
			DelayMS(10);
			//Запускаем или останавливаем секундомер
			if (started) {
				started = 0;
			} else {
				started = 1;
			}
	}
	if (!TXD) {
			//Выключаем матрицу
			P1 = 0x1F;
			//Игнорируем дребезг
			DelayMS(10);
			//Ждем отпускания
			while(!TXD);
			//Игнорируем дребезг
			DelayMS(10);
			//Меняем режим
			mode++;
			if (mode == 4)
				mode = 0;
			//Устанавливаем правильные цифры в зависимости от режима
			setDigits();
	}
}

void main(void){
	//Инициализируем таймер
	T0init();
	//Устанавливаем цивры (0, 0)
    setDigits();
	while(1){
		//Проверяем не нажал ли пользователь на кнопку
		buttonsCheck();
		//Делаем паузу
		delayFOR(10);
		//Меняем столбец
		nextColumn();
	}
}
