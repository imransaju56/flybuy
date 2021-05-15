import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/AppBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/BottomNavigation.dart';
import 'package:flybuy_ecommerce_project/Screens/Cart/components/cart_card.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/PaymentScreen.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/Components/Edit%20Account/account.dart';
import 'package:provider/provider.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
  static const routename = '/CheckoutScreen';
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String snapName, snapmobile, addRess;

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final User user = _firebaseAuth.currentUser;
    dynamic deliveryCost = 0.0;
    dynamic sendtotal = 0.0;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('UserData')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Text('Loading');
                  }
                  // var ds = snapshot.data.docs;

                  // for (int i = 0; i < ds.length; i++)
                  //   {
                  //     snapName = (ds[i]['Name']);
                  //     snapmobile=(ds[i]['Mobile']);
                  //     addRess=(ds[i]['Address']);
                  //   }

                  snapshot.data.docs.forEach((doc) {
                    if (doc.id == user.email) {
                      snapName = (doc['Name']);
                      addRess = (doc['Address']);
                    }
                  });

                  return Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  snapName ?? 'Add Name',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  addRess ?? 'Add Address',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            child: Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AccountInfo()));
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Billing Address',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_box,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text('Same as delivery address'),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(
                            Icons.edit,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),

              Text(
                'Items',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              cart_card(),

              // for (int i = 0; i < 2; i++) cart_card(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Estimated Day of Delivery',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Arrival Between 7-10 Mar',
                      style: TextStyle(
                        color: Colors.green[600],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Subtotal'),
                          Spacer(),
                          StreamBuilder(
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
                                num total = 0.0;

                                for (int i = 0; i < ds.length; i++)
                                  sum += (ds[i]['price']).toDouble() *
                                      (ds[i]['quantity'].toDouble());

                                total += sum * counter;

                                print(total);

                                return Text(
                                  'ট ${sum}',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.w600,
                                  ),
                                );
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Discount (Included with subtotal)'),
                          Spacer(),
                          Text(
                            '5%',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text('Shipping'),
                          Spacer(),
                          StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection('Service')
                                  .where('region', isEqualTo: 'rajshahi')
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (!snapshot.hasData) {
                                  return Text('Loading');
                                }
                                var ds = snapshot.data.docs;

                                for (int i = 0; i < ds.length; i++)
                                  deliveryCost = (ds[i]['Shipping Cost']);

                                return Text(
                                  'ট ${deliveryCost}',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.w600,
                                  ),
                                );
                              }),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Spacer(),
                          StreamBuilder(
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
                                num total = 0.0;

                                for (int i = 0; i < ds.length; i++)
                                  sum += (ds[i]['price']).toDouble() *
                                      (ds[i]['quantity'].toDouble());

                                total += sum * counter;

                                print(total);

                                sendtotal = sum + deliveryCost;

                                return Text(
                                  'ট ${sum + deliveryCost}',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.w600,
                                  ),
                                );
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PaymentScreen(
                    total: sendtotal,
                  )));
        },
        child: Container(
          height: kToolbarHeight,
          width: double.infinity,
          child: Center(
              child: Text(
            'Proceed to Payment',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
          color: theme_color,
        ),
      ),
    );
  }
}
