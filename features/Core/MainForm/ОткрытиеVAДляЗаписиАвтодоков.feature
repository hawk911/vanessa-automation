﻿# language: ru
# encoding: utf-8
#parent uf:
@UF10_Запуск_VA
#parent ua:
@UA35_запускать_интерактивно

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree

Функционал: Открытие VA для записи автодоков.
 


Сценарий: Открытие VA для записи автодоков как клиент тестирования
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗаписьАвтодоков/ДляЗаписиАвтодоков01"

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаВыполнениеСценариев"
	И в поле с именем 'ТаймаутДляАсинхронныхШагов' я ввожу текст '80'
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаСервисОсновные"
	И я устанавливаю флаг с именем 'ДелатьЛогВыполненияСценариевВЖР'
	
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я разворачиваю группу с именем "ГруппаSikuliXServer"
	И я устанавливаю флаг с именем 'ИспользоватьSikuliXСервер'
	И пауза 2
	И я нажимаю на кнопку с именем 'КаталогиСкриптовSikuliXПоУмолчанию'

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	//И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоСценариев' на элементе формы с именем "ДеревоТестов"

	И я перехожу к закладке "Служебная"
	И я нажимаю на кнопку 'Развернуть все строки дерева служебный'
	И я перехожу к закладке "Запуск сценариев"

	И элемент формы с именем "Статистика" стал равен '1/1/44, 42/0/0'

	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
Сценарий: Закрыть TestClient
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'


	
Сценарий: Открытие VA для записи автодоков как менеджер тестирования
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗаписьАвтодоков/ДляЗаписиАвтодоков02"

	И я перехожу к закладке с именем "ГруппаНастройки"
	И я перехожу к закладке с именем "СтраницаАвтоИнструкции"
	И я разворачиваю группу с именем "ГруппаSikuliXServer"
	И я устанавливаю флаг с именем 'ИспользоватьSikuliXСервер'
	И я нажимаю на кнопку с именем 'КаталогиСкриптовSikuliXПоУмолчанию'
	И я перехожу к закладке с именем "СтраницаВыполнениеСценариев"
	И в поле с именем 'ТаймаутДляАсинхронныхШагов' я ввожу текст '200'
	И я перехожу к следующему реквизиту

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient

	И я выбираю пункт контекстного меню с именем 'ДеревоТестовКонтекстноеМенюСвернутьДоСценариев' на элементе формы с именем "ДеревоТестов"

	И элемент формы с именем "Статистика" стал равен '1/1/44, 42/0/0'
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"

	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	
Сценарий: Закрыть TestClient
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'