import 'package:flutter/material.dart';
import 'package:sample/utils/enemurations.dart';
import 'package:sample/models/item.dart';
import 'package:sample/views/components/drawer.dart';
import 'package:sample/views/widgets/widgets.dart';

class MasterDetailContainer extends StatefulWidget {
  @override
  _ItemMasterDetailContainerState createState() =>
      _ItemMasterDetailContainerState();
}

class _ItemMasterDetailContainerState extends State<MasterDetailContainer> {
  static const int kTabletBreakpoint = 600;

  void _updateSelection(Item item) {
    setState(() {
      _selectedItem = item;
      _selectedType = item.type;
    });
  }

  ItemTypes _selectedType = ItemTypes.about;

  Item _selectedItem;

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(),
      drawer: AppDrawer(
        updateSelection: _updateSelection,
      ),
      body: _getDetailView(),
    );
  }

  Widget _buildTabletLayout() {
    var w = MediaQuery.of(context).size.width * 0.25;
    if (w < 250) w = 250;
    return Row(
      children: <Widget>[
        Container(
          //flex: 1,
          width: w,//MediaQuery.of(context).size.width * 0.4,
          child: Material(
            elevation: 4.0,
            child: ItemListing(
              itemSelectedCallback: (item) {
                setState(() {
                  _selectedItem = item;
                  _selectedType = item.type;
                });
              },
              selectedItem: _selectedItem,
            ),
          ),
        ),
        Expanded(
          // flex: 3,
          child: _getDetailView(),
        ),
      ],
    );
  }

  Widget _getDetailView() {
    print(_selectedType);
    if (_selectedType == ItemTypes.about) {
      return AboutWidget(
        type: _selectedType,
      );
    }

    if (_selectedType == ItemTypes.skills) return SkillsWidget();

    return ItemDetails(
      isInTabletLayout: true,
      item: _selectedItem,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content;
    var shortestSide = MediaQuery.of(context).size.shortestSide;

    if (shortestSide < kTabletBreakpoint) {
      content = _buildMobileLayout();
    } else {
      content = _buildTabletLayout();
    }

    print('$shortestSide $kTabletBreakpoint');

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Master-detail flow sample'),
      // ),
      body: content,
    );
  }
}
