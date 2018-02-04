﻿# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функционал: Проверка нажатия F11 на условие когда нет шагов ниже

	Как Разработчик я хочу
	Чтобы нажатие F11 на шаге с условием не вызывало модальных окон с ошибкой
	Для того чтобы я мог пользоваться F11



Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
	
Сценарий: Проверка нажатия F11 на условие когда нет шагов ниже
	Когда Я открываю VanessaBehavior в режиме TestClient
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ПроверкаРаботыF11ДляУсловияТестОшибки"
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Behavior TestClient
	И     в таблице "ДеревоТестов" я перехожу к строке:
		| 'Снипет'                                                                               | 'Наименование'                                                                         |
		| 'ЭтоСпециальноеУсловиеДляПроверкаРаботыF11ДляУсловияТестОшибкиТогда(Парам01,ТабПарам)' | 'Если Это специальное условие "Парам" для ПроверкаРаботыF11ДляУсловияТестОшибки Тогда' |

	И я выбираю пункт контекстного меню "Выполнить шаг" на элементе формы с именем "ДеревоТестов"	
	И пауза 1
	Если появилось окно с заголовком "1С:Предприятие" Тогда	
			Тогда я вызываю исключение "Появилось окно предупреждения, а не должно было появиться."
				
	Если в сообщениях пользователю есть строка "Слишком много фактических параметров" Тогда
			Тогда я вызываю исключение "Шаг не был выполнен по нажатию F11 из-за превышения количества передаваемых параметров в процедуру."