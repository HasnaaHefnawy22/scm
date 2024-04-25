import 'package:flutter/material.dart';
import 'package:scm/shared/styles/style.dart';

import '../../receipt_screen/receipt_screen.dart';


class LastTransactionWidget  extends StatelessWidget {
  LastTransactionWidget({super.key});
  List<String> transactions=['buying process from Hasnaa','buying process from Aliaa','buying process from Aliaa','buying process from hasnaa','buying process from Aliaa'];
  List<String> payment=['by cash','by cash','by wallet','by wallet','by wallet'];
  List<String> dateTransaction=['08/04/2024','08/04/2024','3/04/2024','02/04/2024','28/03/2024'];
  List<double> money=[10,7,15.5,2.5,9.5];
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (context,index)=>SizedBox(height: 10,),
      physics: const NeverScrollableScrollPhysics(),
      // number of children
      itemCount: 5, //collections.length,
      itemBuilder: (BuildContext context, int index) {
        return MaterialButton(onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ReceiptScreen()));
        }, child: Container(
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(4.0, 4.0),
                spreadRadius: 1.0,
                blurRadius: 15,
              ),
              BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(-4.0, -4.0),
                spreadRadius: 1.0,
                blurRadius: 15,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transactions[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),
                  Row(

                    children: [
                      Text(
                        payment[index],

                        style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        dateTransaction[index],
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Text(
                '${money[index]} EGP',
                style: Styles.styleBold15,
              )
            ],),
          ),
        ));
      },
    );
  }
}
