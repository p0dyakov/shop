class ParsingException<From, To> implements Exception {
  final From from;

  ParsingException(this.from);

  @override
  // ignore: no_runtimetype_tostring
  String toString() => '$runtimeType ocurred when parsing from $from';
}
