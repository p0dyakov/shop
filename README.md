## Приложение магазина продуктов на Flutter

<p align="left" width="100%">
    <img src="https://user-images.githubusercontent.com/80569772/208469437-292222dd-0ea3-4706-89bf-d0989b28a063.png" width="30%"/>
    <img src="https://user-images.githubusercontent.com/80569772/208469492-57b27a8b-28b5-425d-a01c-329240e8c5df.png" width="30%"/>
    <img src="https://user-images.githubusercontent.com/80569772/208469513-bafd991a-6155-414a-b6e9-9d1cf4bff890.png" width="30%"/>
</p>

---
## Документация 
- [Automation](https://github.com/p0dyakov/shop/blob/main/documentation/Automation.md)
- [Best Practices](https://github.com/p0dyakov/shop/blob/main/documentation/Best-Practices.md)
- [Branch Design](https://github.com/p0dyakov/shop/blob/main/documentation/Branch-Design.md)
- [Code Generation](https://github.com/p0dyakov/shop/blob/main/documentation/Code-Generation.md)
- [Code Review](https://github.com/p0dyakov/shop/blob/main/documentation/Code-Review.md)
- [Commit Design](https://github.com/p0dyakov/shop/blob/main/documentation/Commit-Design.md)
- [Files Structure](https://github.com/p0dyakov/shop/blob/main/documentation/Files-Structure.md)
- [Git Flow](https://github.com/p0dyakov/shop/blob/main/documentation/Git-Flow.md)
- [Layers](https://github.com/p0dyakov/shop/blob/main/documentation/Layers.md)
- [Pull Request Design](https://github.com/p0dyakov/shop/blob/main/documentation/Pull-Request-Design.md)

---
## Запуск приложения
### Программы
Перед запуском проекта необходимо установить:
- [Choco](https://chocolatey.org/install) (с помощью данной утилиты можно установить все остальные программы)
- [Make](https://www.gnu.org/software/make/#download) (необходимо для работы автоматизации команд)
- [Flutter](https://docs.flutter.dev/get-started/install) (`choco install flutter`)
- [FVM](https://fvm.app/) ([`choco install fvm --version 2.4.2-dev0 -y`](https://github.com/leoafarias/fvm/issues/557))
- [Dart](https://dart.dev/get-dart) (`choco install dart-sdk`)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) (`choco install git.install`)

### Команды
После установки всех необходимых программ нужно выполнить следующие команды:

    git clone https://github.com/p0dyakov/shop.git
    cd shop
    make init

или

    git clone https://github.com/p0dyakov/shop.git
    cd shop
    flutter pub get
    flutter pub run build_runner build --delete-conflicting-outputs
    flutter gen-l10n
    
