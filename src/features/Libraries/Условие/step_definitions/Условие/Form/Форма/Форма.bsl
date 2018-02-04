﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"Тогда(Парам01)","Условие","Если ""Истина"" тогда","Условие. Проверяет выражение встроенного языка","Встроенный язык","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВОкнеПредупрежденияНетТекстаТогда(Парам01)","ВОкнеПредупрежденияНетТекстаТогда","Если в окне предупреждения нет текста ""Нужный текст"" тогда","Условие. Истинно, когда в окне предупреждения нет искомого текста.","UI.Всплывающие окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВызываюИсключение(Парам01)","ЯВызываюИсключение","Тогда я вызываю исключение ""Текст исключения""","Вызывает исключение с нужным текстом","Встроенный язык");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПоявилосьОкноСЗаголовкомТогда(Парам01)","ПоявилосьОкноСЗаголовкомТогда","Если появилось окно с заголовком ""ИмяОкна"" Тогда","Условие. Проверяет, что на экране есть активное окно с нужным заголовком","UI.Окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВерсияПлатформыТогда(Парам01,Парам02)","ВерсияПлатформыТогда","Если Версия платформы "">="" ""8.3.6"" Тогда","Условие. Проверяет версию платформы","Прочее","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПолеИмеетЗначениеТогда(Парам01,Парам02)","ПолеИмеетЗначениеТогда","Если поле ""ИмяПоля"" имеет значение ""тест"" тогда","Условие. Проверяет значение поля.","UI.Формы.Поля.Проверка значения поля","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПолеСИменемИмеетЗначениеТогда(Парам01,Парам02)","ПолеСИменемИмеетЗначениеТогда","Если поле с именем ""ИмяПоля"" имеет значение ""тест"" тогда","Условие. Проверяет значение поля.","UI.Формы.Поля.Проверка значения поля","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеЕстьСтрокиТогда(Парам01,ТабПарам)","ВТаблицеЕстьСтрокиТогда","Если в таблице ""ИмяТаблицы"" есть строки Тогда" + Символы.ПС + Символы.Таб + "| 'Имя колонки' |" + Символы.ПС + Символы.Таб + "| 'Значение'               |","Условие. Истинно, если в таблице есть нужная строка/строки. Поиск строк производится через получение всех строк таблицы , а затем нужные строки будут искаться в полученных строках таблицы.","UI.Таблицы.Проверка значения таблицы.Таблица Gherkin.Условие","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеЕстьСтрокаТогда(Парам01,ТабПарам)","ВТаблицеЕстьСтрокаТогда","Если в таблице ""ИмяТаблицы"" есть строка Тогда" + Символы.ПС + Символы.Таб + "| 'Имя колонки' |" + Символы.ПС + Символы.Таб + "| 'Значение'               |","Условие. Истинно, если в таблице есть нужная строка. Допускается передвать только одну строку для поиска. Шаг пытается сделать переход к строке и возвращает Истина если это получилось сделать.","UI.Таблицы.Проверка значения таблицы.Таблица Gherkin.Условие","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеНетСтрокиТогда(Парам01,ТабПарам)","ВТаблицеНетСтрокиТогда","Если в таблице ""ИмяТаблицы"" нет строки Тогда"    + Символы.ПС + Символы.Таб + "| 'Имя колонки' |" + Символы.ПС + Символы.Таб + "| 'Значение'               |","Условие. Истинно, если в таблице нет нужной строки. Шаг пытается сделать переход к строке и возвращает Ложь если это получилось сделать.","UI.Таблицы.Проверка значения таблицы.Таблица Gherkin.Условие","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеНетСтрокТогда(Парам01,ТабПарам)","ВТаблицеНетСтрокТогда","Если в таблице ""ИмяТаблицы"" нет строк Тогда"       + Символы.ПС + Символы.Таб + "| 'Имя колонки' |" + Символы.ПС + Символы.Таб + "| 'Значение'               |","Условие. Истинно, если в таблице нет нужных строк.","UI.Таблицы.Проверка значения таблицы.Таблица Gherkin.Условие","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭлементНеПрисутствуетНаФормеТогда(Парам01)","ЭлементНеПрисутствуетНаФормеТогда","Если элемент ""ИмяЭлементаФормы"" не присутствует на форме Тогда","Условие. Проверяет видимость элемента на форме. Поиск поля производится по имени.","UI.Формы.Поля.Проверка видимости","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭлементПрисутствуетНаФормеТогда(Парам01)","ЭлементПрисутствуетНаФормеТогда","Если элемент ""ИмяЭлементаФормы"" присутствует на форме Тогда","Условие. Проверяет видимость элемента на форме. Поиск поля производится по имени.","UI.Формы.Поля.Проверка видимости","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ТекущееОкноОжидаемомуОкнуТогда(Парам01,Парам02)","ТекущееОкноОжидаемомуОкнуТогда","Если текущее окно ""не равно"" ожидаемому окну ""НужноеОкно"" Тогда","Условие. Проверяет что текущее окно равно/неравно нужному окну, которое запомнили ранее","UI.Окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТекущемОкнеЕстьСообщенияПользователюТогда()","ВТекущемОкнеЕстьСообщенияПользователюТогда","Если в текущем окне есть сообщения пользователю Тогда","Условие. Проверяет, что в текущем окне есть сообщения пользователю.","UI.Сообщения пользователю","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ИмяТекущейФормыТогда(Парам01)","ИмяТекущейФормыТогда","Если имя текущей формы ""ПечатьДокументов"" Тогда","Условие. Проверяет имя текущей формы","UI.Формы.Имя формы","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПоявилосьОкноСЗаголовкомИзТаблицыТогда(ТабПарам)","ПоявилосьОкноСЗаголовкомИзТаблицыТогда","Если появилось окно с заголовком из таблицы  Тогда","Условие. Проверяет, что есть окно с заголовком из таблицы","UI.Окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭтоНачальнаяСтраницаТогда()","ЭтоНачальнаяСтраницаТогда","Если это начальная страница Тогда","Условие. Проверяет, то текущее окно это начальная страница","UI.Окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭтоНеНачальнаяСтраницаТогда()","ЭтоНеНачальнаяСтраницаТогда","Если это не начальная страница Тогда","Условие. Проверяет, то текущее окно это не начальная страница","UI.Окна","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПеременнаяИмеетЗначениеТогда(Парам01,Парам02)","ПеременнаяИмеетЗначениеТогда","Если переменная ""ИмяПеременной"" имеет значение ""ЗначениеПеременной"" Тогда","Условие. Проверяет значение переменной контекста","Контекст.Контекст.Прочитать значение","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВСообщенияхПользователюЕстьСтрокаТогда(Парам01)","ВСообщенияхПользователюЕстьСтрокаТогда","Если в сообщениях пользователю есть строка ""МояСтрока"" Тогда","Условие. Проверяет, что в сообщениях пользователю содержится нужная строка или подстрока.","UI.Сообщения пользователю","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТаблицеЕстьКолонкиТогда(Парам01,ТабПарам)","ВТаблицеЕстьКолонкиТогда","Если в таблице ""Результат"" есть колонки Тогда" + Символы.ПС + "	| 'Колонка1' |" + Символы.ПС + "	| 'Колонка2' |","Условие. Проверяет, есть ли в таблице указанные колоноки. Заголовки колонок надо передать в шаг в виде таблицы Gherkin.","UI.Таблицы.Проверка состава колонок","Условие");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭлементДоступенДляРедактированияТогда(Парам01)","ЭлементДоступенДляРедактированияТогда","Если элемент ""ИмяЭлементаФормы"" доступен для редактирования Тогда","Условие. Проверяет доступность элемента на форме. Поиск поля производится по имени.","UI.Формы.Поля.Проверка доступности","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЭлементНеДоступенДляРедактированияТогда(Парам01)","ЭлементНеДоступенДляРедактированияТогда","Если элемент ""ИмяЭлементаФормы"" не доступен для редактирования Тогда","Условие. Проверяет доступность элемента на форме. Поиск поля производится по имени.","UI.Формы.Поля.Проверка доступности","Условие");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПолеСталоРавноВТечениеСекундТогда(Парам01,Парам02,Парам03)","ПолеСталоРавноВТечениеСекундТогда","Если поле ""ИмяПоля"" стало равно ""ЗначениеПоля"" в течение 10 секунд Тогда","Условие. Проверяет значение поля формы в течение нужного числа секунд.","UI.Формы.Поля.Проверка значения поля","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПолеСИменемСталоРавноВТечениеСекундТогда(Парам01,Парам02,Парам03)","ПолеСИменемСталоРавноВТечениеСекундТогда","Если поле с именем ""ИмяПоля"" стало равно ""ЗначениеПоля"" в течение 10 секунд Тогда","Условие. Проверяет значение поля формы в течение нужного числа секунд. Поиск поля производится по имени.","UI.Формы.Поля.Проверка значения поля","Условие");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПоявилосьОкноСЗаголовкомВТечениеСекундТогда(Парам01,Парам02)","ПоявилосьОкноСЗаголовкомВТечениеСекундТогда","Если появилось окно с заголовком ""ИмяОкна"" в течение 10 секунд Тогда","Условие. Проверяет, что на экране появилось окно с нужным заголовком в течение нужного числа секунд","UI.Окна","Условие");
	
	
	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции


