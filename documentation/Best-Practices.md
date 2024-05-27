
## Пакеты
- Не использовать пакеты-комбайны, объединяющие в себе много различных функций. Пример: `getx`
- Не использовать пакеты, выполняющие функционал, который можно быстро реализовать самостоятельно. Чем меньше зависимостей - тем лучше. Пример: `get_it`

## Контейнеры
`Container(color: enabled ? Colors.blue : null)` - необходимо избегать такой логики, так как при изменении параметра `enabled` перерисуется всё дочернее дерево контейнера, что негативно скажется на производительности. Лучше использовать `ColoredBox`

## Коллекции
Необходимо быть осторожным с операциями с коллекциями в цикле. Например, `list.add(element)` в длинных циклах может ударить по производительности, так как каждую итерацию массиву придется менять свое расположение в ОЗУ. Если мы заранее знаем примерную длину массива, то мы можем избежать этой проблемы, заранее создав массив на нужное количество элементов `List.filled(length, fill, growable: true)`

## BuildContext
Не стоит использовать `BuildContext` после асинхронных операций, это может привести к ошибкам

## Интерфейс методов
Во многих случаях, особенно в репозиториях, можно заранее делать асинхронный интерфейс метода, даже если реализация синхронная. Если в будущем реализация изменится, то не придётся менять код

## Удаление метода
Не стоит забывать про использование `@deprecated` для устаревших классов, методов. Так же необходимо помечать, в каком релизе данный класс или метод будет удалён

## KISS
Не стоит гнаться за краткостью кода в ущерб его читаемости. С этим кодом в будущем предстоит работать и тебе, и твоим коллегам. `Keep it simple and stupid`

## Магические числа
Вынос магического числа в статик или глобальную константу не равно избавлению от магического числа, это только усложняет чтение кода

## ListView.builder
Если тебе необходимо отобразить какой-либо массив данных в ui, то используй `ListView.builder` вместо обычной `Column`, так как `Column` отрисовывает все свои элементы сразу, что может сказаться на производительности, а `ListView.builder` оптимизирует этот процесс, отрисовывая только те элементы, что находятся в зоне видимости пользователя

## Частота функции build
Для эффективной работы функции  `build`  необходимо обеспечить ее максимальную  _«чистоту», т.е. отсутствие ненужных элементов программного кода_. Это связано с тем, что существуют определенные внешние факторы, которые могут спровоцировать создание нового виджета (Widget build), ниже приведены некоторые примеры:
-   Навигация в приложении
-   Изменение размера экрана, обычно из-за показа/скрытия клавиатуры или изменения ориентации экрана
-   Родительский виджет воссоздал свой дочерний виджет
-   Виджет Inherited Widget зависит от изменения значений (Class. of(context) pattern)
Пример неправильного программного кода выглядит так:
```
@override
Widget build(BuildContext context) {
  return FutureBuilder(
    future: httpCall(),
    builder: (context, snapshot) {
      // create some layout here
    },
  );
}
```
Пример правильного программного кода должен выглядеть так:
```
class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}
class _ExampleState extends State<Example> {
  Future<int> future;

  @override
  void initState() {
    future = repository.httpCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        // create some layout here
      },
    );
  }
}
```
##  Оператора as
Как правило, оператор приведения as создает исключение, если приведение невозможно. В таких случаях можно использовать оператор is.
```
// Do
if (item is Animal)
item.name = 'Lion';

// Do not
(item as Animal).name = 'Lion';
```

