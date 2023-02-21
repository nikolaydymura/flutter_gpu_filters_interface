import 'package:vector_math/vector_math.dart' show Vector3;

import 'vector_parameter.dart';

abstract class Vector3Parameter extends VectorParameter<Vector3> {
  Vector3Parameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => value.storage;
}
