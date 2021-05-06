import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/DataModel/product_data_model.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/description_page.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Best_seller_tag.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/discount.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/product_details.dart';
import 'package:provider/provider.dart';

class product_card extends StatefulWidget {
  @override
  _product_cardState createState() => _product_cardState();
  static const routename='/Card';
}

class _product_cardState extends State<product_card> {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<List<ProductModel>>(context, listen: true);

    Size size = MediaQuery.of(context).size;
    Sizeconfig().init(context);

    return Container(
      height: Sizeconfig.blockSizeVertical * 30,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount:(data == null) ? 0 : data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return description(
                      productId: '${data[index].id}',
                      title: '${data[index].ProductTitle}',
                      image: '${data[index].image}',
                      price: data[index].price - (data[index].price * data[index].discount / 100),
                      discount: data[index].discount,
                      offer: '${data[index].offer}',
                    );
                  }));
                },
                child: Container(
                  width: Sizeconfig.blockSizeHorizontal * 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38.withOpacity(0.05),
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        data[index].bestseller == true
                            ? best_seller_tag(
                                bestseller: 'bestseller',
                              )
                            : SizedBox(),
                        Spacer(),
                        ClipRect(
                          child: product_image(
                            image: '${data[index].image}',
                          ),
                        ),
                        Spacer(),
                        product_details(
                          title: '${data[index].ProductTitle}',
                          price: data[index].price -
                              (data[index].price * data[index].discount / 100),
                          discount: data[index].discount,
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );

  }
}
