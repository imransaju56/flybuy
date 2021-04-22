import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Description_page/description_page.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Best_seller_tag.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/discount.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/product_details.dart';

class product_card extends StatefulWidget {
  @override
  _product_cardState createState() => _product_cardState();
}

class _product_cardState extends State<product_card> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Sizeconfig().init(context);
    return Container(
      height: Sizeconfig.blockSizeVertical * 30,
      width: double.infinity,
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('products').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text('Loading');
          } else {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot data = snapshot.data.docs[index];
                return Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return description(
                          title: '${data['product_title']}',
                          image: '${data['image']}',
                          price: data["price"] -
                              (data["price"] * data["discount"] / 100),
                          discount: data['discount'],
                          offer: '${data['offer']}',
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
                            data['bestseller'] == true ? best_seller_tag(bestseller: 'bestseller',): SizedBox(),
                            Spacer(),

                            product_image(
                              image: '${data['image']}',
                            ),

                            Spacer(),

                            product_details(
                              title: '${data['product_title']}',
                              price: data['price'] - (data['price']*data['discount']/100),
                              discount: data['discount'],
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