## Стоимость build()
Вот некоторые моменты, которые следует учитывать при проектировании пользовательского интерфейса:
* Избегайте повторяющейся и дорогостоящей работы в методах `build()`, поскольку `build()` может часто вызываться при перестройке виджетов-предков.
* Избегайте слишком больших одиночных виджетов с большой функцией `build()`. Разделите их на разные виджеты, основываясь не только на инкапсуляции, но и по тому, как они изменяются:
  * При вызове функции `setState()` для объекта `State`, все виджеты-потомки перестраиваются. Поэтому локализуйте вызов `setState()` в той части поддерева, пользовательский интерфейс которой должен быть изменен. Избегайте вызова `setState()` высоко в дереве, если изменения касаются небольшой части дерева.
  * Обход с перестройкой всех потомков останавливается, когда в поддереве появляется тот же экземпляр дочернего виджета, что и в предыдущем кадр. Эта техника широко  используется внутри фреймворка для оптимизации анимации, когда анимация не затрагивает дочернее поддерево. См. шаблон [`TransitionBuilder`][] и [source code for `SlideTransition`][], который использует этот принцип, чтобы не перестраивать свои потомков при анимации. ("Один и тот же экземпляр" оценивается с помощью `оператора ==`, но см. раздел "Подводные камни" в конце этой страницы где дается совет, когда не следует переопределять `operator ==`).
  * Как можно чаще используйте конструкторы `const` для виджетов, поскольку они позволяют Flutter сократить большую часть работы по перестройке. Чтобы автоматически напоминать использовать `const`, когда это возможно, включите рекомендуемые линки из пакета [`flutter_lints`][].
  * Для создания многократно используемых частей пользовательского интерфейса, лучше использовать [`StatelessWidget`][], а не функцию.

Для получения дополнительной информации см:
* [Performance considerations][], часть документации по API [`StatefulWidget`][]
* [Widgets vs helper methods][], видеоролик с официального YouTube-канала Flutter на официальном канале Flutter YouTube, в котором объясняется, почему виджеты (особенно виджеты с конструкторами `const`) более производительны, чем функции.

[`flutter_lints`]: {{site.pub-pkg}}/flutter_lints
[Performance considerations]: {{site.api}}/flutter/widgets/StatefulWidget-class.html#performance-considerations
[Source code for `SlideTransition`]: {{site.repo.flutter}}/blob/master/packages/flutter/lib/src/widgets/transitions.dart#L168
[`StatefulWidget`]: {{site.api}}/flutter/widgets/StatefulWidget-class.html
[`StatelessWidget`]: {{site.api}}/flutter/widgets/StatelessWidget-class.html
[`TransitionBuilder`]: {{site.api}}/flutter/widgets/TransitionBuilder.html
[Widgets vs helper methods]: {{site.youtube-site}}/watch?v=IOyq-eTRhvo

## Подводные камни
Если вам нужно настроить производительность вашего приложения, или, возможно, пользовательский интерфейс работает не так гладко, как вы ожидаете, вам поможет `DevTools Performance view`

Также может быть полезен плагин Flutter для вашей IDE может оказаться полезным. В окне Flutter Performance, установите флажок **Показывать информацию о перестройке виджета**. Эта функция помогает обнаружить, когда кадры рендеринг и отображение кадров происходит более чем за 16 мс. Там, где это возможно, плагин предоставляет ссылку на соответствующий совет.

Следующие действия могут негативно повлиять на производительность вашего приложения.

* Избегайте использования виджета `Opacity`, и особенно избегайте его использования в анимации. Вместо этого используйте `AnimatedOpacity` или `FadeInImage`

* При использовании `AnimatedBuilder`, избегайте размещения в конструкторе поддерева, которое создает виджеты, не зависящие от анимации. Это поддерево перестраивается для каждого такта анимации. Вместо этого постройте эту часть поддерева  один раз и передать ее в качестве дочернего элемента в `AnimatedBuilder`

* Избегайте обрезания в анимации. Если возможно, предварительно обрезайте изображение перед анимацией.

* Избегайте использования конструкторов с конкретным `списком` дочерних элементов (например, `Column()` или `ListView()`) если большинство дочерних элементов не видны на экране, чтобы избежать затрат на сборку
  
* Избегайте переопределения `оператора ==` на объектах `Widget`. Хотя может показаться, что это поможет избежать лишних перестроек, на практике это вредит производительности, поскольку приводит к O(N²) поведению. Единственным исключением из этого правила являются листовые виджеты (виджеты, не имеющие дочерних объектов), в том конкретном случае, когда сравнение свойств виджета будет значительно эффективнее, чем перестроение виджета и если виджет будет редко менять конфигурацию. Даже в таких случаях, в целом предпочтительнее полагаться на кэширование виджетов, поскольку даже одно переопределение `оператора ==` может привести к повсеместному снижению производительности поскольку компилятор уже не может предположить, что вызов всегда статичен