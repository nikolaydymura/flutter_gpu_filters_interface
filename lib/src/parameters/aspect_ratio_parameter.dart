import 'package:flutter/material.dart';

import 'configuration_parameter.dart';

abstract class AspectRatioParameter extends ConfigurationParameter {
  Size value;

  AspectRatioParameter(
    super.name,
    super.displayName,
    this.value, {
    super.hidden,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AspectRatioParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
