import 'package:flutter/cupertino.dart';


class EXT {}

extension CustomContext on BuildContext {
  double screenHeight([double percent = 1]) =>
      MediaQuery.of(this).size.height * percent;

  double screenWidth([double percent = 1]) =>
      MediaQuery.of(this).size.width * percent;
}

extension PostFrameCallback on VoidCallback {
  void withPostFrameCallback() =>
      WidgetsBinding.instance!.addPostFrameCallback((_) {
        this();
      });
}

extension StringExtensions on String {
  String get capitalize =>
      this[0].isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';
  String get allInCaps => toUpperCase();
  String get capitalizeFirstofEach =>
      split(' ').map((str) => str.capitalize).join(' ');
  String get svg => 'assets/images/svg/$this.svg';
  String get png => 'assets/images/png/$this.png';

  String get initials =>
      isNotEmpty ? trim().split(' ').map((l) => l[0]).take(2).join() : '';

}

extension WidgetUtilitiesX on Widget {
  /// Animated show/hide based on a test, with overrideable duration and curve.
  ///
  /// Applies [IgnorePointer] when hidden.
  Widget showIf(
    bool test, {
    Duration duration = const Duration(milliseconds: 350),
    Curve curve = Curves.easeInOut,
  }) =>
      AnimatedOpacity(
        opacity: test ? 1.0 : 0.0,
        duration: duration,
        curve: curve,
        child: IgnorePointer(
          ignoring: test == false,
          child: this,
        ),
      );

  /// Transform this widget `x` or `y` pixels.
  Widget nudge({
    double x = 0.0,
    double y = 0.0,
  }) =>
      Transform.translate(
        offset: Offset(x, y),
        child: this,
      );
  Widget scale(
    double scale,
  ) =>
      Transform.scale(
        scale: scale,
        child: this,
      );

  /// Wrap this widget in a [SliverToBoxAdapter]
  ///
  /// If you need access to `key`, do not use this extension method.
  Widget get asSliver => SliverToBoxAdapter(child: this);

  /// Return this widget with a given [Brightness] applied to [CupertinoTheme]
  Widget withBrightness(
    BuildContext context, [
    Brightness? _brightness = Brightness.dark,
  ]) =>
      CupertinoTheme(
        data: CupertinoTheme.of(context).copyWith(
          brightness: _brightness,
        ),
        child: this,
      );

  /// Wraps this widget in [Padding]
  /// that matches [MediaQueryData.viewInsets.bottom]
  ///
  /// This makes the widget avoid the software keyboard.
  Widget withKeyboardAvoidance(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: this,
      );
}

extension DoubleParse on Object {
  double parseDouble({
    double value = 0.00,
  }) {
    switch (runtimeType) {
      case String:
        return double.tryParse(this as String) ?? value;

      case int:
        // ignore: avoid_dynamic_calls
        return (this as num).toDouble();

      case double:
        return this as double;

      default:
        return value;
    }
  }
}

extension ListUpdate<T> on List<T> {
  List<T> update(int pos, T t) {
    var list = <T>[t];
    replaceRange(pos, pos + 1, list);
    return this;
  }
}
