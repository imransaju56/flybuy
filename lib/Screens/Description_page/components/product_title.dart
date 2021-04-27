import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
class title_and_like extends StatefulWidget {
  @override
  _titleState createState() => _titleState();
  String title;

  title_and_like({this.title});


}

class _titleState extends State<title_and_like> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Row(

      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                width: Sizeconfig.blockSizeHorizontal*80,

                child: RichText(
                  text: TextSpan(
                    text:
                    widget.title,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),

        // Spacer(),

        Icon(
          Icons.favorite,
          color: Colors.blue,
        ),

      ],
    );
  }
}