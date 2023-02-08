import 'package:flutter/material.dart';

import 'vector_parameter.dart';

abstract class Matrix4Parameter extends VectorParameter<Matrix4> {
  Matrix4Parameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => [...value.storage];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Matrix4Parameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