&НаКлиенте
Функция ДобавитьНулейСлева(Стр,КолНулей)
	Пока СтрДлина(Стр) < КолНулей Цикл
		Стр = "0" + Стр;
	КонецЦикла;	
	
	Возврат Стр;
КонецФункции	

&НаКлиенте
Процедура ПреобразоватьСтрокуВерсии(Стр)
	Массив = Ванесса.РазложитьСтрокуВМассивПодстрокКлиент(Стр, ".");
	Пока Массив.Количество() < 4 Цикл
		Массив.Добавить("0");
	КонецЦикла;	
	
	Для Ккк = 0 По Массив.Количество()-1 Цикл
		Массив[Ккк] = ДобавитьНулейСлева(Массив[Ккк],10);
	КонецЦикла;	
	
	
	Стр = "";
	Для Каждого Элем Из Массив Цикл
		Стр = Стр + Элем + ".";
	КонецЦикла;	
	
	//убрали лишнюю точку
	Стр = Лев(Стр,СтрДлина(Стр)-1);
КонецПроцедуры


///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Если "Истина" тогда
//@Тогда(Парам01)
Процедура Условие(Выражение) Экспорт
	Результат = Ванесса.ВычислитьВнутреннееВыражение(Выражение);
	Если Результат Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Если в окне предупреждения нет текста "Нужный текст" тогда
