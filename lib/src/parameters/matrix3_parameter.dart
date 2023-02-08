import 'package:collection/collection.dart';

import 'vector_parameter.dart';

abstract class Mat3Parameter extends VectorParameter<Mat3> {
  Mat3Parameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => value.storage;
}

class Mat3 {
  final List<double> storage;

  Mat3._(this.storage);

  factory Mat3(Iterable<double> items) {
    if (items.length != 9) {
      throw 'Array must be 9 items';
    }
    return Mat3._(List.unmodifiable(items));
  }

  double operator [](int index) => storage[index];

  Mat3 copyWith({
    required Map<int, double> items,
  }) {
    return Mat3(
      storage.mapIndexed((i, e) => items[i] ?? e),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mat3 &&
          runtimeType == other.runtimeType &&
          storage == other.storage;

// coverage:ignore-start
  @override
  int get hashCode => storage.hashCode;
// coverage:ignore-end
}
