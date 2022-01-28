import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_utils/cosmos_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GradientTextAvatar extends StatelessWidget {
  const GradientTextAvatar({
    required this.stringKey,
    Key? key,
  }) : super(key: key);

  final String stringKey;

  @override
  Widget build(BuildContext context) {
    final colors = generateColorsFromAddress(stringKey);
    return CircleAvatar(
      child: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [colors[0], colors[1]]),
              ),
            ),
          ),
          Center(
            child: Text(
              stringKey.isEmpty ? '' : stringKey[0].toUpperCase(),
              style: CosmosTextTheme.title0Medium.copyWith(color: Colors.white54),
            ),
          )
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('stringKey', stringKey));
  }
}