//@ВОкнеПредупрежденияНетТекстаТогда(Парам01)
Процедура ВОкнеПредупрежденияНетТекстаТогда(ИскомыйТекст) Экспорт
	ОкноПредупреждения = Ванесса.НайтиОкноПредупреждения();
	Если ОкноПредупреждения = Неопределено Тогда
		ВызватьИсключение "Не найдено окно предупреждения";
	КонецЕсли;	 
	
	ТекстПредупреждения = Ванесса.ПолучитьТекстОкнаПредупреждения(ОкноПредупреждения);
	
	
	Если Найти(НРег(ТекстПредупреждения),НРег(ИскомыйТекст)) = 0 Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
	
	
КонецПроцедуры


&НаКлиенте
//Тогда я вызываю исключение "Текст исключения"
//@ЯВызываюИсключение(Парам01)
Процедура ЯВызываюИсключение(Текст) Экспорт
	Результат = Ванесса.ПолучитьСтрокуВычисливВнутренниеВыражения(Текст);	
	ВызватьИсключение Результат;
КонецПроцедуры

&НаКлиенте
//Если появилось окно с заголовком "ИмяОкна" Тогда
//@ПоявилосьОкноСЗаголовкомТогда(Парам01)
Процедура ПоявилосьОкноСЗаголовкомТогда(ЗаголовокОкна,ЧастьИмени2 = Неопределено
	                           ,ЧастьИмени3 = Неопределено
	                           ,ЧастьИмени4 = Неопределено
	                           ,ЧастьИмени5 = Неопределено
	                           ,ЧастьИмени6 = Неопределено
	                           ,ЧастьИмени7 = Неопределено) Экспорт
							   
	Ванесса.СоеденитьСтрокиЕслиЭтоВозможно(ЗаголовокОкна,ЧастьИмени2,
	                                       ЧастьИмени3,
	                                       ЧастьИмени4,
	                                       ЧастьИмени5,
	                                       ЧастьИмени6,
	                                       ЧастьИмени7);							   
							   
							   
	АктивноеОкно = Ванесса.НайтиОкноTestClientПоЗаголовку(ЗаголовокОкна);
	
	Ванесса.ОбработатьСменуАктивногоОкна();
	
	Если АктивноеОкно = Неопределено Тогда
		Ванесса.УстановитьРезультатУсловия(Ложь);
	Иначе
		Ванесса.УстановитьРезультатУсловия(Истина);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Если Версия платформы ">=" "8.3.6" Тогда
