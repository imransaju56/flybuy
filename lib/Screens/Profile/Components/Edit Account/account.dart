import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/DataModel/Firebase/FirebaseDataModel.dart';
import 'package:flybuy_ecommerce_project/DataModel/user.dart';
import 'package:flybuy_ecommerce_project/Screens/Authentication/sign_up.dart';
import 'package:provider/provider.dart';

class AccountInfo extends StatefulWidget {
  const AccountInfo({Key key}) : super(key: key);

  @override
  _AccountInfoState createState() => _AccountInfoState();

  static const routename = ('/AccountInfo');
}

class _AccountInfoState extends State<AccountInfo> {
  String name = '';
  String mobile = '';
  String address = '';

  String snapName,snapmobile,addRess;

  bool _obscureText = true;

  final _formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {


    var fireinfo = Provider.of<cartFire>(context);
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final User user = firebaseAuth.currentUser;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('UserData').snapshots(),
            builder: (context,snapshot){
              if(!snapshot.hasData)
                {
                  return Text('Loading');

                }
              // var ds = snapshot.data.docs;


              // for (int i = 0; i < ds.length; i++)
              //   {
              //     snapName = (ds[i]['Name']);
              //     snapmobile=(ds[i]['Mobile']);
              //     addRess=(ds[i]['Address']);
              //   }

              snapshot.data.docs.forEach((doc){
                if(doc.id ==  user.email)
                  {

                    snapName = (doc['Name']);
                    snapmobile=(doc['Mobile']);
                    addRess=(doc['Address']);

                  }


              });







            return InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (_) {
                      return Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            TextFormField(
                              validator: (val) => val.isEmpty ? 'Name' : null,
                              onChanged: (val) {
                                setState(() {
                                  name = val;
                                });
                              },
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(216, 216, 216, 1))),
                                labelText: 'Enter Your Name',
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? 'Enter mobile number' : null,
                              onChanged: (val) {
                                setState(() {
                                  mobile = val;
                                });
                              },
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(216, 216, 216, 1))),
                                labelText: 'Mobile No',
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? 'Enter Address' : null,
                              onChanged: (val) {
                                setState(() {
                                  address = val;
                                });
                              },
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(216, 216, 216, 1))),
                                labelText: 'Address',
                                labelStyle: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            ConstrainedBox(
                              constraints:
                                  BoxConstraints.tightFor(width: double.infinity),
                              child: ElevatedButton(
                                  onPressed: () {
                                    fireinfo.useraccount(name, mobile, address);
                                  },
                                  child: Text('Save')),
                            ),
                          ],
                        ),
                      );
                    });
              },
              child: ListView(
                    shrinkWrap: true,
                    children: [
                      Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(
                                flex: 15,
                              ),
                              Text(
                                snapName ?? 'Add name',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: theme_color,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                'Mobile No.',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(
                                flex: 15,
                              ),
                              Text(
                                snapmobile ?? 'Enter Mobile',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: theme_color,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                'Address',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(
                                flex: 15,
                              ),
                              Text(
                                addRess ?? 'Enter Address',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: theme_color,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                
              
            );
            },
          ),
        ],
      ),
    );
  }
}
