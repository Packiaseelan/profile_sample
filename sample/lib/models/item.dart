import 'package:meta/meta.dart';
import 'package:sample/utils/enemurations.dart';

class Item {
  Item({
    @required this.title,
    @required this.subtitle,
    @required this.type,
  });

  final String title;
  final String subtitle;
  final ItemTypes type;
}
