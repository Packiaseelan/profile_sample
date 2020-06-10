import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:sample/models/item.dart';

class ItemDetails extends StatelessWidget {
  ItemDetails({
    @required this.isInTabletLayout,
    @required this.item,
  });

  final bool isInTabletLayout;
  final Item item;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final Widget content = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          item?.title ?? 'No item selected!',
          style: textTheme.headline,
        ),
        Text(
          item?.subtitle ?? 'Please select one on the left.',
          style: textTheme.subhead,
        ),
      ],
    );

    print(isInTabletLayout);

    if (isInTabletLayout) {
      return Center(child: content);
    }

    return Scaffold(
      body: Center(child: content),
    );
  }
}
