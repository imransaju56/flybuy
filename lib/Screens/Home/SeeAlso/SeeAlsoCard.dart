import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/description_page.dart';

class SeeAlso extends StatefulWidget {
  const SeeAlso({Key key}) : super(key: key);

  @override
  _SeeAlsoState createState() => _SeeAlsoState();
}

class _SeeAlsoState extends State<SeeAlso> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('products')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Text("Loading");
          } else {
            return FittedBox(
              fit: BoxFit.none,
              child: SizedBox(
                height: 280,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data.docs.length,
                    itemBuilder: (context, index) {
                      DocumentSnapshot data = snapshot.data.docs[index];
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return description(
                              productId: '${data.id}',
                              title: '${data['product_title']}',
                              image: '${data['image']}',
                              price: data['price'] -
                                  (data['price'] *
                                      data['discount'] /
                                      100),
                              discount: data['discount'],
                              // offer: '${data[index].offer}',
                            );
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black38.withOpacity(0.05),
                                blurRadius: 5.0,
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(10),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRect(
                                    child: Image.network(
                                      data['image'],
                                      scale: 3,
                                    )),
                                Padding(padding: EdgeInsets.all(5)),
                                Container(
                                  width: 150,
                                  child: Text(
                                    data['product_title'],
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
                                  'TK. ${data['price']}',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(2)),
                                Text(
                                  '-${data['discount']}%',
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
        });
  }
}
