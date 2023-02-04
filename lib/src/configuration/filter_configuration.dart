import '../context/video_export_config.dart';
import '../parameters/configuration_parameter.dart';

abstract class FilterConfiguration {
  List<ConfigurationParameter> get parameters;
}

mixin VideoFilterConfiguration on FilterConfiguration {
  Stream<double> exportVideoFile(
    VideoExportConfig config, {
    Duration period = const Duration(seconds: 1),
  });
}
