Структура папок взята из [стартера](https://github.com/purplenoodlesoop/purple-starter)

> При наименовании папок использовать единственное число

# Core
    ├── database/
    ├── enum/
    ├── error/
    ├── extension/
    ├── gen/
    ├── l10n/
    ├── model/
    ├── resource/
    ├── router/
    ├── util/
    └── widget/

- `database` - базы данных и `EnvironmentDao`
- `di` - общие модули di
- `enum` - общие enum-ы
- `error` - общие ошибки
- `extension` - расширения, которые все экспортируются в `extensions.dart`
- `gen` - генерируемый код: локализация, асеты, шрифты, дто, сервис, токены дизайна
- `handler` - обработчики ошибок и логов
- `l10n` - перевод приложения
- `logic` - утилиты
- `repository` - репозитории
- `router` - роутер
- `util` - общие функции (форматирование, валидация и т.д.)
- `widget` - общие виджеты

# Features
    ├── bloc/
    │   ├── feature_bloc.dart
    │   ├── feature_event.dart
    │   └── feature_state.dart
    ├── database/
    │   └── feature_dao.dart
    ├── enum/
    │   └── enum.dart
    ├── model/
    │   └── feature_data.dart.dart
    ├── page/
    │   └── feature_page.dart
    ├── repository/
    │   └── feature_repository.dart
    └── widget/
        └── scope/
            └── feature_scope.dart

- `bloc` - блок, эвенты, стейты, зависимости блока
- `database` - dao
- `di` - модули для di
- `enum` - enum-ы
- `model` - модели
- `page` - страницы
- `repository` - интерфейс репозитория и его имплементация 
- `widget` - виджеты