//@ВерсияПлатформыТогда(Парам01,Парам02)
Процедура ВерсияПлатформыТогда(Знач ВидСравнения,Знач НужнаяВерсия) Экспорт
	ВидСравнения = Ванесса.ПолучитьОператорПоТексту(ВидСравнения);
	
	СистемнаяИнформация = Новый СистемнаяИнформация;
	ТекущаяВерсия       = СистемнаяИнформация.ВерсияПриложения;
	
	ПреобразоватьСтрокуВерсии(ТекущаяВерсия);
	ПреобразоватьСтрокуВерсии(НужнаяВерсия);
	
	//Сообщить("ТекущаяВерсия="+ТекущаяВерсия);
	//Сообщить("НужнаяВерсия= "+НужнаяВерсия);
	
	
	ЗначениеСравнения = Неопределено;
	Выражение = "ЗначениеСравнения = (ТекущаяВерсия " + ВидСравнения + " НужнаяВерсия)";
	Выполнить(Выражение);
	Ванесса.УстановитьРезультатУсловия(ЗначениеСравнения);
КонецПроцедуры

&НаКлиенте
//Если поле "РеквизитСтрока" имеет значение "тест" тогда
//@ПолеИмеетЗначениеТогда(Парам01,Парам02)
Процедура ПолеИмеетЗначениеТогда(ИмяЭлемента,НужноеЗначение,ИскатьПоИмени = Ложь) Экспорт
	Значение = Ванесса.ПолучитьЗначениеРеквизитаОткрытойФормыПоЗаголовку(ИмяЭлемента,ИскатьПоИмени);
	Если Значение = НужноеЗначение Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Если поле с именем "РеквизитСтрока" имеет значение "тест" тогда
//@ПолеСИменемИмеетЗначениеТогда(Парам01,Парам02)
Процедура ПолеСИменемИмеетЗначениеТогда(ИмяЭлемента,НужноеЗначение) Экспорт
	ПолеИмеетЗначениеТогда(ИмяЭлемента,НужноеЗначение,Истина);
КонецПроцедуры

&НаКлиенте
//Если в таблице "ТабличнаяЧасть1" есть строки Тогда
//@ВТаблицеЕстьСтрокиТогда(Парам01,ТабПарам)
Процедура ВТаблицеЕстьСтрокиТогда(ИмяТЧ,ТабПарам) Экспорт
	ТЧ         = Ванесса.НайтиТЧПоИмени(ИмяТЧ);
	ЗначениеТЧ = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	
	Если ТипЗнч(ЗначениеТЧ) = Тип("Массив") Или ТипЗнч(ЗначениеТЧ) = Тип("ФиксированныйМассив") Тогда
		Если ЗначениеТЧ.Количество() = 0 Тогда
			//значит таблица пустая и строки точно нет
			Ванесса.УстановитьРезультатУсловия(Ложь);
			Возврат;
		КонецЕсли;	 
	КонецЕсли;	 
	
	СтрокаОшибки = "";
	СтрокаНайдена = Ванесса.СтрокиОжидаемойТаблицыСодержатсяВТаблицеTestclient(ТабПарам,ЗначениеТЧ,СтрокаОшибки);
	
	Ванесса.УстановитьРезультатУсловия(СтрокаНайдена);
КонецПроцедуры

&НаКлиенте
//Если в таблице "ТабличнаяЧасть1" нет строк Тогда
//@ВТаблицеНетСтрокТогда(Парам01,ТабПарам)
Процедура ВТаблицеНетСтрокТогда(ИмяТЧ,ТабПарам) Экспорт
	ТЧ         = Ванесса.НайтиТЧПоИмени(ИмяТЧ);
	ЗначениеТЧ = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	
	Если ТипЗнч(ЗначениеТЧ) = Тип("Массив") Или ТипЗнч(ЗначениеТЧ) = Тип("ФиксированныйМассив") Тогда
		Если ЗначениеТЧ.Количество() = 0 Тогда
			//значит таблица пустая и строки точно нет
			Ванесса.УстановитьРезультатУсловия(Истина);
			Возврат;
		КонецЕсли;	 
	КонецЕсли;	 
	
	СтрокаОшибки = "";
	СтрокаНайдена = НЕ Ванесса.СтрокиОжидаемойТаблицыСодержатсяВТаблицеTestclient(ТабПарам,ЗначениеТЧ,СтрокаОшибки);
	
	Ванесса.УстановитьРезультатУсловия(СтрокаНайдена);
