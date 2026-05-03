import 'package:color_generator/core/widgets/primitives/lottie_icon.dart';
import 'package:color_generator/gen/assets.gen.dart';

abstract class LottieIcons {
  static final home = LottieIconData(path: Assets.lottie.home.path);

  static final history = LottieIconData(path: Assets.lottie.history.path);

  static final settings = LottieIconData(path: Assets.lottie.settings.path);
}
