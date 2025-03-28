﻿#language: ru

@tree

Функционал: создание документа Заказ

Как Менеджер по закупкам я хочу
создание документа Заказ
чтобы поставить товар на заказ

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: создание документа Заказ
// создание документа Заказ1
* Открытие формы сохдания документа
	И В командном интерфейсе я выбираю "Продажи" "Заказы"
	Тогда открылось окно "Заказы товаров"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно "Заказ (создание)"
* Заполнение шапки документа
	И из выпадающего списка с именем 'Организация' я выбираю точное значение "ООО \"1000 мелочей\""
	И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Мосхлеб ОАО"
	И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
* Заполнение товарной части
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу на один уровень вниз
	И в таблице 'Список' я выбираю текущую строку
	И в таблице 'Товары' я завершаю редактирование строки
	
//* Добавление услуги
//	Когда открылось окно "Заказ (создание) *"
//	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
//	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
//	Тогда открылось окно "Товары"
//	И в таблице 'Список' я перехожу на один уровень вниз
//	И в таблице 'Список' я выбираю текущую строку
//	Тогда открылось окно "Заказ (создание) *"
//	И в таблице 'Товары' я завершаю редактирование строки
//	И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
//	И в таблице 'Товары' я выбираю текущую строку
//	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
//	И я жду закрытия окна "Заказ (создание) *" в течение 20 секунд
		
* Проверка заполнения табличной части
	Тогда таблица 'Товары' стала равной:
		| 'Товар'  | 'Цена'     | 'Количество' | 'Сумма'    |
		| 'Сапоги' | '3 050,00' | '1'          | '3 050,00' |

* Проверка на добавление услуги в табличной части
	Когда открылось окно "Заказ * от *"
	И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
	Тогда открылось окно "Товары"
	И в таблице 'Список' я перехожу на один уровень вниз
	И в таблице 'Список' я выбираю текущую строку
	Тогда открылось окно "Заказ * от * *"
	И в таблице 'Товары' я завершаю редактирование строки
		
		
* Проведение документа
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "Заказ (создание) *" в течение 20 секунд


	