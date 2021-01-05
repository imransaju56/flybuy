import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';

class price_with_review extends StatefulWidget {
  @override
  _price_with_reviewState createState() => _price_with_reviewState();
}

class _price_with_reviewState extends State<price_with_review> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
          child: Text(
            "USD 120",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
        SizedBox(
          width: Sizeconfig.blockSizeHorizontal * 4,
        ),
        Text(
          "\$20",
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(0.6),
            decoration: TextDecoration.lineThrough,
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
          child: Row(
            children: [
              Icon(
                Icons.star,
                size: 15,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.orange,
              ),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.orange,
              ),
              Icon(Icons.star, size: 15, color: Colors.grey[400]),
              SizedBox(
                width: Sizeconfig.blockSizeHorizontal * 1,
              ),
              Text(
                '4.0',
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
