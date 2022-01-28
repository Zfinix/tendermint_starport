import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:starport_template/extensions/extensions.dart';
import 'package:starport_template/widgets/touchable_opacity.dart';

class CosmosPoolCard extends StatelessWidget {
  const CosmosPoolCard({
    required this.id,
    required this.denomText,
    required this.amountDisplayText,
    this.secondaryText = '',
    this.isListTileType = false,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final String id;
  final String denomText;
  final String amountDisplayText;
  final String secondaryText;
  final VoidCallback? onTap;
  final bool isListTileType;

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      onTap: onTap,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: CosmosTheme.of(context).spacingL),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 32,
              child: CircleAvatar(
                backgroundColor: CosmosTheme.of(context).colors.avatarBg,
                foregroundColor: CosmosTheme.of(context).colors.text,
                child: Text(id),
              ),
            ),
            SizedBox(width: CosmosTheme.of(context).spacingM),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: context.screenWidth(0.7),
                  child: Text(
                    denomText,
                    style: CosmosTextTheme.title0Medium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (isListTileType) ...[
                  Row(
                    children: [
                      Text(
                        'Liquidity: ',
                        style: CosmosTextTheme.copyMinus1Normal,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        amountDisplayText,
                        style: CosmosTextTheme.labelS,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: context.screenWidth(0.5),
                    child: Text(
                      secondaryText.toUpperCase(),
                      style: CosmosTextTheme.copyMinus1Normal.copyWith(
                        fontWeight: FontWeight.w500,
                        color: CosmosTheme.of(context).colors.text,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ]
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('amountDisplayText', amountDisplayText))
      ..add(ObjectFlagProperty<VoidCallback?>.has('onTap', onTap))
      ..add(StringProperty('secondaryText', secondaryText))
      ..add(DiagnosticsProperty<String>('id', id))
      ..add(DiagnosticsProperty<bool>('isListTileType', isListTileType))
      ..add(StringProperty('denomText', denomText));
  }
}
