import 'package:cosmos_ui_components/cosmos_text_theme.dart';
import 'package:cosmos_ui_components/cosmos_ui_components.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:starport_template/extensions/extensions.dart';
import 'package:starport_template/widgets/touchable_opacity.dart';

class CosmosPicker<T> extends StatefulWidget {
  const CosmosPicker({
    Key? key,
    required this.items,
    required this.title,
    required this.context,
    this.searchHintText,
    this.searchFilter,
    this.searchEnabled = false,
    this.itemBuilder,
  }) : super(key: key);

  final Iterable<T> items;
  final String title;
  final String? searchHintText;
  final Widget Function(T item)? itemBuilder;
  final bool Function(T item, String query)? searchFilter;
  final bool searchEnabled;
  final BuildContext context;

  Future<T?> show() => showMaterialModalBottomSheet(
      context: context,
      builder: (context) {
        return CosmosPicker<T>(
          items: items,
          title: title,
          context: context,
          itemBuilder: itemBuilder,
          searchFilter: searchFilter,
          searchHintText: searchHintText,
        );
      });

  @override
  _CosmosPickerState<T> createState() => _CosmosPickerState<T>();
}

class _CosmosPickerState<T> extends State<CosmosPicker> {
  String searchString = '';

  @override
  CosmosPicker<T> get widget => super.widget as CosmosPicker<T>;

  Iterable<T> get filteredList {
    if ((widget.searchFilter != null && searchString.isNotEmpty)) {
      return widget.items
          .where((e) => widget.searchFilter!(e, searchString))
          .toList();
    } else {
      return widget.items;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight(.7),
      child: Material(
        color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(30),
              Row(
                children: [
                  const Gap(60),
                  Text(
                    widget.title,
                    style: CosmosTextTheme.titleSans2Bold,
                  ),
                ],
              ),
              if (widget.searchEnabled) ...[
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    //color: kGreySenary.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: CosmosTextField(
                    onChanged: (val) {
                      setState(() {
                        searchString = val;
                      });
                    },
                    hint: widget.searchHintText,
                  ),
                )
              ],
              const Gap(20),
              CosmosPickerList(
                items: filteredList,
                kContext: widget.context,
                itemBuilder: widget.itemBuilder,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CosmosPickerList<T> extends StatelessWidget {
  const CosmosPickerList({
    Key? key,
    required this.items,
    required this.kContext,
    this.itemBuilder,
  }) : super(key: key);

  final Iterable<T> items;
  final BuildContext kContext;
  final Widget Function(T item)? itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 20, right: 27),
        children: [
          for (var item in <T>[...items])
            itemBuilder != null
                ? TouchableOpacity(
                    onTap: () {
                      Navigator.pop(
                        kContext,
                        item,
                      );
                    },
                    child: itemBuilder!(item),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TouchableOpacity(
                      onTap: () {
                        Navigator.pop(
                          kContext,
                          item,
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            '$item',
                            style: const TextStyle(
                              fontSize: 14,
                              // color: kGreyPrimary,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          const Gap(20),
        ],
      ),
    );
  }
}
