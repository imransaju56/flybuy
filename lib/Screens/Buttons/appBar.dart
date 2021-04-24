import 'package:flutter/material.dart';

class AppbarCustom extends StatefulWidget {
  String title;

  AppbarCustom({this.title});

  @override
  _AppbarCustomState createState() => _AppbarCustomState();
}

class _AppbarCustomState extends State<AppbarCustom> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_back),
        Text(
          widget.title,
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.search),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.filter_list_outlined),
        ),
      ],
    );
  }
}
