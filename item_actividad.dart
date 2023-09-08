import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  final Map<String, String> destinationMap;
  ItemActividad({super.key, required this.destinationMap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
              height: 120,
              width: 120,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("${destinationMap["image"]}",
                      fit: BoxFit.fill))),
          Text("${destinationMap["day"]}", style: TextStyle(fontSize: 11)),
          Text(
            "${destinationMap["destination"]}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
