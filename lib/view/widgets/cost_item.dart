import 'package:flutter/material.dart';
import 'package:flutter_mvvm/view/widgets/select_widget.dart';

import '../types/direction.dart';
import 'dropdown.dart';

class CostItem extends StatefulWidget {
  final String itemName;
  final int quantiy;
  final int unitPrice;
  final itemOptions;

  const CostItem(
      {Key? key,
      required this.itemName,
      required this.quantiy,
      required this.unitPrice,
      this.itemOptions})
      : super(key: key);

  @override
  State<CostItem> createState() => _CostItemState();
}

class _CostItemState extends State<CostItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "品名",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Dropdown<String>(
                    options: widget.itemOptions,
                    onChanged: (String selectedValue) {}),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "数量",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      widget.quantiy.toString(),
                    ),
                    const SizedBox(width: 8.0),
                    const Select(
                      direction: Direction.vertical,
                      options: ["mg", "g", "kg"],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "単価",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("${widget.unitPrice.toString()}円"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "金額",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("${(widget.quantiy * widget.unitPrice).toString()}円"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
