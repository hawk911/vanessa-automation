# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA52_Работать_с_UI_прочее

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb

@tree


Функциональность: Проверка обработки модального диалога при возникновении ошибки
	Когда возникает модальный диалог, надо попытаться нажать на кнопку ОК
	И снять второй скриншот


	
Сценарий: Проверка обработки модального диалога при возникновении ошибки
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано    Я закрыл все окна клиентского приложения

	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаОтчетыОЗапуске"
	И я устанавливаю флаг 'Формировать скриншот при ошибке'
	И в поле каталог скриншотов я указываю путь к относительному каталогу "tools\ScreenShotsTest"
	И я запоминаю значение поля с именем "КаталогВыгрузкиСкриншотов" как "КаталогВыгрузкиСкриншотов"
	И я очищаю каталог "$КаталогВыгрузкиСкриншотов$"
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И В открытой форме в поле "Команда создания скриншотов" я ввожу команду для IrfanView 
	И я перехожу к закладке "Автоинструкции"
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я перехожу к закладке "Запуск сценариев"
	
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаПроверкаСнятияСкриншотаМодальныйДиалог"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			
	И в каталоге скриншотов появилось 2 файла
	
	
Сценарий: Закрыть TestClient, который был открыт из второго TestManager. Проверка обработки модального диалога при возникновении ошибки.
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	Дано Я закрыл все окна клиентского приложения кроме "*Vanessa Automation"
	И я загружаю служебную фичу и устанавливаю настройки
			И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
			И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
			И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
			И у элемента "Сценарии выполнены" я жду значения "Да" в течение 20 секунд
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'