КонецПроцедуры

&НаКлиенте
//Если в таблице "ТабличнаяЧасть1" есть строка Тогда
//@ВТаблицеЕстьСтрокаТогда(Парам01,ТабПарам)
Процедура ВТаблицеЕстьСтрокаТогда(ИмяТЧ,ТабПарам) Экспорт
	Если ТабПарам.Количество() <> 2 Тогда
		ВызватьИсключение "Шаг принимает на вход только таблицу Gherkin, в которой две строки. А было передано " + ТабПарам.Количество() + " строк.";
	КонецЕсли;	 
	
	Таблица        = Ванесса.НайтиТЧПоИмени(ИмяТЧ);
	ОписаниеСтроки = Ванесса.ПолучитьОписаниеСтрокиИзТаблицы(ТабПарам,ИмяТЧ);
	
	ОшибкаПереходВниз  = "";
	ОшибкаПереходВверх = "";
	ПолучилосьПерейти = Ванесса.СделатьПереход(Таблица,ОписаниеСтроки,ОшибкаПереходВниз,ОшибкаПереходВверх);
	
	Ванесса.УстановитьРезультатУсловия(ПолучилосьПерейти);
КонецПроцедуры

&НаКлиенте
//Если в таблице "ТабличнаяЧасть1" нет строки Тогда
//@ВТаблицеНетСтрокиТогда(Парам01,ТабПарам)
Процедура ВТаблицеНетСтрокиТогда(ИмяТЧ,ТабПарам) Экспорт
	Если ТабПарам.Количество() <> 2 Тогда
		ВызватьИсключение "Шаг принимает на вход только таблицу Gherkin, в которой две строки. А было передано " + ТабПарам.Количество() + " строк.";
	КонецЕсли;	 
	
	Таблица        = Ванесса.НайтиТЧПоИмени(ИмяТЧ);
	ОписаниеСтроки = Ванесса.ПолучитьОписаниеСтрокиИзТаблицы(ТабПарам,ИмяТЧ);
	
	ОшибкаПереходВниз  = "";
	ОшибкаПереходВверх = "";
	ПолучилосьПерейти = Ванесса.СделатьПереход(Таблица,ОписаниеСтроки,ОшибкаПереходВниз,ОшибкаПереходВверх);
	
	Ванесса.УстановитьРезультатУсловия(НЕ ПолучилосьПерейти);
КонецПроцедуры

&НаКлиенте
//Если элемент "СтраницаТекущаяПечатнаяФорма" не присутствует на форме Тогда
//@ЭлементНеПрисутствуетНаФормеТогда(Парам01)
Процедура ЭлементНеПрисутствуетНаФормеТогда(ИмяПоля) Экспорт
	Поле = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяПоля,Истина,Ложь);
	
	Если Поле = Неопределено Тогда
		//Значит поля нет вообще.
		Ванесса.УстановитьРезультатУсловия(Истина);
		Возврат;
	КонецЕсли;	 
	
	Ванесса.УстановитьРезультатУсловия(НЕ Поле.ТекущаяВидимость());
КонецПроцедуры

&НаКлиенте
//Если элемент "СтраницаТекущаяПечатнаяФорма" присутствует на форме Тогда
//@ЭлементПрисутствуетНаФормеТогда(Парам01)
Процедура ЭлементПрисутствуетНаФормеТогда(ИмяПоля) Экспорт
	Поле = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяПоля,Истина,Ложь);
	
	Если Поле = Неопределено Тогда
		//Значит поля нет вообще.
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецЕсли;	 
	
	Ванесса.УстановитьРезультатУсловия(Поле.ТекущаяВидимость());
КонецПроцедуры

