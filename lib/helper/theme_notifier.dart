import '../singleton/app_delegate.dart';
import 'ThemeColors.dart';

class ThemeNotifier {
  final ThemeColors darkTheme = ThemeColors(true);
  final ThemeColors lightTheme = ThemeColors(false);

  static ThemeNotifier get themeNotifier => _themeNotifier;
  static final ThemeNotifier _themeNotifier = ThemeNotifier._internal();

  factory ThemeNotifier() {
    return _themeNotifier;
  }

  ThemeNotifier._internal();

  ThemeColors colors() {
    return AppDelegate().isDarkMode ? ThemeNotifier().darkTheme : ThemeNotifier().lightTheme;
  }
}