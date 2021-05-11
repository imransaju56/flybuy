import 'package:flutter/material.dart';

class Searchbar extends StatefulWidget {
  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.brown.withOpacity(0.15),
                blurRadius: 15.0,
                spreadRadius: 0.0,
                offset: Offset(
                  0.0,
                  7.5,
                ),
              ),
            ],
          ),
          height: 60,
          width: 800,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 14),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.grey,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Search Your Product',style: TextStyle(
                    fontSize: 18,
                    color: Colors.black38,

                  ),),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