&НаКлиенте
//Если текущее окно "не равно" ожидаемому окну "НужноеОкно" Тогда
//@ТекущееОкноОжидаемомуОкнуТогда(Парам01,Парам02)
Процедура ТекущееОкноОжидаемомуОкнуТогда(Знач ВидСравнения,ИмяПеременной) Экспорт
	ВидСравнения = Ванесса.ПолучитьОператорПоТексту(ВидСравнения);
	
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	
	Ванесса.ОбработатьСменуАктивногоОкна();
	
	НужноеЗначениеЗаголовка = Контекст[ИмяПеременной];
	
	ЗначениеСравнения = Неопределено;
	Выражение = "ЗначениеСравнения = (АктивноеОкно.Заголовок " + ВидСравнения + " НужноеЗначениеЗаголовка)";
	Выполнить(Выражение);
	Ванесса.УстановитьРезультатУсловия(ЗначениеСравнения);
КонецПроцедуры

&НаКлиенте
//Если в текущем окне есть сообщения пользователю Тогда
//@ВТекущемОкнеЕстьСообщенияПользователюТогда()
Процедура ВТекущемОкнеЕстьСообщенияПользователюТогда() Экспорт
	АктивноеОкно    = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	Попытка
		МассивСообщений = АктивноеОкно.ПолучитьТекстыСообщенийПользователю();
	Исключение
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецПопытки;
	
	Если МассивСообщений.Количество() > 0 Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	
	
КонецПроцедуры

&НаКлиенте
//Если имя текущей формы "ПечатьДокументов" Тогда
//@ИмяТекущейФормыТогда(Парам01)
Процедура ИмяТекущейФормыТогда(ИмяФормы) Экспорт
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	ТекФорма     = АктивноеОкно.НайтиОбъект(Тип("ТестируемаяФорма"));
	
	Если ТекФорма.ИмяФормы = ИмяФормы Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры


&НаКлиенте
//Если появилось окно с заголовком из таблицы  Тогда
//@ПоявилосьОкноСЗаголовкомИзТаблицыТогда(ТабПарам)
Процедура ПоявилосьОкноСЗаголовкомИзТаблицыТогда(ТабПарам) Экспорт
	ВсеОкна = КонтекстСохраняемый.ТестовоеПриложение.НайтиОбъекты(Тип("ТестируемоеОкноКлиентскогоПриложения"));
	МассивЗаголовков = Новый Массив;
	
	Для Каждого ТекОкно Из ВсеОкна Цикл
		МассивЗаголовков.Добавить(НРег(ТекОкно.Заголовок));
	КонецЦикла;	
	
	Ванесса.ОбработатьСменуАктивногоОкна();
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		СтрокаПоиска = НРег(СтрокаТабПарам.Кол1);
		Для Каждого ЗаголовокОкна Из МассивЗаголовков Цикл
			Если Найти(ЗаголовокОкна,СтрокаПоиска) > 0 Тогда
				Ванесса.УстановитьРезультатУсловия(Истина);
				Возврат;
			КонецЕсли;	 
		КонецЦикла;	
	КонецЦикла;	
	
	Ванесса.УстановитьРезультатУсловия(Ложь);
КонецПроцедуры

&НаКлиенте
//Если это не начальная страница Тогда
//@ЭтоНеНачальнаяСтраницаТогда()
Процедура ЭтоНеНачальнаяСтраницаТогда() Экспорт
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	
	Ванесса.ОбработатьСменуАктивногоОкна();
	
	Если АктивноеОкно.НачальнаяСтраница Тогда
		Ванесса.УстановитьРезультатУсловия(Ложь);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Истина);
	КонецЕсли;	 
	
КонецПроцедуры

&НаКлиенте
//Если это начальная страница Тогда
//@ЭтоНачальнаяСтраницаТогда()
Процедура ЭтоНачальнаяСтраницаТогда() Экспорт
	АктивноеОкно = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	
	Ванесса.ОбработатьСменуАктивногоОкна();
	
	Если НЕ АктивноеОкно.НачальнаяСтраница Тогда
		Ванесса.УстановитьРезультатУсловия(Ложь);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Истина);
	КонецЕсли;	 
	
КонецПроцедуры

