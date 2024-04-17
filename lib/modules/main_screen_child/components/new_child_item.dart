import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../models/item_widget.dart';
import '../../../shared/styles/color.dart';
import '../../../shared/styles/style.dart';
import '../../payment_Screens/payment_details.dart';
import 'bottom_sheet_screen.dart';

class NewChildItem extends StatefulWidget {
  const NewChildItem({super.key});

  @override
  State<NewChildItem> createState() => _NewChildItemState();
}

class _NewChildItemState extends State<NewChildItem> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Container(
        height: 100,
        child: Row(
          children: [
            Expanded(
                child: defultItem(
                    onTTap: () {},
                    title: "Homework",
                    img: "assets/images/homework.png")),
            SizedBox(
              width: 5,
            ),
            Expanded(
                child: defultItem(
                    onTTap: () {},
                    title: "Canteen",
                    img: "assets/images/fast-food.png")),
            SizedBox(
              width: 5,
            ),
            Expanded(
                child: defultItem(
                    onTTap: () {
                      showBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return BottomSheetScreen();
                          });
                    },
                    title: "Limit",
                    img: "assets/images/limit.png")),
            SizedBox(
              width: 5,
            ),
            Expanded(
                child: defultItem(
                    onTTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentDetailsView()));
                    },
                    title: "wallet",
                    img: "assets/images/wallet.png")),
          ],
        ),
      ),
    );
  }
}
