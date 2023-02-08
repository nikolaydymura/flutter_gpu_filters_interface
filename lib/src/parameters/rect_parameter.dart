import 'package:flutter/material.dart';

import 'vector_parameter.dart';

abstract class RectParameter extends VectorParameter<Rect> {
  RectParameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => [value.left, value.top, value.width, value.height];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RectParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
