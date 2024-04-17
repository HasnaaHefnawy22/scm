import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../shared/styles/color.dart';

class UpperPartWidget extends StatefulWidget {
  const UpperPartWidget({super.key});

  @override
  State<UpperPartWidget> createState() => _UpperPartWidgetState();
}

class _UpperPartWidgetState extends State<UpperPartWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 20.0),
      height: 250.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 5,
            left: 20,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: kPrimaryColor,
                size: 40,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 20.0, right: 20.0, bottom: 10.0),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 5.0,
              color: kPrimaryColor,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 40.0,
                  ),
                  //name of parent
                  Text(
                    "Hasnaa Mohamed Elhefnawy",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: kPrimarywhiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  //name of the school
                  const Text(
                    "Maria Ozilea School",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: kPrimarywhiteColor),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 40.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // the balance
                        Expanded(
                          child: ListTile(
                            title: const Text(
                              "150 EGP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kPrimarywhiteColor),
                            ),
                            subtitle: Text("balance".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    color: kPrimarywhiteColor)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            color: kPrimarywhiteColor,
                            width: 1,
                          ),
                        ),
                        // the limit
                        Expanded(
                          child: ListTile(
                            title: const Text(
                              "20 EGP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kPrimarywhiteColor),
                            ),
                            subtitle: Text("limit".toUpperCase(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12.0,
                                    color: kPrimarywhiteColor)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                  elevation: 5.0,
                  shape: const CircleBorder(),
                  child: CircleAvatar(
                    radius: 40.0,
                    //backgroundImage: Image(image: AssetImage("assets/images/girl.png"),) ,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
