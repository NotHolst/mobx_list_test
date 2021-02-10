import 'package:flutter/widgets.dart';

class ListWidget<T> extends StatelessWidget {
  final List<T> items;
  final int itemCount;
  final Widget Function(T item) itemBuilder;

  const ListWidget({Key key, this.itemBuilder, this.items, this.itemCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return itemBuilder(items[index]);
      },
      // children: [
      //   for (var item in items) itemBuilder(item),
      // ],
    );
  }
}
