//Подключаем библиотеку в зависимости от компилятора
#include<8051.h>
//#include<reg51.h>
//#include<at89x51.h>

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

//Счетчик времени
unsigned char count10ms=0;

//Режим работы
//0 - показывать секунды
//1 - показывать минуты
//2 - показывать часы
unsigned char mode = 0;

//Указатель на столбец
unsigned char ptrColumn = 0;

//Время в секундах
unsigned char timeSec = 0;
//Время в минутах
unsigned char timeMin = 0;
//Время в часах
unsigned char timeHour = 0;

//Массивы для хранения цифр
//За светодиоды, которые должны гореть в столбце, отвечают первые 5 битов регистра P1
//Например, См (*)
unsigned char first[digitWidth];
unsigned char second[digitWidth];

//Функция записи цифры в массив
void setData(unsigned char digit, unsigned char *array)
{
	switch(digit)
	{
		//(*): если цира 0, то
		case 0:
			//В первый столбец записываем 1 + 2 + 4 + 8 + 16 = 1F = *****
			array[0] = 0x1F;
			//Во второй столбец записываем 1 + 16 = 11 = *---*
			array[1] = 0x11;
			//В третий столбец записываем 1 + 2 + 4 + 8 + 16 = 1F = *****
			array[2] = 0x1F;
			//Итого получаем *****
			//				 *---*
			//               *****
			//Повернуть по часовой стрелке; "*" - светодиод горит, "-" - светодиод не горит
			break;
		case 1:
			array[0] = 0x1F;
			array[1] = 0x02;
			array[2] = 0x04;
			break;
		case 2:
			array[0] = 0x17;
			array[1] = 0x15;
			array[2] = 0x1B;
			break;
		case 3:
			array[0] = 0x1F;
			array[1] = 0x15;
			array[2] = 0x15;
			break;
		case 4:
			array[0] = 0x1F;
			array[1] = 0x04;
			array[2] = 0x07;
			break;
		case 5:
			array[0] = 0x1D;
			array[1] = 0x15;
			array[2] = 0x17;
			break;
		case 6:
			array[0] = 0x1D;
			array[1] = 0x15;
			array[2] = 0x1F;
			break;
		case 7:
			array[0] = 0x03;
			array[1] = 0x05;
			array[2] = 0x19;
			break;
		case 8:
			array[0] = 0x1F;
			array[1] = 0x15;
			array[2] = 0x1F;
			break;
		case 9:
			array[0] = 0x1F;
			array[1] = 0x15;
			array[2] = 0x17;
			break;
	}
}

//Функция переключения столбца
void nextColumn(void){
	//Последние 3 бита регистра P1 отвечают за то, какой столбец показывать
	//Они подаются на дешифратор, который выдает значения из множества {0,1,2,3,4,5,6} (Последние три ножки дешифратора не используются)
	//Исходя из сказанного, в P1 нужно записать указатель на столбец смещенный на 5 битов влево побитно сложенный со значением из массива, хранящего цифру, по указателю 
	//Если 1 цифра, то берем из массива first
	//!!!Исправлено: поскольку на схеме появились транзисторные ключи на основе pnp транзистора, которые пропускают при нуле, постольку значение из массива нужно инвертировать
	//с отсечкой верхних трех битов или изменить функцию setData: инвертировать проще
	if (ptrColumn >= 0 && ptrColumn < 3)
		P1 = (ptrColumn << 5) | (first[ptrColumn]);
	//Если промежуток, то ничего не выводим
	if (ptrColumn == 3)
		P1 = (ptrColumn << 5); 
	//Если 2 цифра, то берем из массива second
	if (ptrColumn > 3 && ptrColumn <= 7)
		P1 = (ptrColumn << 5) | (second[ptrColumn - 4]);
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
			setData(timeSec/10, &second[0]);
			setData(timeSec%10, &first[0]);
			break;
		case 1:
			setData(timeMin/10, &second[0]);
			setData(timeMin%10, &first[0]);
			break;
		case 2:
			setData(timeHour/10, &second[0]);
			setData(timeHour%10, &first[0]);
			break;
	}
}

//Инициализация таймера
void T0init(void)
{
	TR0=0;
	TMOD=(TMOD&0xf0)|0x1;
	TL0=(~tik);
	TH0=(~tik)>>8;
	TR0=1;
	ET0=1; 
	EA=1;
}

//Прерывание таймера; в зависимости от компилятора нужно выбрать одну из строк
void T0_int (void) __interrupt (TF0_VECTOR)
{
//void T0_int (void) interrupt 1 {
	TR0=0;
	TL0=(~tik);
	TH0=(~tik)>>8;
	TR0=1;
	count10ms++;
}

//Пауза с помощью FOR
void delayFOR(unsigned char kodF)
{
	unsigned char ml;
	for(ml = 0; ml < kodF; ml++){}
}

//Пауза с заданным числом мс
void DelayMS(unsigned char KodMS)
{
	do delay1ms;
	while(--KodMS);
}

//Переключение режима
void buttonsCheck(void)
{
	//Переключение режимов
	if (!P3_0)
	{
		//Выключаем матрицу
		P1 = 0x1F;
		//На всякий случай игнорируем дребезг
		DelayMS(10);
		//Ждем отпускания
		while(!P3_0);
		//Игнорируем дребезг
		DelayMS(10);
		//Меняем режим с секунд на минуты, с минут на часы, с часов обратно на секунды
		mode++;
		if (mode == 3)
			mode = 0;
		//Устанавливаем правильные цифры в зависимости от режима
		setDigits();
	}
	//Сброс секундомера
	if (!P3_1)
	{
		//Сброс значений
		DelayMS(10);
		count10ms=0;
		//Время в секундах
		timeSec = 0;
		//Время в минутах
		timeMin = 0;
		//Время в часах
		timeHour = 0;
		DelayMS(10);
		setDigits();
	}
	//Пауза и старт секундомера
	if (!P3_2)
	{
		//Выключаем матрицу
		P1 = 0x1F;
		//На всякий случай игнорируем дребезг
		DelayMS(10);
		//Ждем отпускания
		while(!P3_2);
		//Игнорируем дребезг
		DelayMS(10);
		if (started) {
			started = 0;
		} else {
			started = 1;
		}
	}
}

void main(void)
{
	//Инициализируем таймер
	T0init();
	//Устанавливаем цивры (0, 0)
    setDigits();
	while(1)
	{
		//Проверяем не нажал ли пользователь на кнопку
		buttonsCheck();
		//Делаем паузу
		DelayMS(10);
		//Меняем столбец
		nextColumn();
		//Основное условие
		//В нем просто увеличивается время и устанавливаются цифры
		if (started)
		{
			if (count10ms >= 100)
			{
				count10ms -= 100;
				timeSec++;
				if (timeSec == 61)
				{
					timeSec = 0;
					timeMin++;
					if (timeMin == 61)
					{
						timeMin = 0;
						timeHour++;
						if (timeHour == 24)
							timeHour = 0;
					}
				}
				setDigits();
			}
		}
		//Примечание: в условие стоит больше, т.к. == может не сработать из-за обработки нажатия кнопки, в котором могут происходить значительные паузы
	}
}