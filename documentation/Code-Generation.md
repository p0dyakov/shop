Для генерации кода используется:
- [auto_route_generator](https://pub.dev/packages/auto_route_generator): Генерации роутов
- [select](https://pub.dev/packages/select), [select_annotation](https://pub.dev/packages/select_annotation): Генерация кода для селекторов полей класса и enum-ов
- [swagger_dart_code_generator](https://pub.dev/packages/swagger_dart_code_generator), [chopper_generator](https://pub.dev/packages/chopper_generator): Генерации кода для работы с сетевыми запросами. Перед генерацией не забудь из спецификации удалить префикс `/api/v0/` у всех ручек
- [drift_dev](https://pub.dev/packages/drift_dev): Генерация кода для `drift`
- [freezed](https://pub.dev/packages/freezed), [freezed_annotation](https://pub.dev/packages/freezed_annotation): Генерация кода для сравнения, клонирования объекта
- [json_serializable](https://pub.dev/packages/json_serializable), [json_annotation](https://pub.dev/packages/json_annotation): Генерация для сериализации и десериализации JSON-а
- [flutter_gen_runner](https://pub.dev/packages/flutter_gen_runner): Генерация кода для удобного доступа к ресурсами