&НаКлиенте
//Если переменная "ЗначениеВариантЗаполненияСостава" имеет значение "Отбор" Тогда
//@ПеременнаяИмеетЗначениеТогда(Парам01,Парам02)
Процедура ПеременнаяИмеетЗначениеТогда(ИмяПеременной,Значение) Экспорт
	Если НЕ Контекст.Свойство(ИмяПеременной) Тогда
		ВызватьИсключение "Переменная <" + ИмяПеременной + "> не найдена.";
	КонецЕсли;
	
	ТекЗначение = Контекст[ИмяПеременной];
	Ванесса.УстановитьРезультатУсловия(ТекЗначение = Значение);
КонецПроцедуры

&НаКлиенте
//Если в сообщениях пользователю есть строка "МояСтрока" Тогда
//@ВСообщенияхПользователюЕстьСтрокаТогда(Парам01)
Процедура ВСообщенияхПользователюЕстьСтрокаТогда(Стр) Экспорт
	АктивноеОкно    = Ванесса.ПолучитьАктивноеОкноИзТестовоеПриложение();
	Попытка
		МассивСообщений = АктивноеОкно.ПолучитьТекстыСообщенийПользователю();
	Исключение
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецПопытки;
	
	Если МассивСообщений = Неопределено Тогда
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецЕсли;	 
	
	Нашли = Ложь;
	Для Каждого Сообщение Из МассивСообщений Цикл
		Если Найти(НРег(Сообщение),НРег(Стр)) > 0 Тогда
			Нашли = Истина;
			Прервать;
		КонецЕсли;	 
	КонецЦикла;	
	
	Ванесса.УстановитьРезультатУсловия(Нашли);
КонецПроцедуры

&НаКлиенте
//Если в таблице "Результат" есть колонки Тогда
//@ВТаблицеЕстьКолонкиТогда(Парам01,ТабПарам)
Процедура ВТаблицеЕстьКолонкиТогда(ИмяТЧ,ТабПарам) Экспорт
	ТЧ         = Ванесса.НайтиТЧПоИмени(ИмяТЧ);
	ЗначениеТЧ = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	
	Если ЗначениеТЧ = Неопределено Тогда
		ВызватьИсключение "Не смог получить состяние таблицы <" + ИмяТЧ + ">";
	КонецЕсли;	 
	
	Если ЗначениеТЧ.Количество() = 0 Тогда
		ВызватьИсключение "Нельзя получить состав колонок для пустой таблицы.";
	КонецЕсли;	 
	
	СтрокаСКолонками = ЗначениеТЧ[0];
	
	//Ванесса.ПосмотретьЗначение(СтрокаСКолонками);
	
	НашлиВсеКолонки = Истина;
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ИмяНужнойКолонки = СтрокаТабПарам.Кол1;
		ЗначениеВСоответствии = СтрокаСКолонками[ИмяНужнойКолонки];
		Если ЗначениеВСоответствии = Неопределено Тогда
			Сообщить("Не нашел колонку: " + ИмяНужнойКолонки);
			НашлиВсеКолонки = Ложь;
			Прервать;
		КонецЕсли;	 
	КонецЦикла;	
	
	Ванесса.УстановитьРезультатУсловия(НашлиВсеКолонки);
	
КонецПроцедуры

&НаКлиенте
//Если элемент "ИмяЭлементаФормы" доступен для редактирования Тогда
//@ЭлементДоступенДляРедактированияТогда(Парам01)
Процедура ЭлементДоступенДляРедактированияТогда(ИмяПоля) Экспорт
	Поле = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяПоля,Истина,Ложь);
	
	Если Поле = Неопределено Тогда
		//Значит поля нет вообще.
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецЕсли;	 
	
	Ванесса.УстановитьРезультатУсловия(Поле.ТекущаяДоступность());
КонецПроцедуры

&НаКлиенте
//Если элемент "ИмяЭлементаФормы" не доступен для редактирования Тогда
//@ЭлементНеДоступенДляРедактированияТогда(Парам01)
Процедура ЭлементНеДоступенДляРедактированияТогда(ИмяПоля) Экспорт
	Поле = Ванесса.НайтиРеквизитОткрытойФормыПоЗаголовку(ИмяПоля,Истина,Ложь);
	
	Если Поле = Неопределено Тогда
		//Значит поля нет вообще.
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Возврат;
	КонецЕсли;	 
	
	Ванесса.УстановитьРезультатУсловия(НЕ Поле.ТекущаяДоступность());
