import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/DataModel/cart_model.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';
import 'package:provider/provider.dart';

class cart_card extends StatefulWidget {
  final String productId;
  final num price;
  final String images;
  final String title;
  final num quantity;

  cart_card(this.productId,this.images, this.title, this.price,
      this.quantity);

  @override
  _cart_cardState createState() => _cart_cardState();
}

class _cart_cardState extends State<cart_card> {


  @override
  Widget build(BuildContext context) {
    print('result is '+widget.productId);

    Sizeconfig().init(context);
    return Dismissible(
      key: ValueKey(widget.productId),
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
      onDismissed: (direction){
        Provider.of<Cart>(context,listen: false).removeItem(widget.productId);
      },

      child: Card(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                widget.images,
                scale: 5,
              ),
              Padding(padding: EdgeInsets.all(10)),
              Flexible(
                fit: FlexFit.tight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.title}',
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
                      'BDT ${widget.price}',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color:Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Only Available in stock! delivery in 2 days',
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
                      '${widget.quantity} x',
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
  }
}