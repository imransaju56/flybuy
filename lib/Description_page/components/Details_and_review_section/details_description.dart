import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/Details_and_review_section/product_details_section.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';

class Details_view_des extends StatefulWidget {
  @override
  _Details_detailsState createState() => _Details_detailsState();
}

class _Details_detailsState extends State<Details_view_des> {
  @override
  Widget build(BuildContext context) {
    var list = ['One', 'Two', 'Three'];

    Sizeconfig().init(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text:
                  'Cosmic Mart is a trusted and reliable source for all your garment related needs from Bangladesh. Cosmic Mart manufactures and supplies quality products in all categories at a competitive price range from their own and sister production facility. It\'s a 100% cotton t-shirt with a premium finishing goods.',
              style: TextStyle(
                wordSpacing: 2.0,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
          ),
          SizedBox(height: Sizeconfig.blockSizeVertical * 1.5),
          

        ],
      ),
    );
  }
}
