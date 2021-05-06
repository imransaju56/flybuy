import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/DataModel/cart_model.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';
import 'package:provider/provider.dart';

class cart_card extends StatefulWidget {
  @override
  _cart_cardState createState() => _cart_cardState();
  int id=1;
}

class _cart_cardState extends State<cart_card> {
  @override
  Widget build(BuildContext context) {
    final FirebaseAuth Auth = FirebaseAuth.instance;
    final User user = Auth.currentUser;


    Sizeconfig().init(context);
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('AddUserItems')
            .doc(user.email)
            .collection('ItemList')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text("Loading");
          } else {
            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: snapshot.data.docs.length,
              itemBuilder: (context, index) {
                DocumentSnapshot data = snapshot.data.docs[index];
                // print(snapshot.data.docs.length);


                return Dismissible(
                  key: ObjectKey(snapshot.data),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(15),
                    color: Theme.of(context).errorColor,
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  onDismissed: (direction) async {
                    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
                    final User user = await _firebaseAuth.currentUser;

                    FirebaseFirestore.instance
                        .collection('AddUserItems')
                        .doc(user.email)
                        .collection('ItemList')
                        .doc(data.id)
                        .delete();

                  },
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            data['image'] ?? '',
                            scale: 5,
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                          Flexible(
                            fit: FlexFit.tight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${data['title']}' ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'BDT ${data['price']}' ?? '',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54,
                                  ),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '${data['offer']} ' ?? '',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.green[600],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '${data['quantity']}x' ?? '',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
        });
  }
}
