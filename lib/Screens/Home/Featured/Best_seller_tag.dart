import 'package:flutter/material.dart';

class best_seller_tag extends StatefulWidget {
  best_seller_tag({
    this.bestseller,
  });

   String bestseller;

  @override
  _best_seller_tagState createState() => _best_seller_tagState();
}

class _best_seller_tagState extends State<best_seller_tag> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.022,
      width: size.width * 0.12,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(4.0),
              topRight: Radius.circular(4.0)),
        ),
        child: Center(
          child: Text(
            '${widget.bestseller}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 9,
            ),
          ),
        ),
      ),
    );
  }
}