КонецПроцедуры


&НаКлиенте
Процедура ОбработичкОжиданияПолеСталоРавноВТечениеСекундТогда()
	ИмяОбработчикаОжидания = "ОбработичкОжиданияПолеСталоРавноВТечениеСекундТогда";
	
	Попытка
		ТекущееЗначение = Ванесса.ПолучитьЗначениеРеквизитаОткрытойФормыПоЗаголовку(ИмяПоляОбработкаОжидания,ИскатьПоИмениОбрабткаОжидания);
	Исключение
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;
	
	Если НРег(ЗначениеОбрабткаОжидания) = НРег(ТекущееЗначение) Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.УстановитьРезультатУсловия(Истина);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат;
	КонецЕсли;	 
	
	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) > КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат;
	КонецЕсли;	 
	
КонецПроцедуры

&НаКлиенте
//Если поле "Наименование" стало равно "Тестовый Элемент 2" в течение 10 секунд Тогда
//@ПолеСталоРавноВТечениеСекундТогда(Парам01,Парам02,Парам03)
Процедура ПолеСталоРавноВТечениеСекундТогда(ИмяПоля,Значение,КоличествоСекунд,ИскатьПоИмени = Ложь) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();
	
	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	ИмяПоляОбработкаОжидания          = ИмяПоля;
	ИскатьПоИмениОбрабткаОжидания     = ИскатьПоИмени;
	ЗначениеОбрабткаОжидания          = Значение;
	КоличествоСекундОбработкаОжидания = КоличествоСекунд;
	ПодключитьОбработчикОжидания("ОбработичкОжиданияПолеСталоРавноВТечениеСекундТогда",1,Ложь);
КонецПроцедуры

&НаКлиенте
//Если поле с именем "Наименование" стало равно "Тестовый Элемент 2" в течение 10 секунд Тогда
//@ПолеСИменемСталоРавноВТечениеСекундТогда(Парам01,Парам02,Парам03)
Процедура ПолеСИменемСталоРавноВТечениеСекундТогда(ИмяПоля,ЗначениеПоля,КоличествоСекунд) Экспорт
	ПолеСталоРавноВТечениеСекундТогда(ИмяПоля,ЗначениеПоля,КоличествоСекунд,Истина);
КонецПроцедуры




&НаКлиенте
Процедура ОбработичкОжиданияПоявилосьОкноСЗаголовкомВТечениеСекундТогда()
	ИмяОбработчикаОжидания = "ОбработичкОжиданияПоявилосьОкноСЗаголовкомВТечениеСекундТогда";
	
	Попытка
		АктивноеОкно = Ванесса.НайтиОкноTestClientПоЗаголовку(ИмяОкнаОбработкаОжидания);
	Исключение
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Ванесса.ПродолжитьВыполнениеШагов(Истина,ОписаниеОшибки());
		Возврат;
	КонецПопытки;
	
	Если АктивноеОкно <> Неопределено Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.УстановитьРезультатУсловия(Истина);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат;
	КонецЕсли;	 
	
	Если (ТекущаяДата() - ДатаНачалаОбработкиОжидания) > КоличествоСекундОбработкаОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчикаОжидания);
		Ванесса.УстановитьРезультатУсловия(Ложь);
		Ванесса.ПродолжитьВыполнениеШагов();
		Возврат;
	КонецЕсли;	 
	
КонецПроцедуры


&НаКлиенте
//Если появилось окно с заголовком "ИмяОкна" в течение 10 секунд Тогда
//@ПоявилосьОкноСЗаголовкомВТечениеСекундТогда(Парам01,Парам02)
Процедура ПоявилосьОкноСЗаголовкомВТечениеСекундТогда(ЗаголовокОкна,КоличествоСекунд) Экспорт
	Ванесса.ЗапретитьВыполнениеШагов();

	Ванесса.ОбработатьСменуАктивногоОкна();
	
	ДатаНачалаОбработкиОжидания       = ТекущаяДата();
	ИмяОкнаОбработкаОжидания          = ЗаголовокОкна;
	КоличествоСекундОбработкаОжидания = КоличествоСекунд;
	ПодключитьОбработчикОжидания("ОбработичкОжиданияПоявилосьОкноСЗаголовкомВТечениеСекундТогда",1,Ложь);
КонецПроцедуры


