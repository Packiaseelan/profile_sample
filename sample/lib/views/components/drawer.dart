import 'package:flutter/material.dart';
import 'package:sample/views/widgets/item_listing.dart';

class AppDrawer extends StatelessWidget {
  final Function updateSelection;
  AppDrawer({this.updateSelection});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ItemListing(
        itemSelectedCallback: (item) {
          Navigator.of(context).pop();
          updateSelection(item);
        },
      ),
    );
  }
}
