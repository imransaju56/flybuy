import 'package:flutter/material.dart';

class Bestseller_title extends StatelessWidget {
  const Bestseller_title({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          ' Bestseller',
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
