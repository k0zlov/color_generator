import 'package:color_generator/core/widgets/primitives/lottie_icon.dart';

abstract interface class LottieIcons {
  static const _basePath = 'assets/lottie';

  static const home = LottieIconData(path: '$_basePath/home.json');

  static const history = LottieIconData(path: '$_basePath/history.json');

  static const settings = LottieIconData(path: '$_basePath/settings.json');
}
