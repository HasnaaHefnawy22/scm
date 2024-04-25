import 'package:flutter/material.dart';
import 'package:scm/shared/styles/style.dart';

import '../../main_screen_child/main_screen_child.dart';

class ChildrenWidget  extends StatelessWidget {
  ChildrenWidget({super.key});
  List<dynamic> studentName=[['Aliaa Ahmed Mohamed','Hasnaa Ahmed Mohamed'],['Layla Ahmed Abdelaker','Anas Ahmed Abdelaker'],['Gamela Shady Ashrf','Mohab Shady Ashrf']];
  List<dynamic> studentBalance=[[150.50,30.00],[70.00,103.50],[242.00,170.50]];
  List<String> grade=['Grade 5','Grade 6'];

  @override
  Widget build(BuildContext context) {
    return   ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      // number of children
      itemCount: 2, //collections.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 10.0),
          height: 80.0,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MainScreenChild()));
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Image.asset("assets/images/girl.png"),
                Material(
                  elevation: 5.0,
                  shape: const CircleBorder(),
                  child: CircleAvatar(
                    radius: 32.0,
                    //backgroundImage: Image(image: AssetImage("assets/images/girl.png"),) ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 160,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          studentName[0][index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        Text(grade[index])
                      ],
                    ),
                  ),
                ),
                Spacer(),
                // the balance here
                Text(
                  '${studentBalance[0][index]} EGP',
                  style:Styles.styleBoldwhite15,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
