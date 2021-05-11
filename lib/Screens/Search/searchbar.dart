import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Search/serviceforSearch.dart';

class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String search = "";

  void initaiteSearch(String val) {
    setState(() {
      search = val.toLowerCase().trim();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.brown.withOpacity(0.15),
                    blurRadius: 15.0,
                    spreadRadius: 0.0,
                    offset: Offset(
                      0.0,
                      7.5,
                    ),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        onChanged: (val) {
                          initaiteSearch(val);
                        },
                        decoration: InputDecoration(
                          hintText: 'Search Your Product',
                          hintStyle:
                              TextStyle(color: Colors.grey.withOpacity(0.95)),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            StreamBuilder(
                stream: search != "" && search != null
                    ? FirebaseFirestore.instance
                        .collection('products')
                        .where('searchIndex', arrayContains: search)
                        .snapshots()
                    : FirebaseFirestore.instance
                        .collection('products')
                        .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Text('Loading');
                  } else {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data.docs.length,
                        itemBuilder: (context, index) {
                          DocumentSnapshot data = snapshot.data.docs[index];
                          return ListTile(
                            title: Text(data['searchtitle']),
                          );
                        });
                  }
                })
          ],
        ),
      ),
    );
  }
}
