import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:sample/data/data.dart';
import 'package:sample/models/item.dart';

class ItemListing extends StatelessWidget {
  ItemListing({
    @required this.itemSelectedCallback,
    this.selectedItem,
  });

  final ValueChanged<Item> itemSelectedCallback;
  final Item selectedItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                    radius: 50,
                  ),
                  SizedBox(height: 20),
                  Text(
                    user.name,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(height: 10),
                  Text(
                    user.designation,
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          Expanded(
            child: ListView(
              children: items.map((item) {
                var sel = selectedItem;
                if (sel == null) {
                  sel = items[0];
                }
                return ListTile(
                  title: Text(
                    item.title,
                    style: TextStyle(
                      color:
                          sel.type == item.type ? Colors.white : Colors.white54,
                    ),
                  ),
                  onTap: () => itemSelectedCallback(item),
                  selected: selectedItem == item,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
