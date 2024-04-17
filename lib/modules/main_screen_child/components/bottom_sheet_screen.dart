import 'package:flutter/material.dart';

import '../../../shared/styles/color.dart';
import '../../../shared/styles/style.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  double limit = 0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: kPrimaryLightColor,

      ),
      width: double.infinity,
      height: 300,

      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Text("Daily Limit", style: Styles.style25),
            SizedBox(
              height: 5,
            ),
            Text(
                "You can control the daily spending limit for a child in both cases: payment via wallet or cash",
                style: Styles.stylegray15),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                    '${limit.round()}',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
                SizedBox(width: 5,),
                Text(
                    'EGP',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Slider(
                value: limit,
                max: 300.0,
                min: 0.0,
                onChanged: (value){
                  setState(() {
                    limit=value;
                  });
                }),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Save"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 56),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  child: Text("Close"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(150, 56),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
