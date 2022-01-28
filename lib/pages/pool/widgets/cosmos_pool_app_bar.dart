import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CosmosPoolAppBar extends StatelessWidget {
  const CosmosPoolAppBar({
    Key? key,
    this.title = '',
    this.actions,
    this.leading,
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: CosmosTheme.of(context).spacingS),
              if (leading != null) leading!,
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: CosmosTheme.of(context).spacingL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: CosmosTextTheme.titleSans2Bold),
                if (actions != null) ...actions!,
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
  }
}
