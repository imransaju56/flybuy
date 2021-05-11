import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/DataModel/product_data_model.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/description_page.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Best_seller_tag.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/discount.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/product_details.dart';
import 'package:provider/provider.dart';

class product_card extends StatefulWidget {
  @override
  _product_cardState createState() => _product_cardState();
  static const routename = '/Card';
}

class _product_cardState extends State<product_card> {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<List<ProductModel>>(context, listen: true);

    Sizeconfig().init(context);

    return FittedBox(
      child: SizedBox(
        height: 280,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: (data == null) ? 0 : data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {



                    return description(
                      productId: '${data[index].id}',
                      title: '${data[index].ProductTitle}',
                      image: '${data[index].image}',
                      price: data[index].price -
                          (data[index].price * data[index].discount / 100),
                      discount: data[index].discount,
                      offer: '${data[index].offer}',
                    );
                  }));
                },
                child: Card(
                  elevation: 1,
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRect(
                            child: Image.network(
                          data[index].image,
                          scale: 3,
                        )),
                        Padding(padding: EdgeInsets.all(5)),
                        Container(
                          width: 150,
                          child: Text(
                            data[index].ProductTitle,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w800,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Text(
                          'TK. ${data[index].price}',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Text(
                          '-${data[index].discount}%',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
