import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddsomeProduct extends StatefulWidget {
  const AddsomeProduct({Key key}) : super(key: key);

  @override
  _AddsomeProductState createState() => _AddsomeProductState();
}

class _AddsomeProductState extends State<AddsomeProduct> {
  bool Selectedbest=true,SelectedFeatured=true;
  final _formkey = GlobalKey<FormState>();
  String categories,description,image,offer,product_title,price,discount,searchTitle,
      count,availablecolor;

  TextEditingController addproducttitle=TextEditingController();

  @override
  Widget build(BuildContext context) {
    void addItems(String name) async {
      List<String> splitlist=name.split(" ");
      List<String> indexList=[];

      for(int i=0;i<splitlist.length;i++)
      {
        for(int j=1; j<splitlist[i].length+1;j++)
        {
          indexList.add(splitlist[i].substring(0,j).toLowerCase());

        }

      }
      print(indexList);


      FirebaseFirestore.instance.collection('products').add({
        'product_title':product_title,
        'searchIndex':indexList,
        'description':description,
        'price':num.parse(price),
        'discount':num.parse(discount),
        'image':image,
        'categories':categories,
        'feature_product':SelectedFeatured,
        'bestseller':Selectedbest,
        'searchtitle':searchTitle.trim(),
        'count':0,

      });


    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Custom dash'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Add products",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(50, 50, 50, 50)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (val) =>
                              val.isEmpty ? 'Enter product title' : null,
                          onChanged: (val){
                            product_title=val;

                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Product Title',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (val) =>
                          val.isEmpty ? 'add product image' : null,
                          onChanged: (val) {
                            image=val;
                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Add Image',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        TextFormField(
                          validator: (val) =>
                              val.isEmpty ? 'Add product description' : null,
                          onChanged: (val) {
                            description=val;

                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Product description',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (val) =>
                              val.isEmpty ? 'Add offer if any' : null,
                          onChanged: (val) {
                            offer=val;

                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Offer details',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (val) =>
                              val.isEmpty ? 'Enter product Categories' : null,
                          onChanged: (val) {
                            categories=val;

                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Categories',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                          keyboardType: TextInputType.number,
                          validator: (val) =>
                              val.isEmpty ? 'Enter product price' : null,
                          onChanged: (val) {
                            price=val;

                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Price',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (val) =>
                              val.isEmpty ? 'Enter product Discount if any' : null,
                          onChanged: (val) {
                            discount=val;
                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Discount',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (val) =>
                          val.isEmpty ? 'Enter Available Colors' : null,
                          onChanged: (val) {
                            availablecolor=val;
                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Available Colors',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (val) =>
                          val.isEmpty ? 'Enter product Available Sizes' : null,
                          onChanged: (val) {
                            count=val;
                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Available Sizes',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        TextFormField(
                          validator: (val) =>
                          val.isEmpty ? 'Enter Search Title' : null,
                          onChanged: (val){
                            searchTitle=val;

                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Search Title',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Text('Bestseller'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                              ),
                              height: 40,
                              width: 80,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                onPressed: () async {
                                  setState(() {
                                    Selectedbest=true;
                                  });
                                  print(Selectedbest);
                                },
                                child: Center(
                                  child: Text(
                                    'yes',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),
                              height: 40,
                              width: 80,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                onPressed: () async {
                                  setState(() {
                                    Selectedbest=false;
                                  });

                                  print(Selectedbest);

                                },
                                child: Center(
                                  child: Text(
                                    'no',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Text('Featured'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                              ),
                              height: 40,
                              width: 80,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                onPressed: () async {
                                  setState(() {
                                    SelectedFeatured=true;
                                  });
                                  print(SelectedFeatured);
                                },
                                child: Center(
                                  child: Text(
                                    'yes',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.red,
                              ),
                              height: 40,
                              width: 80,
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                onPressed: () async {
                                  setState(() {
                                    SelectedFeatured=false;
                                  });

                                  print(SelectedFeatured);

                                },
                                child: Center(
                                  child: Text(
                                    'no',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(
                          height: 20,
                        ),






                        SizedBox(
                          width:double.infinity,
                          height: 50,

                          child: FlatButton(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(5.0),

                            ),

                            onPressed: ()=>addItems(searchTitle),

                            child: Text(
                              'Add Items',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),


                        SizedBox(
                          width:double.infinity,
                          height: 50,

                          child: FlatButton(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(5.0),

                            ),

                            onPressed: () async {

                            },
                            child: Text(
                              'Update Items',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),


                        SizedBox(
                          width:double.infinity,
                          height: 50,

                          child: FlatButton(
                            color: Colors.red,
                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(5.0),

                            ),

                            onPressed: () async {

                            },
                            child: Text(
                              'Delete Items',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),




                      ],
                    ),
                  ],
                ),
              ),
            ),

          ),
        ),
      ),

    );

  }


}
