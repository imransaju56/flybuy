import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/wrapper.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';


class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
  dynamic show;
  loading({this.show});
  static const routename='/loading';

}

class _loadingState extends State<loading> {

  void loader() async {

    await Future.delayed(Duration(seconds: 4),(){

      Navigator.pushAndRemoveUntil(context,


          MaterialPageRoute(builder: (context)=>
              Wrapper(show: widget.show,)), (route) => false);



    });


  }





  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loader();
    
  }
  
  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: (Container(
        child: Center(
            child: Text(
              'Flybuy',
              style: TextStyle(
                fontSize: size.width * 0.1,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
                height: 0.7,
              ),
            )),
      )),
    );
  }
}
