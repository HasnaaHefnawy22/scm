import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../shared/styles/color.dart';
import '../../payment_Screens/payment_details.dart';

class NewChildItem extends StatelessWidget {
  const NewChildItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
      child: Container(
        height: 100,
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/homework.png",
                        width: 42,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Homework",
                        style: TextStyle(color: kPrimarywhiteColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/fast-food.png",
                        width: 42,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Canteen",
                        style: TextStyle(color: kPrimarywhiteColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5,),

            Expanded(
              child: GestureDetector(
                onTap:  (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentDetailsView()));

                },
                child: Container(
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/wallet.png",
                        width: 42,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "wallet",
                        style: TextStyle(color: kPrimarywhiteColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
