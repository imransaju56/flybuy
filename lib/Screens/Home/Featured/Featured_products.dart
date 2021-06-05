import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class featured extends StatefulWidget {
  @override
  _featuredState createState() => _featuredState();
}

class _featuredState extends State<featured> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Text(
          ' Featured Products',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black.withOpacity(0.6),
          ),
        ),
        Spacer(),
        InkWell(
          onTap: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Featured_full()));


          },
          child: Text(
            'See all',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
      ],
    );
  }
}
