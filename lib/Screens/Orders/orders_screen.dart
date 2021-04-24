import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/appBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Featured/Featured_full_screen/components/appbar.dart';

class Myorders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: SafeArea(
        child: Column(

          children: [
            AppbarCustom(title: 'My Orders',),

            Card(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [



                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order id: #12354668ddd',style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,

                            ),),

                            SizedBox(height: 2,),
                            Text('Total amount: BDT 299',style: TextStyle(
                              color: theme_color,
                              fontWeight: FontWeight.w600,
                            ),),
                          ],
                        ),

                        Spacer(),

                        Icon(
                          Icons.expand_less,
                          color: theme_color,
                        ),

                      ],
                    ),

                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Text('Under Armour Men\'s ColdGears',maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Text(' x2 BDT.256',style: TextStyle(
                          color: theme_color,
                          fontWeight: FontWeight.w600,
                        ),),
                      ],
                    ),

                    SizedBox(height: 2,),
                    Text('product id: #12354668ddd'),

                    SizedBox(height: 2,),
                    Text('Delivery Status: pending',style: TextStyle(
                      color: Colors.green[600],
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: 10,),



                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,


                      ),
                      onPressed: (){}, child: Text('Cancel order'),),

                  ],

                ),
              ),
              

            ),


          ],


        ),
      ),


    );
  }
}
