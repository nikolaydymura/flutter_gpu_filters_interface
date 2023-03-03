import 'dart:async';

import 'package:flutter/foundation.dart';

import '../context/input_source.dart';
import '../context/video_export_config.dart';
import '../parameters/configuration_parameter.dart';

abstract class FilterConfiguration {
  List<ConfigurationParameter> get parameters;

  bool get ready;

  FutureOr<void> prepare();

  FutureOr<void> update();

  FutureOr<void> dispose();
}

mixin VideoFilterConfiguration on FilterConfiguration {
  Stream<double> exportVideoFile(
    VideoExportConfig config, {
    Duration period = const Duration(seconds: 1),
  });
}

abstract class VideoPreviewController {
  Future<void> setVideoSource(PathInputSource source);

  @mustCallSuper
  Future<void> connect(FilterConfiguration configuration) async {
    if (!configuration.ready) {
      await configuration.prepare();
    }
  }

  Future<void> disconnect();

  Future<void> dispose();

  Future<void> play();

  Future<void> pause();
}
