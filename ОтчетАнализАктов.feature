﻿#language:ru

@tree
@exportscenarios
@ТипШага: Самописные шаги
@Описание: проверка работоспособности дипломного проекта на примере массового создания документов "Реализация товаров и услуг" по договорам обслуживания.
@Примериспользования: И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Анализ выставленных актов'

Функционал: формирование отчёта "Анализ выставленных актов" за выбранный период от имени пользователя с ролью Бухгалтер, сравнение полученного отчета с предварительно заготовленным эталоном.

Как Бухгалтер я хочу
сформировать отчёт "Анализ выставленных актов" за выбранный период и сверить, что отчет сформировался верно.  

Сценарий: Я формирую отчет "Анализ выставленных актов"
Дано Я открыл сеанс TestClient от имени "Бухгалтер1" с паролем "" или подключаю уже существующий

* Формирование отчета за период 01.01.2024-29.02.2024
И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Анализ выставленных актов'
Тогда открылось окно 'Анализ выставленных актов'
И я нажимаю кнопку выбора у поля с именем "Период1ДатаНачала"
И в поле с именем 'Период1ДатаНачала' я ввожу текст '01.01.2024'
И я нажимаю кнопку выбора у поля с именем "Период1ДатаОкончания"
И в поле с именем 'Период1ДатаОкончания' я ввожу текст '29.02.2024'
И я активизирую поле 'Показатель'
И я нажимаю на кнопку с именем 'СформироватьОтчет'
* Сравнение результата с эталоном
И Табличный документ "ОтчетТабличныйДокумент" равен макету "МакетОтчета_010124_290224.mxl"
* Формирование отчета за период 01.01.2024-30.09.2024
И я нажимаю кнопку выбора у поля с именем "Период1ДатаНачала"
И в поле с именем 'Период1ДатаНачала' я ввожу текст '01.01.2024'
И я нажимаю кнопку выбора у поля с именем "Период1ДатаОкончания"
И в поле с именем 'Период1ДатаОкончания' я ввожу текст '30.09.2024'
И я активизирую поле 'Показатель'
И я нажимаю на кнопку с именем 'СформироватьОтчет'
* Сравнение результата с эталоном
И Табличный документ "ОтчетТабличныйДокумент" равен макету "МакетОтчета_010124_300924.mxl"


