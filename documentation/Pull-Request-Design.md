# Спецификация

1. Название должно начинаться с номера задачи в квадратных скобках. Если номера нет, то должно использоваться `[X]`
2. Scope может следовать после номера. Контекст должен быть существительным, заключенным в круглые скобки, описывающий часть кодовой базы, которую затронул commit. Например, `[X](parser):`
3. Описание должно следовать через пробел сразу же после типа/контекста. Описание - это краткая выжимка об изменениях кода. Например,  `[X] fix array parsing issue when multiple spaces were contained in string`
4. Должен использоваться present tense (`add feature` not `added feature`)
5. Должен использоваться imperative mood (`move cursor to...` not `moves cursor to...`)
6. Должен использоваться только нижний регистр букв

# Теги
- `android` - изменение настроек android-а
- `asset` - добавление или изменение asset-ов 
- `automation` - добавление команд по автоматизации
- `build` - изменения в настройках билда
- `ci/cd` - изменения ci/cd
- `dependencies` - изменения зависимостей
- `docs` - изменение документации / readme проекта
- `feat` - добавление новой функциональности 
- `fix` - исправление ошибки в ранее реализованной функциональности
- `ios` - изменение настроек ios-а
- `localization` - изменение или добавление локализации 
- `perf` - улучшение производительности
- `refactor` - рефакторинг кода (удаление, добавление файлов, изменение форматирования и т.д.)
- `test` - добавление или изменение тестов
- `tool` - изменение тулов
- `web` - изменение настроек web-а

# Примеры

    [2415](feed) add confetti to post

    [2569](profile) fix user loading error

    [X](users) refactor user widgets