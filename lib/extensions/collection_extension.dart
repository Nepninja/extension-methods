extension CollectionExtension<T> on List<T> {
  bool isNullOrEmpty() {
    return this == null || this.length == 0;
  }
}

extension CollectionNumExtension<T extends num> on List<T> {
  T max() {
    if (this.isNullOrEmpty()) throw Exception("Provide collection with items");
    this.sort();
    return this[this.length - 1];
  }

  T min() {
    if (this.isNullOrEmpty()) throw Exception("Provide collection with items");
    this.sort();
    return this[0];
  }

  double avg() {
    if (this.isNullOrEmpty()) throw Exception("Provide collection with items");
    return this.reduce((value, element) => value + element) / this.length;
  }
}

extension CollectionStringExtension<T extends String> on List<T> {
  String joinToString(String separator,
      {String prefix = "", String postfix = ""}) {
    return prefix + this.join(separator) + postfix;
  }
}
