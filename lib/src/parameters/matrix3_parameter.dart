import 'package:collection/collection.dart';
import 'package:vector_math/vector_math.dart' show Matrix3;

import 'vector_parameter.dart';

abstract class Mat3Parameter extends VectorParameter<Matrix3> {
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

extension Mat3 on Matrix3 {
  Matrix3 copyWith({
    required Map<int, double> items,
  }) {
    return Matrix3.fromList(
      storage.mapIndexed((i, e) => items[i] ?? e).toList(),
    );
  }
}
