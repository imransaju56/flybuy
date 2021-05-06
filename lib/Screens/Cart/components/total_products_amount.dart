import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/DataModel/Firebase/FirebaseDataModel.dart';
import 'package:provider/provider.dart';

class total_product_amount extends StatefulWidget {
  @override
  _total_product_amountState createState() => _total_product_amountState();
  static const routename = '/total_products';
}

class _total_product_amountState extends State<total_product_amount> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);

    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final User user = _firebaseAuth.currentUser;

    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('AddUserItems')
            .doc(user.email)
            .collection('ItemList')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text('Loading');
          }
          var ds = snapshot.data.docs;
          double sum = 0.0;
          num counter = 0.0;
          num total=0.0;

          for (int i = 0; i < ds.length; i++)
            sum += (ds[i]['price']).toDouble()*(ds[i]['quantity'].toDouble());


          total+=sum*counter;

          print(total);

          return Card(
            color: theme_color,
            child: Row(
              children: [
                SizedBox(
                  width: Sizeconfig.blockSizeHorizontal * 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: Sizeconfig.blockSizeVertical * 4.5,
                    ),
                    Text(
                      '${snapshot.data.docs.length}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: Sizeconfig.blockSizeVertical * 1,
                    ),
                    Text(
                      'Total Products',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: Sizeconfig.blockSizeVertical * 4.5,
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(
                      height: Sizeconfig.blockSizeVertical * 4.5,
                    ),
                    Text(
                      'ট ${sum}'.to,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: Sizeconfig.blockSizeVertical * 1,
                    ),
                    Text(
                      'Total Amount',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: Sizeconfig.blockSizeVertical * 4.5,
                    ),
                  ],
                ),
                SizedBox(
                  width: Sizeconfig.blockSizeHorizontal * 10,
                ),
              ],
            ),
          );
        });
  }
}
