import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/image_slider.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/Description_page/components/appbar.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
class title_and_like extends StatefulWidget {
  @override
  _titleState createState() => _titleState();
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
              Text("Under Armour Men's ColdGear Armour",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.7),

              ),),
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 0.5,
              ),
              Text("Compression Mock Long-Sleeve",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.7),

              ),),
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 0.5,
              ),

              Text("T-Shirt",style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.7),

              ),),

              


            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
          child: Icon(
            Icons.favorite,
            color: loadingpage_color,
          ),
        ),

      ],
    );
  }
}
