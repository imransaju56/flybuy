import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/wrapper.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';


class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
  static const routename='/loading';

}

class _loadingState extends State<loading> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Navigator.of(context).pushNamed(Wrapper.routename);
    
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
