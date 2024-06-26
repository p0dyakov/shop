
![layers](https://github.com/twips-me/m3_frontend/assets/80569772/02096cc2-84bf-4dff-ac1f-8dd18c8b0b5f)

# Слои

1. **UI**:
   - Состоит из виджетов, которые отображают информацию для пользователя и принимают пользовательский ввод
   - `UI-компоненты` принимают события (например, нажатие кнопки) и передают их `BLoC`-у для обработки

2. **Scope**:
   - Слой `Scope` создает и управляет `BLoC`-ом
   - Предоставляет `BLoC` ниже по иерархии виджетов

3. **BLoC**:
   - Выпускает различные состояния при изменении данных
   - При обработке `event`-ов использует метод `_performMutation`, который `emit`-ит разные стейты
   - Любое состояние `BLoC`-а содержит объект `data`

4. **Repository**:
   - Используется для абстрагирования доступа к данным от источников данных (например, сетевой запрос или локальная база данных)
   - Имеет метод `currentData`, который возвращает актуальные данные, полученные из `DAO` / `Service` или другого источника

5. **DAO**:
   - Выполняет конкретные операции с данными, такие как чтение из локальной базы данных или другие операции доступа к данным

6. **Service**:
   - Генерируется посредством библиотеки `swagger_dart_code_generator`
   - Получает данные с сервера через сетевые запросы


# Flow Данных
Поток данных в приложении начинается с пользовательских действий, событие передается от `UI` к `Scope`-у, после достигает `BLoC`-а, где выполняется бизнес-логика. При необходимости `BLoC` обращается к `Repository`, который в свою очередь выбирает источник данных (`DAO`/`Service`) и возвращает нужные значения. Изменения данных отражаются в состоянии `BLoC`-а, которое оповещает `UI` для обновления пользовательского интерфейса в соответствии с новыми данными